all: calc test-mini test-mini2 caller

test-mini: test.c mini.c
	gcc test.c mini.c -Wall -o test-mini

test-mini2: test.c mini_mod.S
	gcc test.c mini_mod.S -Wall -o test-mini2

calc: calc.o mystery.o
	gcc calc.o mystery.o -o calc

calc.o: calc.c
	gcc -Wall -c calc.c

mystery.o: mystery.s
	gcc -c mystery.s

caller: caller.c
	gcc caller.c -Wall -o caller

clean:
	rm -f *.o
	rm -f calc
	rm -f caller
	rm -f test-mini
	rm -f test-mini2