CC= clang++
FRAMEWORKS= -framework Cocoa -framework OpenGL -framework IOKit
CFLAGS= -Wall -std=c++17
LIBS= -lglfw
OUTPUT= app
DEPENDENCIES= shader.cpp


all: main.cpp shader.o
	$(CC) $(CFLAGS) -o $(OUTPUT) main.cpp $(DEPENDENCIES) -L. -lglfw3 -lGLEW $(FRAMEWORKS)
	rm -rf shader.o
