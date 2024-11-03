flags = -Wall
nome = bsearch

all: $(nome)

$(nome): bsearch-A.o chrono.o
	gcc -o $(nome) bsearch-A.o chrono.o $(flags)

bsearch-A.o: bsearch-A.c
	gcc -c bsearch-A.c $(flags)

chrono.o: chrono.c
	gcc -c chrono.c $(flags)

clean:
	rm -f *~ *.o

purge: clean
	rm -f $(nome)