CC = gcc
CFLAGS = -Wall -Wextra -Werror -std=gnu11 -O3 -ffast-math -march=native
SRCS = $(wildcard utils/*.c)
EXES = $(patsubst utils/%.c,bin/%,$(SRCS))

all: bin $(EXES)

bin:
	mkdir -p bin

bin/%: utils/%.c
	$(CC) $(CFLAGS) $< -o $@
	chmod +x $@

clean:
	rm -f $(EXES)

.PHONY: all clean

