# Parallel Binary Search with Thread Pools

This project provides a parallel implementation of a specialized binary search function, `bsearch_lower_bound`, using a thread pool to improve performance for large-scale datasets. The implementation is divided into two main components:

- **Part A:** Parallelizing a single binary search operation.

- **Part B:** Parallelizing the search for multiple values in a dataset.

## Description

`bsearch_lower_bound` is a version of the binary search algorithm designed to locate the first position in a sorted array where a specified value can be inserted without breaking the order.

For example, given an input array:

```c
long long Input[] = { 0, 2, 5, 7, 8 };
int n = 5; // Number of elements in the array
```

- Searching for individual values (Part A):

```c
bsearch_lower_bound(Input, n, 0); // Returns 0
bsearch_lower_bound(Input, n, 1); // Returns 1
bsearch_lower_bound(Input, n, 2); // Returns 1
bsearch_lower_bound(Input, n, 8); // Returns 4
bsearch_lower_bound(Input, n, 9); // Returns 5
```

- Searching for a set of values (Part B):

```c
long long Q[] = { 3, 8, 9 };
int nQ = 3; // Number of elements in the query array
long long Pos[nQ];

bsearch_lower_bound(Input, n, Q, nQ, Pos);
// Returns Pos = {2, 4, 5}
```

## Project Structure

- **Part A:** Implements parallelization for a single binary search operation using a thread pool.

- **Part B:** Implements parallelization for searching multiple values (Q) in the input dataset (Input).

Both implementations are optimized for performance on large datasets, ranging from millions to tens of millions of elements.

## Key Features

### Encapsulation and Thread Pool

All parallelization logic is encapsulated within functions for modularity and reusability. The thread pool approach ensures efficient workload distribution and resource management.

### Performance Optimization

- The input array is sorted using a standard C library function before performing binary search operations.

- Query arrays (`Q`) are generated randomly and remain unsorted.

- Measurements are repeated multiple times with data placed in different memory locations to minimize cache effects and ensure accurate timing.

### Experimental Configuration

- **Input sizes:** 1 million, 2 million, 4 million, 8 million, and 16 million elements.

- **Query sizes:** 100,000 elements per query array.

- **Number of threads:** Experiments are conducted with 1 to 8 threads.

### Output and Analysis

- **Metrics:** Search operations per second (OPS) are calculated for performance evaluation.

- **Results:** Presented in tabular and graphical formats, comparing performance across thread counts and input sizes.

## Usage

### Prerequisites

- C compiler (e.g., GCC)

- Threading libraries (e.g., pthread)

### Compilation

A script is provided to compile the project:

```
./compile.sh
```

### Running Experiments

Run the provided scripts to execute experiments and gather performance data:

- `./roda-ptA.sh`
- `./roda-ptB.sh`

### Output Files

- Results for Part A and Part B are saved in separate spreadsheets.

- Each spreadsheet includes detailed performance metrics and hardware topology diagrams.
