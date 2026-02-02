CC = gcc
TARGET = ProjectName
OBJS = main.o

INCLUDES = -Iexternal
CFLAGS = -Wall -O3 $(INCLUDES)
LDFLAGS = -lm

.PHONY: clean

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $^ -o $@ $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJS) $(TARGET)
