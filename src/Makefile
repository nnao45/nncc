CFLAGS=-std=c11 -g -static

nncc: nncc.c

test: nncc
		./test.sh

clean:
		rm -f main *.o *~ tmp*

.PHONY: test clean