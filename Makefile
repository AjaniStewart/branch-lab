CXXFLAGS=-std=c++14
OBJECTS=rect.o triangle.o
TEST_OBJECTS= test_triangle.o test_rect.o

main: main.o $(OBJECTS)
	g++ -o main main.o $(OBJECTS)

main.o: main.cpp rect.h

rect.o: rect.cpp rect.h

triangle.o: triangle.cpp triangle.h

test_rect.o: test_rect.cpp rect.h

test_triangle.o: test_triangle.cpp triangle.h

tests.o: tests.cpp $(OBJECTS)

tests: tests.o $(TEST_OBJECTS)
	g++ -o tests tests.o $(TEST_OBJECTS)

clean:
	rm main.o tests.o $(OBJECTS)
