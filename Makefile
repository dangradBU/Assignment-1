
all: calc test-mini test-mini2 caller

test-mini: test.c mini.c
	gcc test.c mini.c -Wall -o test-mini
	
test-mini2: test.c mini_mod.S
	gcc test.c mini_mod.S -Wall -o test-mini2
clean:
	rm -f *.o
	rm -f calc
	rm -f caller
	rm -f test-mini
	rm -f test-mini2