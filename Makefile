all: main

main: main.o answer.o convertTokenToInt.o userChoice.o readInput.o sum_before_and_after.o sum_between.o index_last_zero.o index_first_zero.o
	gcc -o a.out main.o answer.o convertTokenToInt.o userChoice.o readInput.o sum_before_and_after.o sum_between.o index_last_zero.o index_first_zero.o

main.o: main.c main.h answer.h convertTokenToInt.h userChoice.h readInput.h sum_before_and_after.h sum_between.h index_last_zero.h index_first_zero.h
	gcc -c main.c

answer.o: answer.c answer.h
	gcc -c answer.c

convertTokenToInt.o: convertTokenToInt.c convertTokenToInt.h
	gcc -c convertTokenToInt.c

userChoice.o: userChoice.c userChoice.h
	gcc -c userChoice.c

readInput.o: readInput.c readInput.h
	gcc -c readInput.c

sum_before_and_after.o: sum_before_and_after.c sum_before_and_after.h
	gcc -c sum_before_and_after.c

sum_between.o: sum_between.c sum_between.h
	gcc -c sum_between.c

index_last_zero.o: index_last_zero.c index_last_zero.h
	gcc -c index_last_zero.c

index_first_zero.o: index_first_zero.c index_first_zero.h
	gcc -c index_first_zero.c

clean:
	rm -r *.o a.out -rf
