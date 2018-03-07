CXXFLAGS=-std=c++14
OBJECTS=rect.o triangle.o
TEST_OBJECTS= test_triangle.o test_rect.o

main: main.o $(OBJECTS)
	g++ -o main main.o $(OBJECTS)

main.o: main.cpp rect.h triangle.h

rect.o: rect.cpp rect.h

triangle.o: triangle.cpp triangle.h

test_rect.o: test_rect.cpp rect.h

test_triangle.o: test_triangle.cpp triangle.h

tests.o: tests.cpp  $(TEST_OBJECTS)

tests: tests.o $(OBJECTS)
	g++ -o tests tests.o  $(OBJECTS) $(TEST_OBJECTS)

clean:
	rm main.o tests.o $(OBJECTS) $(TEST_OBJECTS)
