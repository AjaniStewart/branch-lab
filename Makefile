CXXFLAGS=-std=c++14
OBJECTS=rect.o triangle.o

main: main.o $(OBJECTS)
	g++ -o main main.o $(OBJECTS)

main.o: main.cpp rect.h

rect.o: rect.cpp rect.h

triangle.o: triangle.cpp triangle.h

tests: tests.o $(OBJECTS)
	g++ -o tests tests.o $(OBJECTS)

clean:
	rm main.o tests.o $(OBJECTS)
