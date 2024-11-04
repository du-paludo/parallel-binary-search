# Eduardo Stefanel Paludo - GRR20210581
# Natael Pontarolo Gomes - GRR20211786

# flags = -Wall

all: bsearch-A bsearch-B

bsearch-A: bsearch-A.o chrono.o
	gcc -o bsearch-A bsearch-A.o chrono.o $(flags)

bsearch-B: bsearch-B.o chrono.o
	gcc -o bsearch-B bsearch-B.o chrono.o $(flags)

bsearch-A.o: bsearch-A.c
	gcc -c bsearch-A.c $(flags)

bsearch-B.o: bsearch-B.c
	gcc -c bsearch-B.c $(flags)

chrono.o: chrono.c
	gcc -c chrono.c $(flags)

clean:
	rm -f *~ *.o

purge: clean
	rm -f bsearch-A bsearch-B
