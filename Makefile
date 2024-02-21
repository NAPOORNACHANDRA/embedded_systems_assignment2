#******************************************************************************
# Copyright (C) 2017 by Alex Fosdick - University of Colorado
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Alex Fosdick and the University of Colorado are not liable for any
# misuse of this material. 
#
#*****************************************************************************

#------------------------------------------------------------------------------
# <Put a Description Here>
#
# Use: make [TARGET] [PLATFORM-OVERRIDES]
#
# Build Targets:
#      <FIle>.o - Builds a <File>.o object file
#      <File>.i - Builds a <File>.i preprocessed file
#      <File>.asm - Dumps <File>.asm assembly file
#      <File>.d - Build <File>.d dependency file
#      compile-all - Compiles all source files in project
#      build - Builds all object files in project (links as well)
#      clean - Removes all genereted files
#
# Platform Overrides:
#      Host - Default Platform 
#      MSP342 - Target cross-compiled platform
#
#      Author: N A Poorna Chandra
#
#------------------------------------------------------------------------------
include sources.mk

# Platform Overrides
PLATFORM = HOST

#general flags for both platform
G_FLAGS= -std=c99 \
	 -g \
	 -O0 \
	 -Wall \
	 -Werror \

#Architecturees Specific Flags for MSP432
LINKER_FILE = -T msp432p401r.lds
CPU = cortex-m4
ARCH = armv7e-m
SPECS = nosys.specs
EXTRA = -mthumb \
	-mfloat-abi=hard \
	-mfpu=fpv4-sp-d16


TARGET = c1m2


ifeq ($(PLATFORM), MSP432)
	# Compiler Flags & Defines
        CC = arm-none-eabi-gcc
        LD = arm-none-eabi-ld
        CFLAGS = $(G_FLAGS) \
		 -mcpu=$(CPU) \
		 -march=$(ARCH) \
		 --specs=$(SPECS) \
		 $(EXTRA)
        CPPFLAGS = -DMSP432 $(INCLUDES)
        LDFLAGS = -Wl,-Map=$(TARGET).map \
		  -L ../ $(LINKER_FILE)
        OBJDUMP = arm-none-eabi-objdump
        SIZE = arm-none-eabi-size	
else ifeq ($(PLATFORM), HOST)
	# Compiler Flags & Defines
        CC = gcc
        LD = ld
        CFLAGS = $(G_FLAGS)
        CPPFLAGS = -DHOST $(INCLUDES)
        LDFLAGS = -Wl,-Map=$(TARGET).map
        OBJDUMP = objdump
        SIZE = size
else 
$(error Not defined Platform, Please select from Platforms (HOST & MSP432))

endif

# Building Object file (file.o)
# Building Dependency file (file.d)
# Building Assembly file (file.asm)
# Building Preprocessed file (file.i)
OBJS = $(SOURCES:.c=.o)
DEPS = $(SOURCES:.c=.d)
ASMS = $(SOURCES:.c=.asm)
PREP = $(SOURCES:.c=.i)

%.o : %.c
	$(CC) -c $< $(CFLAGS) $(CPPFLAGS) -o $@

%.asm: %.c
	$(CC) -S $< $(CFLAGS) $(CPPFLAGS) -o $@

%.i: %.c
	$(CC) -E $< $(CPPFLAGS) -o $@

%.d: %.c
	$(CC) -E -M $< $(CPPFLAGS) -o $@

$(TARGET).asm: $(TARGET).out
	$(OBJDUMP) -d $(TARGET).out >> $@


.PHONY: compile-all
compile-all: $(OBJS)

.PHONY: build
build: $(TARGET).out


$(TARGET).out: $(OBJS) $(DEPS)
	$(CC) $(OBJS) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) -o $@
	$(SIZE) $@

.PHONY: clean
clean:
	rm -f *.o *.i *.asm *.d  *.out $(TARGET).map

