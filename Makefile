CC ?= gcc

TARGET = disk-watchdogd

SOURCES = disk-watchdog.c

CFLAGS += -Wall -Werror -pedantic

LDFLAGS += -lsystemd

all: $(TARGET)

$(TARGET): $(SOURCES)
	$(CC) $(CFLAGS) $(SOURCES) $(LDFLAGS) -o $(TARGET)

valgrind:
	$(CC) $(CFLAGS) -g -O0 $(SOURCES) $(LDFLAGS) -o valgrind-disk-watchdogd

clean:
	rm -f $(TARGET) valgrind-disk-watchdogd

.PHONY: all  clean install valgrind
