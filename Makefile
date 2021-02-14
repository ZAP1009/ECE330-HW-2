GPP = g++ -std=c++17

all: test_static.o test_dynamic.o
	$(GPP) test_static.o matrix_static.o -o test_static
	$(GPP) test_dynamic.o matrix_dynamic.o -o test_dynamic

test_static.o : matrix_static.c matrix_static.h
	$(GPP) -c test_static.c  matrix_static.c

test_dynamic.o : matrix_dynamic.c matrix_dynamic.h
	$(GPP) -c test_dynamic.c matrix_dynamic.c 

matrix_dynamic.o: matrix_dynamic.c matrix_dynamic.h
	$(GPP) -c matrix_dynamic.c

matrix_static.o: matrix_static.c matrix_static.h
	$(GPP) -c matrix_static.c



clean:
	rm *.o
	rm test_static
	rm test_dynamic

