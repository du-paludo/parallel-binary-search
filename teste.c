#define _XOPEN_SOURCE 600
#include <stdio.h>
#include <pthread.h>
#include <time.h>
#include <stdlib.h>
#include "chrono.h"

#define MAX_THREADS 8
#define MAX_TOTAL_ELEMENTS (500*1000*1000)
#define MAX_QUERIES 100000 // Número de buscas a serem realizadas

typedef long long ll;

// Variáveis de busca e threads
ll *InputVector;        // Vetor principal para busca
ll *Q;                  // Vetor de consultas para valores a serem buscados
int Pos[MAX_THREADS];   // Armazena o índice encontrado por cada thread
int nThreads;
int nQueries;
int nTotalElements;

// Função de busca binária
void lower_bound(ll* arr, int n, ll x) {
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

    printf("Elemento a ser buscado: %lld\n", x);
    printf("Posição encontrada: %d\n", low);
}

// Função executada por cada thread para processar seu bloco de consultas
void* start_thread(void* arg) {
    int thread_id = *((int*) arg);

    // Calcula o intervalo de consultas que esta thread processará
    int queries_per_thread = nQueries / nThreads;
    int start = thread_id * queries_per_thread;
    int end = (thread_id == nThreads - 1) ? nQueries : start + queries_per_thread;

    printf("Thread %d processando consultas de %d a %d\n", thread_id, start, end - 1);

    // Processa cada consulta na sua faixa
    for (int i = start; i < end; i++) {
        lower_bound(InputVector, nTotalElements, Q[i]);
    }

    return NULL;
}

int main(int argc, char *argv[]) {
    if (argc != 4) {
        printf("Uso: %s <nTotalElements> <nThreads> <nQueries>\n", argv[0]);
        return -1;
    }

    nTotalElements = atoi(argv[1]);
    nThreads = atoi(argv[2]);
    nQueries = atoi(argv[3]);

    if (nQueries > MAX_QUERIES) {
        printf("Número de consultas não pode exceder %d\n", MAX_QUERIES);
        return -1;
    }

    // Inicializa vetor de entrada e vetor de consultas
    srand(time(NULL)); 
    InputVector = malloc(nTotalElements * sizeof(ll));
    for (int i = 0; i < nTotalElements; i++) {
        InputVector[i] = i * 2;  
    }

    // Gera o vetor de consultas `Q`
    Q = malloc(nQueries * sizeof(ll));
    for (int i = 0; i < nQueries; i++) {
        Q[i] = rand() % (nTotalElements * 2); 
    }

    chronometer_t searchTime;
    chrono_reset(&searchTime);
    chrono_start(&searchTime);

    pthread_t threads[MAX_THREADS];
    int threads_ids[MAX_THREADS];

    // Criando pool de threads
    for (int i = 0; i < nThreads; i++) {
        threads_ids[i] = i;
        pthread_create(&threads[i], NULL, &start_thread, &threads_ids[i]);
    }    

    // Espera todas as threads terminarem
    for (int i = 0; i < nThreads; i++) {
        pthread_join(threads[i], NULL);
    }

    chrono_stop(&searchTime);
    chrono_reportTime(&searchTime, "Tempo total para buscas paralelas");

    double total_time = (double)chrono_gettotal(&searchTime)/((double)1000*1000*1000);
    printf ("tempo total: %lf s\n", total_time);

    double ops =((double)nTotalElements)/total_time;
    printf ("Throughput: %lf OP/s\n", ops);

    free(InputVector);
    free(Q);
    return 0;
}
