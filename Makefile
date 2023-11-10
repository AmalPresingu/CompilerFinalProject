compfs: compfs.o parser.o scanner.o main.o scanner.h parser.h token.h statSem.o statSem.h compfs.h
	g++ main.o scanner.o parser.o statSem.o compfs.o -o compfs

main.o: main.cpp
	g++ -c main.cpp
	
parser.o: parser.cpp
	g++ -c parser.cpp

scanner.o: scanner.cpp
	g++ -c scanner.cpp
	
statSem.o: statSem.cpp
	g++ -c statSem.cpp

compfs.o: compfs.cpp
	g++ -c compfs.cpp

clean: 
	rm -f *.o scanner 
	rm -f *.o parser
	rm -f *.o main
	rm -f *.o statSem
	rm -f *.o compfs *.asm
