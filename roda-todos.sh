#!/bin/bash
echo "USAGE: ./roda-todos.sh <nElements> <nQueries>"

if [ "$#" -ne 2 ]; then
    echo "Número de argumentos inválido."
    exit 1
fi

nElements=$1
nQueries=$2

for i in {1..8}
do
    echo "Executando 10 vezes com $nElements elementos e $i threads:"
    total_time=0

    for j in {1..10}
    do
        # Execute o programa e filtre o tempo
        tempo=$(./teste $nElements $i $nQueries | grep -oP '(?<=tempo total: )[^ ]*')
        echo "Execução $j: $tempo segundos"

        # Adiciona o tempo à soma total
        total_time=$(echo "$total_time + $tempo" | bc)
    done

    # Calcula a média
    average_time=$(echo "scale=2; $total_time / 10" | bc)
    echo "Média de tempo para $nElements elementos e $i threads: $average_time segundos"
done
