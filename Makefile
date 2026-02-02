CC = gcc
TARGET = ProjectName

BIN_DIR = bin
OBJS = $(BIN_DIR)/main.o

INCLUDES = -Iexternal
CFLAGS = -Wall -O3 $(INCLUDES)
LDFLAGS = -lm

.PHONY: all clean

all: $(BIN_DIR)/$(TARGET)

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

$(BIN_DIR)/$(TARGET): $(OBJS) | $(BIN_DIR)
	$(CC) $^ -o $@ $(LDFLAGS)

$(BIN_DIR)/%.o: %.c | $(BIN_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) -r $(BIN_DIR)
