cmake_minimum_required(VERSION 3.10)
set(CMAKE_CXX_STANDARD 14)

project(Proj_Lab2)

add_library(calculator
	src/calculator.h
	src/calculator.cpp
)


target_include_directories(
	calculator
	PUBLIC
		"src"
)

add_executable(run
  src/main.cpp
)

target_link_libraries(run calculator)