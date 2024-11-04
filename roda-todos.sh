# Eduardo Stefanel Paludo - GRR20210581
# Natael Pontarolo Gomes - GRR20211786

#!/bin/bash
echo "USAGE: ./rodaTodos.sh <nElements>"

# Check if the number of elements is provided
if [ -z "$1" ]; then
    echo "Please specify the number of elements as an argument."
    exit 1
fi

nElements=$1

make purge
make

# Loop over the number of threads
for i in {1..8}
do
    echo "Executando 10 vezes com $nElements elementos e $i threads:"
    total_time=0
    total_throughput=0

    # Run the experiment 10 times for each thread count
    for j in {1..10}
    do
        # Run the program and capture output
        output=$(./bsearch-A $nElements $i)

        # Extract time and throughput using grep and regex
        time=$(echo "$output" | grep -oP '(?<=Total time: )[^ ]*')
        throughput=$(echo "$output" | grep -oP '(?<=Throughput: )[^ ]*')

        # Accumulate the values
        total_time=$(echo "$total_time + $time" | bc)
        total_throughput=$(echo "$total_throughput + $throughput" | bc)
    done

    # Calculate the mean time and throughput
    mean_time=$(echo "$total_time / 10" | bc -l)
    mean_throughput=$(echo "$total_throughput / 10" | bc -l)

    # Print the results for this thread count
    echo "Threads: $i"
    echo "Average Time (nanoseconds): $mean_time"
    echo "Average Throughput (OPS): $mean_throughput"
    echo
done
