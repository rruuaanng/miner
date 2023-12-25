CC = g++
TARGET = miner
SDIR = src
BDIR = build

SRC = $(wildcard $(SDIR)/**/*.cc $(SDIR)/*.cc)
OBJS = $(patsubst $(SDIR)/%.cc, $(SDIR)/%.o, $(SRC))

INC += \
-Iinclude/core \
-Iinclude/items

CFLAGS += -Wall -m64
LK_LIB += -ltcod

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@ $(LK_LIB)

$(BDIR)/%.o: $(SDIR)/%.cc
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -c $< -o $@ $(LK_LIB)

clean:
	rm -rf $(BDIR) $(TARGET)