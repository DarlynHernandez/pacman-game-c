CC = gcc
CFLAGS = -Wall -Wextra -std=c99
TARGET = pacman

# For Windows, add -lws2_32
# For Linux/Mac, no additional libs needed

all: $(TARGET)

$(TARGET): pacman.c
	$(CC) $(CFLAGS) -o $(TARGET) pacman.c -lm

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: all run clean
