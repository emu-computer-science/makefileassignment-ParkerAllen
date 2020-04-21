

all: file1.o file2.o driver.o
	gcc -o makefileAssignment *.o
.PHONY: all


file1.o: file1.c header.h
	gcc -c -o file1.o file1.c
	
file2.o: file2.c header.h
	gcc -c -o file2.o file2.c
	
driver.o: driver.c header.h
	gcc -c -o driver.o driver.c
	
clean:
	rm -f makefileAssignment *.o

