# Makefile
CC = gcc
CFLAGS = -std=c99 -Wall -g -D_POSIX_C_SOURCE=199309L
LDFLAGS = -lpthread

all: main

main: main.o chrono.o
	$(CC) $(CFLAGS) -o main main.o chrono.o $(LDFLAGS)

main.o: main.c
	$(CC) $(CFLAGS) -c main.c

chrono.o: chrono.c
	$(CC) $(CFLAGS) -c chrono.c

clean:
	rm -f *.o main
