#include <stdio.h>
#include <pthread.h>
#include <time.h>
#include <limits.h>
#include <unistd.h>
#include <sys/syscall.h>
#include <errno.h>
#include <stdlib.h>

#define MAX_THREADS 8
#define MAX_TOTAL_ELEMENTS 1000
#define ll long long

pthread_t threads[MAX_THREADS];
int threads_ids[MAX_THREADS];
// pthread_barrier_t thread_barrier;

ll* Pos;
ll* Q;

void imprimeVetor(ll* arr, int n) {
    for (int i = 0; i < n; i++) {
        printf("%lld ", arr[i]);
    }
    printf("\n");
}

ll random_ll() {
    return (ll) rand() % LLONG_MAX;
}

int compare(const void* a, const void* b) {
    return (*(ll*)a - *(ll*)b);
}

int lower_bound(ll* arr, int n, int x) {
    int mid;
    int low = 0;
    int high = n;

    while (low < high) {
        mid = low + (high - low) / 2;
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

typedef struct {
    ll* arr;
    int n;
    int x;
} ThreadData;

void* thread_func(void* arg) {
    ThreadData* data = (ThreadData*) arg;
    int pos = lower_bound(data->arr, data->n, data->x);
    printf ("elemento a ser buscado na thread: %lld\n", data->x);
    printf("Posição encontrada: %d\n", pos);
    pthread_exit(NULL);
}

// void initialize_threads(int nThreads, int* arr, int n, int x) {
//     // pthread_barrier_init(&thread_barrier, NULL, nThreads);

// }

int main(int argc, char* argv[]) {
    int nThreads, nTotalElements, nQueries;

    srand(time(NULL));

    // if (argc != 4) {
    //      printf("Usage: %s <nTotalElements> <nThreads> <nQueries>\n", argv[0]); 
    //      return 0;
    // } else {
    //     nThreads = atoi(argv[2]);
    //     if (nThreads == 0) {
    //         printf("Usage: %s <nTotalElements> <nThreads> <nQueries>\n", argv[0]);
    //         printf("<nThreads> can't be 0\n");
    //         return 0;
    //     }     
    //     if (nThreads > MAX_THREADS) {  
    //         printf("Usage: %s <nTotalElements> <nThreads> <nQueries>\n", argv[0]);
    //         printf("<nThreads> must be less than %d\n", MAX_THREADS);
    //         return 0;
    //     }
    //     nTotalElements = atoi(argv[1]);
    //     if (nTotalElements > MAX_TOTAL_ELEMENTS) {
    //         printf("Usage: %s <nTotalElements> <nThreads <nQueries>\n", argv[0]);
    //         printf("<nTotalElements> must be up to %d\n", MAX_TOTAL_ELEMENTS);
    //         return 0;
    //     }
    //     nQueries = atoi(argv[3]);
    // }

    nThreads = 3;
    nTotalElements = 10;
    // nQueries = 7;
    ll test_queries[] = {1, 20, 12436, 9123, 1234, 8574, 5};
    // memcpy(Q, fixed_queries, sizeof(fixed_queries));

    Pos = malloc(sizeof(ll) * nTotalElements);
    for (int i = 0; i < nTotalElements; i++) {
        // Pos[i] = random_ll();
        Pos[i] = i;
    }

    qsort(Pos, nTotalElements, sizeof(ll), compare);
    imprimeVetor(Pos, nTotalElements);

    // Q = malloc(sizeof(ll) * nQueries);
    // for (int i = 0; i < nQueries; i++) {
    //     Q[i] = random_ll();
    // }

    ThreadData data = {NULL, 0, 0};

    for (int i = 0; i < nThreads; i++) {
        printf ("Criando thread %d\n", i);
        printf ("Elemento a ser buscado: %lld\n", test_queries[i]);
        ThreadData* data = malloc(sizeof(ThreadData));
        *data = (ThreadData) {Pos, nTotalElements, test_queries[i]};
        pthread_create(&threads[i], NULL, thread_func, &data);
        printf ("Thread %d criada\n", i);
    }

    for (int i = 0; i < nThreads; i++) {
        pthread_join(threads[i], NULL);
    }

    free(Pos);
    // free(Q);

    return 0;
}
