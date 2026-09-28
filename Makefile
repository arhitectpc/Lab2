CXX      := g++
CXXFLAGS := -Wall -Wextra -Iinclude -MMD -MP
AR       := ar

SRC_DIR  := src
BUILD    := build
LIB      := $(BUILD)/libcalculator.a
TARGET   := $(BUILD)/calculator_app

LIB_OBJ  := $(BUILD)/calculator.o
MAIN_OBJ := $(BUILD)/main.o
DEPS     := $(LIB_OBJ:.o=.d) $(MAIN_OBJ:.o=.d)

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(MAIN_OBJ) $(LIB)
	$(CXX) $(MAIN_OBJ) -L$(BUILD) -lcalculator -o $@

$(LIB): $(LIB_OBJ)
	$(AR) -rcs $@ $^

$(BUILD)/%.o: $(SRC_DIR)/%.cpp | $(BUILD)
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(BUILD):
	mkdir -p $@

clean:
	rm -rf $(BUILD)

-include $(DEPS)