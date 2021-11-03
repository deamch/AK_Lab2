CXX = g++

RM = del /Q /F

CXXFLAGS = -Wall -Wextra -c 

all: run

run: calculator.a calculator.o main.o
	$(CXX) $? -o $@

calculator.a: calculator.o
	ar cr $@  $?

calculator.o: src/calculator.cpp src/calculator.h
	$(CXX) $(CXXFLAGS) src/calculator.cpp -o $@

main.o: src/main.cpp src/calculator.h
	$(CXX) $(CXXFLAGS) src/main.cpp -o $@

clean:
	$(RM) *.o run.exe *.a