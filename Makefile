CC = gcc
CFLAGS = -Wall -Wextra -pedantic -std=c11

TARGET = jc
SRC = jc.c

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET)

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: all run clean