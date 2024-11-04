CC = gcc
CFLAGS = -std=c99 -Wall -g -D_POSIX_C_SOURCE=199309L
LDFLAGS = -lpthread

all: teste parteB

parteB: parteB.o chrono.o
	$(CC) $(CFLAGS) -o parteB parteB.o chrono.o $(LDFLAGS)

parteB.o: parteB.c
	$(CC) $(CFLAGS) -c parteB.c

teste: teste.o chrono.o
	$(CC) $(CFLAGS) -o teste teste.o chrono.o $(LDFLAGS)

teste.o: teste.c
	$(CC) $(CFLAGS) -c teste.c

chrono.o: chrono.c
	$(CC) $(CFLAGS) -c chrono.c

clean:
	rm -f *.o parteA teste
