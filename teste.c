#define _XOPEN_SOURCE 600
#include <stdio.h>
#include <pthread.h>
#include <time.h>
#include <stdlib.h>
#include "chrono.h"

#define MAX_THREADS 8
#define MAX_TOTAL_ELEMENTS (500*1000*1000)
#define MAX_QUERIES 1000000 // Número de buscas a serem realizadas

typedef long long ll;

// Estrutura para encapsulamento de tarefas
struct task {
    void (*func)(ll*, int, ll, int*);
    ll* arr;
    int n;
    ll x;
    int* result_pos; // Ponteiro para armazenar o resultado
};
typedef struct task task_t;

// Estrutura do nó da fila de tarefas
struct task_node {
    task_t task;
    struct task_node* next;
};
typedef struct task_node task_node_t;

// Estrutura para a fila de tarefas
struct task_queue {
    task_node_t* head;
    task_node_t* tail;
    int size;
};
typedef struct task_queue task_queue_t;

// Variáveis de thread
pthread_t threads[MAX_THREADS];
int threads_ids[MAX_THREADS];
pthread_cond_t condQueue;
pthread_mutex_t mutexQueue;

// Fila de tarefas dinâmica
task_queue_t taskQueue;
int done = 0;  // Variável de controle para indicar fim das tarefas

// Função que cada thread usará para buscar `currentSearchValue`
void lower_bound(ll* arr, int n, ll x, int* result_pos) {
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

    *result_pos = low; // Armazena o índice encontrado
}

void execute_task(task_t* task) {
    if (task->func) {
        task->func(task->arr, task->n, task->x, task->result_pos);
    }
}

// Função para inicializar a fila de tarefas
void init_task_queue(task_queue_t* queue) {
    queue->head = NULL;
    queue->tail = NULL;
    queue->size = 0;
}

// Função para adicionar uma tarefa na fila (enqueue)
void enqueue_task(task_queue_t* queue, task_t task) {
    task_node_t* new_node = malloc(sizeof(task_node_t));
    new_node->task = task;
    new_node->next = NULL;

    pthread_mutex_lock(&mutexQueue);
    if (queue->tail == NULL) {
        queue->head = new_node;
    } else {
        queue->tail->next = new_node;
    }
    queue->tail = new_node;
    queue->size++;
    pthread_mutex_unlock(&mutexQueue);
    pthread_cond_signal(&condQueue);
}

// Função para remover uma tarefa da fila (dequeue)
task_t dequeue_task(task_queue_t* queue) {
    pthread_mutex_lock(&mutexQueue);
    while (queue->size == 0 && !done) {
        pthread_cond_wait(&condQueue, &mutexQueue);
    }

    task_node_t* node = queue->head;
    if (node == NULL) {
        pthread_mutex_unlock(&mutexQueue);
        return (task_t){NULL, NULL, 0, 0, NULL}; // Retorna uma tarefa vazia se a fila estiver vazia
    }

    queue->head = node->next;
    if (queue->head == NULL) {
        queue->tail = NULL;
    }
    queue->size--;

    task_t task = node->task;
    free(node);
    pthread_mutex_unlock(&mutexQueue);
    return task;
}

// Substitui a função submit_task para enfileirar a tarefa
void submit_task(task_t task) {
    enqueue_task(&taskQueue, task);
}

// Função executada por cada thread para consumir as tarefas
void* start_thread(void* arg) {
    int thread_id = *((int*) arg);
    while (1) {
        task_t task = dequeue_task(&taskQueue);

        // Verifica se uma tarefa vazia foi retornada (indicando que não há mais tarefas)
        if (done && task.func == NULL) {
            break;
        }

        execute_task(&task);
    }
    return NULL;
}

int main(int argc, char *argv[]) {
    ll *InputVector;         // Vetor principal para busca
    ll *Q;   
    int *Pos;

    pthread_mutex_init(&mutexQueue, NULL);
    pthread_cond_init(&condQueue, NULL);
    init_task_queue(&taskQueue);

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

    Q = malloc(nQueries * sizeof(ll));
    Pos = malloc(nQueries * sizeof(int));
    for (int i = 0; i < nQueries; i++) {
        Q[i] = i * 2; 
    }

    // Criação do pool de threads
    for (int i = 0; i < nThreads; i++) {
        threads_ids[i] = i;
        pthread_create(&threads[i], NULL, start_thread, &threads_ids[i]);
    }    

    chronometer_t searchTime;

    // Submissão das tarefas
    for (int i = 0; i < nQueries; i++) {
        task_t task = {lower_bound, InputVector, nTotalElements, Q[i], &Pos[i]};
        submit_task(task);
    }
    chrono_reset(&searchTime);
    chrono_start(&searchTime);

    pthread_cond_broadcast(&condQueue);

    // Sinaliza fim das tarefas e notifica todas as threads
    pthread_mutex_lock(&mutexQueue);
    done = 1;
    pthread_mutex_unlock(&mutexQueue);
    pthread_cond_broadcast(&condQueue);

    for (int i = 0; i < nThreads; i++) {
        pthread_join(threads[i], NULL);
    }

    chrono_stop(&searchTime);
    chrono_reportTime(&searchTime, "Tempo total para buscas paralelas");

    double total_time = (double)chrono_gettotal(&searchTime)/((double)1000*1000*1000);
    printf ("tempo total: %lf s\n", total_time);

    double ops =((double)nTotalElements)/total_time;
    printf ("Throughput: %lf OP/s\n", ops);

    pthread_mutex_destroy(&mutexQueue);
    pthread_cond_destroy(&condQueue);
    free(InputVector);
    free(Q);
    free(Pos);

    return 0;
}
