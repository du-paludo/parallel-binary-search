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
    for j in {1..10}
    do
        # Execute o programa e filtre a saída
        ./parteB $nElements $i $nQueries | grep -oP '(?<=tempo total: )[^ ]*'
    done
done
