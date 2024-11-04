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

//estrutura para encapsulamento de tarefas
struct task{
    void (*func)(ll*, int, ll, int*);
    ll* arr;
    int n;
    ll x;
    int* result_pos; // ponteiro para armazenar o resultado
};
typedef struct task task_t;

// variáveis thread
pthread_t threads[MAX_THREADS];
int threads_ids[MAX_THREADS];
pthread_cond_t condQueue;
pthread_mutex_t mutexQueue;

// variáveis para busca
ll *InputVector;         // Vetor principal para busca
ll *Q;       // Vetor de consultas para valores a serem buscados
int Pos[MAX_QUERIES];    // Armazena o índice encontrado por cada thread
int nThreads;

// Variáveis para fila de tarefas
int queueSize = 0;
task_t taskQueue[MAX_QUERIES];
int done = 0;  // Variável de controle para indicar fim das tarefas

// Função que cada thread usará para buscar `currentSearchValue`
void lower_bound(ll* arr, int n, ll x, int* result_pos) {
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

    *result_pos = low; // Armazena o índice encontrado
    // printf("Elemento a ser buscado: %lld\n", x);
    // printf("Posição encontrada: %d\n", low);
}

void execute_task(task_t* task) {
    if (task->func) {
        task->func(task->arr, task->n, task->x, task->result_pos);
    }
}

void submit_task(task_t task) {
    pthread_mutex_lock(&mutexQueue);
    taskQueue[queueSize] = task;
    queueSize++;    
    pthread_mutex_unlock(&mutexQueue);
    pthread_cond_signal(&condQueue);    
}

// Função executada por cada thread para consumir as tarefas
void* start_thread(void* arg) {
    int thread_id = *((int*) arg);
    // printf ("Thread %d iniciada\n", thread_id);
    while (1) {
        task_t task;
        pthread_mutex_lock(&mutexQueue);
        
        while (queueSize == 0 && !done) {
            pthread_cond_wait(&condQueue, &mutexQueue);
        }
        
        // Verifica se todas as tarefas foram processadas e o fim foi sinalizado
        if (done && queueSize == 0) {
            pthread_mutex_unlock(&mutexQueue);
            break;
        }
        
        task = taskQueue[0];
        for (int i = 0; i < queueSize - 1; i++) {
            taskQueue[i] = taskQueue[i + 1];
        }
        queueSize--;

        // printf("Thread %d executando tarefa de busca...\n", thread_id);
        pthread_mutex_unlock(&mutexQueue);
        execute_task(&task);
    }
    return NULL;
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
    Q = malloc(nQueries * sizeof(ll));
    for (int i = 0; i < nQueries; i++) {
        Q[i] = rand() % (nTotalElements * 2); 
        // printf ("Q[%d] = %lld ", i, Q[i]);
    }


    // criando pool de threads
    for (int i = 0; i < nThreads; i++) {
        threads_ids[i] = i;
        // printf ("Criando thread %d\n", i);
        pthread_create(&threads[i], NULL, &start_thread, &threads_ids[i]);
    }    

    // número de pesquisas a serem realizadas 
    for (int i = 0; i < nQueries; i++) {
        task_t task = {lower_bound, InputVector, nTotalElements, Q[i], &Pos[i]};
        submit_task(task);
    }

    chronometer_t searchTime;
    chrono_reset(&searchTime);
    chrono_start(&searchTime);

    //Sinaliza fim das tarefas e notifica todas as threads
    // pthread_mutex_lock(&mutexQueue);
    done = 1;
    // pthread_mutex_unlock(&mutexQueue);
    pthread_cond_broadcast(&condQueue);

    for (int i = 0; i < nThreads; i++) {
        pthread_join(threads[i], NULL);
    }

    chrono_stop(&searchTime);
    chrono_reportTime(&searchTime, "Tempo total para buscas paralelas");

    // impressão para verificar resultados
    // for (int i = 0; i < nTotalElements; i++) {
    //     printf("Input[%d] = %lld\n", i, InputVector[i]);
    // }

    // // Imprime resultados   
    // for (int i = 0; i < nQueries; i++) {
    //     printf("Q[%d] = %lld -> Pos = %d\n", i, Q[i], Pos[i]);
    // }

    double total_time = (double)chrono_gettotal(&searchTime)/((double)1000*1000*1000);
    printf ("tempo total: %lf s\n", total_time);

    double ops =((double)nTotalElements)/total_time;
    printf ("Throughput: %lf OP/s\n", ops);

    pthread_mutex_destroy(&mutexQueue);
    pthread_cond_destroy(&condQueue);
    free(InputVector);
    free(Q);
    return 0;
}