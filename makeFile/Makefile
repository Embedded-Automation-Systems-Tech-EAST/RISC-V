TARGET := HELLO

BUILD_DIR = ./build
SRC_DIR = ./src

SRC_FILES := $(shell find $(SRC_DIR) -name '*.c')

OBJS := $(SRC_FILES:%=$(BUILD_DIR)/%.o)

INC_DIR := $(shell find $(SRC_DIR) -type d)

INC_FLAGS := $(addprefix -I,$(s))


$(BUILD_DIR)/$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $@ $(LDFLAGS)
		

# Build step for C source
$(BUILD_DIR)/%.c.o: %.c
	mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

run:
	
	$(BUILD_DIR)/$(TARGET)

clean:
	rm -r $(BUILD_DIR)

