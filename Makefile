CC      ?= gcc
CFLAGS  ?= -Wall -O2
TARGET   = hello

all: $(TARGET)

$(TARGET): hello.c
	$(CC) $(CFLAGS) -o $@ $<

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: all run clean