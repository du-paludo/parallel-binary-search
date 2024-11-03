#define _XOPEN_SOURCE 600
#include <stdio.h>
#include <pthread.h>
#include <time.h>
#include <stdlib.h>
#include "chrono.h"

#define MAX_THREADS 64
#define MAX_TOTAL_ELEMENTS (500*1000*1000)
#define MAX_QUERIES 1000 // Número de buscas a serem realizadas

typedef long long ll;

pthread_t searchThreads[MAX_THREADS];
int searchThreadIDs[MAX_THREADS];
ll *InputVector;         // Vetor principal para busca
ll Q[MAX_QUERIES];       // Vetor de consultas para valores a serem buscados
int threadResult[MAX_THREADS]; // Armazena o índice encontrado por cada thread
int nThreads;
ll currentSearchValue;   // Valor atual sendo buscado
pthread_barrier_t barrier; // Barreira de sincronização

typedef struct {
    int threadID;
    int nTotalElements;
} ThreadData;

// Função que cada thread usará para buscar `currentSearchValue`
void* lower_bound_thread(void* arg) {
    ThreadData* data = (ThreadData*) arg;
    int threadID = data->threadID;
    int nTotalElements = data->nTotalElements;

    int nElementsPerThread = (nTotalElements + nThreads - 1) / nThreads;
    int low = threadID * nElementsPerThread;
    int high = (threadID + 1) * nElementsPerThread;

    if (high > nTotalElements) high = nTotalElements;

    int mid;
    while (low < high) {
        mid = low + (high - low) / 2;
        if (currentSearchValue <= InputVector[mid]) {
            high = mid;
        } else {
            low = mid + 1;
        }
    }

    threadResult[threadID] = (low < nTotalElements && InputVector[low] >= currentSearchValue) ? low : -1;

    // Espera todas as threads concluírem a busca
    pthread_barrier_wait(&barrier);

    pthread_exit(NULL);
}

// Função para realizar busca paralela para cada valor de `Q`
int parallel_lower_bound(ll* arr, int nTotalElements, ll searchValue, int numThreads) {
    InputVector = arr;
    currentSearchValue = searchValue;
    nThreads = numThreads;

    // Inicializa barreira para sincronizar as threads
    pthread_barrier_init(&barrier, NULL, nThreads);

    // Cria threads para busca paralela
    ThreadData threadData[MAX_THREADS];
    for (int i = 0; i < nThreads; i++) {
        threadData[i].threadID = i;
        printf ("iniciando threadData[%d].threadID = %d\n", i, threadData[i].threadID);
        threadData[i].nTotalElements = nTotalElements;
        printf ("procurando %lld\n", currentSearchValue);
        pthread_create(&searchThreads[i], NULL, lower_bound_thread, &threadData[i]);
        printf ("finalizando threadData[%d].threadID = %d\n", i, threadData[i].threadID);
    }

    // Aguarda todas as threads terminarem
    for (int i = 0; i < nThreads; i++) {
        pthread_join(searchThreads[i], NULL);
    }

    // Encontra o menor índice não negativo nas respostas
    int result = nTotalElements;
    for (int i = 0; i < nThreads; i++) {
        if (threadResult[i] != -1 && threadResult[i] < result) {
            result = threadResult[i];
        }
    }

    // Destroi a barreira
    pthread_barrier_destroy(&barrier);


    return result == nTotalElements ? -1 : result;
}

int main(int argc, char *argv[]) {
    if (argc != 4) {
        printf("Uso: %s <nTotalElements> <nThreads> <nQueries>\n", argv[0]);
        return -1;
    }

    int nTotalElements = atoi(argv[1]);
    int nThreads = atoi(argv[2]);
    int nQueries = atoi(argv[3]);

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
    for (int i = 0; i < nQueries; i++) {
        Q[i] = rand() % (nTotalElements * 2); 
    }

    chronometer_t searchTime;
    chrono_reset(&searchTime);
    chrono_start(&searchTime);

    int* Pos = (int*) malloc(nQueries * sizeof(int));

    // Realiza as buscas para cada valor em `Q`
    // printf("vetor de entrada: ");  
    // for (int i = 0; i < nTotalElements; i++) {
    //     printf("Input[%d]: %lld \n", i, InputVector[i]);
    // }
    printf("\n\n");

    for (int i = 0; i < nQueries; i++) {
        int index = parallel_lower_bound(InputVector, nTotalElements, Q[i], nThreads);
        Pos[i] = index;
        printf("Indice encontrado para o valor %lld: %d\n", Q[i], index);
    }
            printf ("Vetor Resultado: ");
            for (int index = 0; index < nQueries; index++)
                 printf ("%d ", Pos[index]);        

    chrono_stop(&searchTime);
    chrono_reportTime(&searchTime, "Tempo total para buscas paralelas");

    free(InputVector);
    return 0;
}
