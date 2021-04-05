all: test_static.o test_dynamic.o
	g++ test_static.o matrix_static.o -o test_static
	g++ test_dynamic.o matrix_dynamic.o -o test_dynamic

test_static.o : matrix_static.c matrix_static.h
	g++ -c test_static.c  matrix_static.c

test_dynamic.o : matrix_dynamic.c matrix_dynamic.h
	g++ -c test_dynamic.c matrix_dynamic.c 

matrix_dynamic.o: matrix_dynamic.c matrix_dynamic.h
	g++ -c matrix_dynamic.c

matrix_static.o: matrix_static.c matrix_static.h
	g++ -c matrix_static.c



clean:
	rm *.o
	rm test_static
	rm test_dynamic

