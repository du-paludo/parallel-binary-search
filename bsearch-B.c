// Eduardo Stefanel Paludo - GRR20210581
// Natael Pontarolo Gomes - GRR20211786

#define _XOPEN_SOURCE 600
#include <stdio.h>
#include <pthread.h>
#include <time.h>
#include <stdlib.h>
#include "chrono.h"
#include <limits.h>

#define MAX_THREADS 8
#define MAX_TOTAL_ELEMENTS (500*250*250) // 2GB long long
#define MAX_QUERIES 1000000 // Número de buscas a serem realizadas
#define BATCH_SIZE 10 // Number of queries to process in each task

typedef long long ll;

/* estruturas da fila de tarefas para execução das tarefas*/
// Estrutura para encapsulamento de tarefas, 
struct task {
    void (*func)(ll*, int, ll*, int, int*); // função a ser executada nesse caso lower_bound
    ll* arr; // vetor de entradas, onde será realizada a busca
    int n; // tamanho do vetor de entradas
    ll* queries; // array de consultas, elementos que serão busacdos no vetor de entradas
    int batch_size; // número de consultas nesse lote
    int* result_pos; // ponteiro para armazenar a posição do elemento encontrado
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


task_queue_t taskQueue; //fila de tarefas a serem executadas
int done = 0;  // Variável de controle para indicar fim das tarefas e finalizar a pool de threads

ll InputVector[MAX_TOTAL_ELEMENTS]; // Vetor principal para busca
ll Qg[MAX_QUERIES];
// ll* input = InputVector;

ll random_ll() {
    return (ll)rand() % LLONG_MAX;
}

int compare_ll(const void* a, const void* b) {
    return (*(ll*)a - *(ll*)b);
}

void imprimirVetor(ll* vetor, int n) {
    for (int i = 0; i < n; i++) {
        printf("vetor[%d] = %lld\n", i, vetor[i]);
    }
}

// função de busca binária
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

// função para processar um lote de consultas
void batch_lower_bound(ll* arr, int n, ll* queries, int batch_size, int* results) {
    for (int i = 0; i < batch_size; i++) {
        lower_bound(arr, n, queries[i], &results[i]);
    }
}

// inicia a execução da tarefa
void execute_task(task_t* task, int thread_id) {
    // printf ("Thread %d - Executando tarefa\n", thread_id);
    if (task->func) {
        task->func(task->arr, task->n, task->queries, task->batch_size, task->result_pos);
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
        return (task_t){NULL, NULL, 0, NULL, 0, NULL}; // Retorna uma tarefa vazia se a fila estiver vazia
    }

    queue->head = node->next;
    if (queue->head == NULL) {
        queue->tail = NULL;
    }
    queue->size--;

    task_t task = node->task;
    pthread_mutex_unlock(&mutexQueue);
    free(node);
    return task;
}

// Substitui a função submit_task para enfileirar a tarefa
// void submit_task(task_t task) {
//     enqueue_task(&taskQueue, task);
// }

// Função executada por cada thread para consumir as tarefas
void* start_thread(void* arg) {
    int thread_id = *((int*) arg);
    while (1) {
        task_t task = dequeue_task(&taskQueue);

        // Verifica se uma tarefa vazia foi retornada (indicando que não há mais tarefas)
        if (done && task.func == NULL) {
            break;
        }

        execute_task(&task, thread_id);
    }
    return NULL;
}

// Sinaliza fim das tarefas
void signal_done() {
    pthread_mutex_lock(&mutexQueue);
    done = 1;
    pthread_mutex_unlock(&mutexQueue);
    pthread_cond_broadcast(&condQueue);
}

int main(int argc, char *argv[]) {
    ll *input;         // Vetor principal para busca
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

    srand(time(NULL)); 
    // Inicializa vetor de entrada e vetor de consultas
    input = malloc(nTotalElements * sizeof(ll));
    for (int i = 0; i < nTotalElements; i++) {
        input[i] = random_ll();
    }

    qsort (input, nTotalElements, sizeof(ll), compare_ll);

    if (nTotalElements < MAX_TOTAL_ELEMENTS) {
        for (int i = 0; i < MAX_TOTAL_ELEMENTS; i++) {
        InputVector[i] = input[i % nTotalElements];
        // printf ("InputVector[%d] = %lld\n", i, InputVector[i]);
        }
    }

    free (input);

    Pos = malloc(nQueries * sizeof(int));
    Q = malloc(nQueries * sizeof(ll));
    for (int i = 0; i < nQueries; i++) {
        // Q[i] = rand() % (nTotalElements * 2); // Gera um valor aleatório para a busca
        Q[i] = random_ll();
    }
    
    if (nQueries < MAX_QUERIES) {
        for (int i = 0; i < MAX_QUERIES; i++) {
            Qg[i] = Q[i % nQueries];
            // printf ("Qg[%d] = %lld\n", i, Qg[i]);
        }
    }

    free (Q);

    // Criação do pool de threads
    for (int i = 0; i < nThreads; i++) {
        threads_ids[i] = i;
        pthread_create(&threads[i], NULL, start_thread, &threads_ids[i]);
    }    

    chronometer_t searchTime;
    chrono_reset(&searchTime);
    chrono_start(&searchTime);

    int start_position = 0;
    int start_position_q = 0;
    Q = &Qg[start_position_q];
    input = &InputVector[start_position];

    // Submissão das tarefas em lotes
    for (int i = 0; i < nQueries; i += BATCH_SIZE) {
        int batch_size = (i + BATCH_SIZE > nQueries) ? nQueries - i : BATCH_SIZE; //se for maior que o tamanho do vetor de consultas, pega o restante
        task_t task = {batch_lower_bound, input, nTotalElements, &Q[i], batch_size, &Pos[i]};
        enqueue_task(&taskQueue, task);

        start_position += nTotalElements;
        start_position_q += nQueries;

        if (start_position_q + nQueries > MAX_QUERIES) 
            start_position_q = 0;
        Q = &Qg[start_position_q];
        
        if (start_position + nTotalElements > MAX_TOTAL_ELEMENTS) {
            start_position = 0;
        input = &InputVector[start_position];
        }
    }

    pthread_cond_broadcast(&condQueue);

    // Sinaliza fim das tarefas e notifica todas as threads
    signal_done();

    for (int i = 0; i < nThreads; i++) {
        pthread_join(threads[i], NULL);
    }

    chrono_stop(&searchTime);
    chrono_reportTime(&searchTime, "Busca Paralela");

    double total_time = (double)chrono_gettotal(&searchTime);
    printf("tempo total: %lf \n", total_time);

    double ops = 1/total_time*(1000*1000*1000);
    printf("Throughput: %lf \n", ops);

    // impressões para debug 
    // imprime entrada
    // for(int i=0; i<nTotalElements; i++) {
    //     printf("input[%d] = %lld ", i, input[i]);
    // }

    // printf ("\n");

    // imprime quaries e resultados
    // for(int i=0; i<nQueries; i++) {
    //     printf("Q[%d] = %lld\n", i, Q[i]);
    // }

    // //imprime os resultados
    // for(int i=0; i<nQueries; i++) {
    //     printf("Pos[%d] = %d\n", i, Pos[i]);
    // }

    pthread_mutex_destroy(&mutexQueue);
    pthread_cond_destroy(&condQueue);
    free(Pos);

    return 0;
}