CFLAGS += -g -std=c99 -Wall -Wextra -Werror -O3

SRC := $(wildcard *.c)
OBJ := $(SRC:.c=.o)

all: gen draw solve fast_solve

fast_solve: fast_solve.o

gen: gen.o

draw: draw.o

solve: solve.o

.PHONY: deps
deps:
	$(CC) -MM $(SRC) > deps

.PHONY: clean
clean:
	rm -f *.o

-include deps
