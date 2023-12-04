# Fluidz's Makefile 
 
# *****************************************************
# Variables to control Makefile operation
 
CC = g++
CFLAGS = -Wall -g
TARGET = ./bin/fluidz
 
# ****************************************************
# Targets needed to bring the executable up to date

all: compile launch

compile: bin
	@$(CC) $(CFLAGS) -o $(TARGET) ./src/main.cpp

bin:
	@mkdir bin

launch:
	@$(TARGET)

mr-proper:
	@rm -rdf ./bin