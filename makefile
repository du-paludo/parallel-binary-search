CC = gcc
CFLAGS = -std=c99 -Wall -g -D_POSIX_C_SOURCE=199309L
LDFLAGS = -lpthread

all: parteA parteB

parteA: parteA.o chrono.o
	$(CC) $(CFLAGS) -o parteA parteA.o chrono.o $(LDFLAGS)

parteA.o: parteA.c
	$(CC) $(CFLAGS) -c parteA.c

parteB: parteB.o chrono.o
	$(CC) $(CFLAGS) -o parteB parteB.o chrono.o $(LDFLAGS)

parteB.o: parteB.c
	$(CC) $(CFLAGS) -c parteB.c

chrono.o: chrono.c
	$(CC) $(CFLAGS) -c chrono.c

clean:
	rm -f *.o parteA parteB
