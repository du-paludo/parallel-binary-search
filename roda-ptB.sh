#!/bin/bash
echo "USAGE: ./roda-todos.sh <nElements> <nQueries>"

if [ "$#" -ne 2 ]; then
    echo "Número de argumentos inválido."
    exit 1
fi

nElements=$1
nQueries=$2

make purge
make bsearch-B

for i in {1..8}
do
    echo "Executando 10 vezes com $nElements elementos e $i threads:"
    total_time=0    
    total_throughput=0

    for j in {1..10}
    do
        output=$(./bsearch-B $nElements $i $nQueries)

        # Execute o programa e filtre o tempo
        tempo=$(echo "$output" | grep -oP '(?<=tempo total: )[^ ]*')
        throughput=$(echo "$output" | grep -oP '(?<=Throughput: )[^ ]*')

        echo "Tempo: $tempo nanosegundos"
        echo "Throughput: $throughput operações por segundo"

        # Soma o tempo total e o throughput para cálculo da média
        total_time=$(echo "$total_time + $tempo" | bc -l)
        total_throughput=$(echo "$total_throughput + $throughput" | bc -l)
    done

    # Calcula média de tempo e throughput
    avg_time=$(echo "$total_time / 10" | bc -l)
    avg_throughput=$(echo "$total_throughput / 10" | bc -l)

    echo "Tempo médio: $avg_time segundos"
    echo "Throughput médio: $avg_throughput operações por segundo"
done
