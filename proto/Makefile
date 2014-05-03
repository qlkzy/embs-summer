CFLAGS += -g -std=c99

SRC := $(wildcard *.c)
OBJ := $(SRC:.c=.o)

all: gen draw

gen: gen.o util.o

draw: draw.o util.o

.PHONY: deps
deps:
	$(CC) -MM $(SRC) > deps

-include deps
