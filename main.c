#define _XOPEN_SOURCE 600
#include <stdio.h>
#include <pthread.h>
#include <time.h>
#include <limits.h>
#include <unistd.h>
#include <sys/syscall.h>
#include <errno.h>
#include <stdlib.h>
#include "chrono.c"

#define MAX_THREADS 8
#define MAX_TOTAL_ELEMENTS 1000

#define ll long long

pthread_t threads[MAX_THREADS];
int threads_ids[MAX_THREADS];
pthread_barrier_t thread_barrier;

ll* Pos;
ll* Q;

ll random_ll() {
    return (ll) rand() % LLONG_MAX;
}

int lower_bound(int* arr, int n, int x) {
    int mid;
    int low = 0;
    int high = n;

    while (low < high) {
        mid = low + (high-low)/2;
        if (x <= arr[mid]) {
            high = mid;
        } else {
            low = mid + 1;
        }
    }

    if (low < n && arr[low] < x) {
        low++;
    }

    return low;
}

void initialize_threads(int nThreads) {
    pthread_barrier_init(&thread_barrier, NULL, nThreads);

    threads_ids[0] = 0;
    for(int i = 1; i < nThreads; i++) {
        threads_ids[i] = i;
        pthread_create(&threads[i], NULL, , &threads_ids[i]);
    }
}

int main(int argc, char* argv[]) {
    int i;
    int nThreads;
    int nTotalElements;
    int nQueries;
    chronometer_t parallelBinarySearchTime;

    srand(time(NULL));

    if (argc != 4) {
         printf("Usage: %s <nTotalElements> <nThreads> <nQueries>\n", argv[0]); 
         return 0;
    } else {
        nThreads = atoi(argv[2]);
        if (nThreads == 0) {
            printf("Usage: %s <nTotalElements> <nThreads> <nQueries>\n", argv[0]);
            printf("<nThreads> can't be 0\n");
            return 0;
        }     
        if (nThreads > MAX_THREADS) {  
            printf("Usage: %s <nTotalElements> <nThreads> <nQueries>\n", argv[0]);
            printf( "<nThreads> must be less than %d\n", MAX_THREADS);
            return 0;
        }
        nTotalElements = atoi(argv[1]);
        if (nTotalElements > MAX_TOTAL_ELEMENTS) {
            printf("Usage: %s <nTotalElements> <nThreads <nQueries>\n", argv[0]);
            printf( "<nTotalElements> must be up to %d\n", MAX_TOTAL_ELEMENTS);
            return 0;
        }
        nQueries = atoi(argv[3]);
    }
    printf("Will use %d threads to run binary search on %d total long long elements %d times\n\n", nThreads, nTotalElements, nQueries);


    // Inicializações
    Pos = malloc(sizeof(ll) * nTotalElements);
    for (int i = 0; i < nTotalElements; i++) {
        Pos[i] = random_ll();
    }

    Q = malloc(sizeof(ll) * nQueries);
    for (int i = 0; i < nQueries; i++) {
        Q[i] = random_ll();
    }

    chrono_reset(&parallelBinarySearchTime);
    chrono_start(&parallelBinarySearchTime);

    // Execução
    initialize_threads(nThreads);

    chrono_stop(&parallelBinarySearchTime);
    chrono_reportTime(&parallelBinarySearchTime, "parallelBinarySearchTime");

    // int arr[] = { 4, 6, 10, 12, 18, 20 };
    // int n = sizeof(arr) / sizeof(arr[0]);

    // int x = 7;

    // printf("%d\n", lower_bound(arr, n, x));

    free(Pos);
    free(Q);

    return 0;
}