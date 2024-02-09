# Makefile for building Part-C.exe and Part-C.hex using g++ compiler

CC = g++
CFLAGS = -Wall -Wextra -std=c++17

SRC = PartA.cpp
OBJ = $(SRC:.cpp=.o)
TARGET = Part-A.exe
HEX_TARGET = Part-A.hex

.PHONY: all clean

all: $(TARGET) $(HEX_TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) $^ -o $@

%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

# Rule for creating .hex file from .exe
$(HEX_TARGET): $(TARGET)
	objcopy -O ihex $< $@

clean:
	rm -f $(OBJ) $(TARGET) $(HEX_TARGET)
