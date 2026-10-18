CC      ?= gcc
CFLAGS  ?= -Wall -O2
TARGETS  = hello fib

all: $(TARGETS)

hello: hello.c
	$(CC) $(CFLAGS) -o $@ $<

fib: fib.c
	$(CC) $(CFLAGS) -o $@ $<

run: hello
	./hello

run-fib: fib
	./fib

clean:
	rm -f $(TARGETS)

.PHONY: all run run-fib clean