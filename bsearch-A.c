#define _XOPEN_SOURCE 600
#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
#include <sys/syscall.h>
#include <errno.h>
#include <sys/time.h>
#include <stdlib.h>
#include <limits.h>

#include "chrono.h"

#define MAX_THREADS 8
#define MAX_TOTAL_ELEMENTS 16000000
#define NTIMES 8
#define _XOPEN_SOURCE 600
#define DEBUG 0

#define ll long long

pthread_t threads[MAX_THREADS];
int threads_ids[MAX_THREADS];
int partialResults[MAX_THREADS];
pthread_barrier_t thread_barrier;
int nTotalElements;
int nThreads;
ll target;

ll* input;

ll random_ll() {
    #if DEBUG
    return (ll) rand() % 20;
    #else
    return (ll) rand() % LLONG_MAX;
    #endif
}

int lower_bound(ll arr[], int left, int right, ll target) {
    while (left < right) {
        long long mid = left + (right - left) / 2;

        if (arr[mid] < target) {
            left = mid + 1;
        } else {
            right = mid;
        }
    }

    return left;
}

void calculateIndexes(int threadIndex, int* left, int* right) {
    int baseChunkSize = nTotalElements / nThreads;
    int remainder = nTotalElements % nThreads;

    if (threadIndex < remainder) {
        *left = threadIndex * (baseChunkSize + 1);
        *right = *left + baseChunkSize;
    } else {
        *left = threadIndex * baseChunkSize + remainder;
        *right = *left + baseChunkSize - 1;
    }
}


void* thread_worker(void* ptr) {
    int index = *((int*) ptr);
    int left, right;
    calculateIndexes(index, &left, &right);

    while (1) {
        pthread_barrier_wait(&thread_barrier);
        partialResults[index] = lower_bound(input, left, right, target);
        #if DEBUG
        printf("Thread %d[%d-%d] result: %d\n", index, left, right, partialResults[index]);
        #endif
        pthread_barrier_wait(&thread_barrier);

        if (index == 0) {
            return NULL;
        }
    }
    return NULL;
}

int parallel_binary_search(int nThreads) {
    pthread_barrier_init(&thread_barrier, NULL, nThreads);
    int result = nTotalElements;

    threads_ids[0] = 0;
    for (int i = 1; i < nThreads; i++) {
        threads_ids[i] = i;
        pthread_create(&threads[i], NULL, thread_worker, &threads_ids[i]);
    }
    thread_worker(&threads_ids[0]);

    for (int i = 0; i < nThreads; i++) {
        if ((partialResults[i] < nTotalElements) && (input[partialResults[i]] >= target)) {
            result = partialResults[i] < result ? partialResults[i] : result;
        }
    }

    return result;
}

void printArray(ll* arr) {
    printf("[");
    for (int i = 0; i < nTotalElements-1; i++) {
        printf("%lld, ", arr[i]);
    }
    printf("%lld]\n", arr[nTotalElements-1]);
}

int compare(const void* a, const void* b) {
   return (*(ll*)a - *(ll*)b);
}

int main(int argc, char* argv[]) {
    chronometer_t parallelBinarySearchTime;

    srand(time(NULL));

    if (argc != 3) {
         printf("Usage: %s <nTotalElements> <nThreads>\n", argv[0]); 
         return 0;
    } else {
        nThreads = atoi(argv[2]);
        if (nThreads == 0) {
            printf("Usage: %s <nTotalElements> <nThreads>\n", argv[0]);
            printf("<nThreads> can't be 0\n");
            return 0;
        }     
        if (nThreads > MAX_THREADS) {  
            printf("Usage: %s <nTotalElements> <nThreads>\n", argv[0]);
            printf( "<nThreads> must be less than %d\n", MAX_THREADS);
            return 0;
        }
        nTotalElements = atoi(argv[1]);
        if (nTotalElements > MAX_TOTAL_ELEMENTS) {
            printf("Usage: %s <nTotalElements> <nThreads\n", argv[0]);
            printf( "<nTotalElements> must be up to %d\n", MAX_TOTAL_ELEMENTS);
            return 0;
        }
    }
    printf("Will use %d threads to run binary search on %d total long long elements\n", nThreads, nTotalElements);

    // Inicializações
    input = malloc(sizeof(ll) * nTotalElements);
    for (int i = 0; i < nTotalElements; i++) {
        input[i] = random_ll();
    }
    qsort(input, nTotalElements, sizeof(ll), compare);
    target = random_ll();

    #if DEBUG
    printf("Input array: ");
    printArray(input);
    printf("Target: %lld\n", target);
    #endif

    chrono_reset(&parallelBinarySearchTime);
    chrono_start(&parallelBinarySearchTime);

    // Execução
    int result = parallel_binary_search(nThreads);

    #if DEBUG
    printf("Result: %d\n", result);
    #endif

    chrono_stop(&parallelBinarySearchTime);
    chrono_reportTime(&parallelBinarySearchTime, "parallelBinarySearchTime");

    double total_time_in_nanoseconds = (double) chrono_gettotal( &parallelBinarySearchTime );
    printf("Total time: %lf ns\n", total_time_in_nanoseconds);
                                  
    double ops = 1/total_time_in_nanoseconds*(1000*1000*1000);
    printf("Throughput: %lf OP/s\n", ops);

    free(input);

    return 0;
}