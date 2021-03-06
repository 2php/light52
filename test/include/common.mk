#-- common.mk - Makefile include common to C tests and demo programs -----------
#
# This make include file should be included in a project makefile *after* the 
# project configuration variables have been defined. See the Dhrystone makefile 
# for an usage example.

# Some assembly source tests may choose to use makefile fragment 'asem51.mk' 
# and not this one. if they need features missing from sdas8051 2.0.
# (The version of sdcc commonly found in repos as of Spring'18 ships with a 
# very old 8051 assembler that has trouble with local macro symbols etc.)

#-- Toolchain executables ------------------------------------------------------

# WARNING: Not tested on Windows!
AS = sdas8051
CC = sdcc
LD = sdcc
RM = rm -rf
CP = cp
BRPATH = ../../tools/build_rom

#-- Common configuration for all tests -----------------------------------------

# Directories
BINDIR = bin
OBJDIR = obj
SRCDIR = src
VHDL_TB_PATH = .
COMDIR = ../common

# FIXME make conditional
CDEBUGFLAGS = --debug --noinduction --nooverlay
LDEBUGFLAGS = --debug

# Toolchain flags
LFLAGS += -o $(OBJDIR)/ --code-size $(XCODE_SIZE) --xram-size $(XDATA_SIZE) $(LDEBUGFLAGS)
CFLAGS += -o $(OBJDIR)/ -D__LIGHT52__=1 $(CDEBUGFLAGS)
AFLAGS += -c

# The SW sources will need to know if we're building for actual HW.
# (When not defined the SW will not wait for TXRDY when writing to the UART.)
# FIXME do the same for assembly sources.
# FIXME run unmodified SW on simulation and hack the simulated UART instead.
ifdef BUILD_FOR_HW
	CFLAGS += -DBUILD_FOR_HW
endif


#-- Sources and objects, same for all tests  -----------------------------------

# Add all the source directories to the VPATH.
VPATH := $(dir $(SRC))

# If no list of sources is specified, just compile all c files in src.
TEST_SRC ?= $(wildcard $(SRCDIR)/*.c)
TEST_ASM ?= $(wildcard $(SRCDIR)/*.asm)
COMM_SRC ?= $(wildcard $(COMDIR)/*.c)
TEST_OBJS = $(patsubst $(SRCDIR)/%.c, $(OBJDIR)/%.rel, $(TEST_SRC))
TEST_OBJS += $(patsubst $(SRCDIR)/%.asm, $(OBJDIR)/%.rel, $(TEST_ASM))
COMM_OBJS ?= $(patsubst $(COMDIR)/%.c, $(OBJDIR)/%.rel, $(COMM_SRC))
OBJS = $(TEST_OBJS) $(COMM_OBJS)
# Default name of hex file.
BIN ?= software.hex

#-- Targets & rules ------------------------------------------------------------

.PHONY: warn_build_options
warn_build_options:
ifdef BUILD_FOR_HW
	@printf "\033[1;37mINFO: Building SW for actual hardware target.\033[0m\n"
else 
	@printf "\033[1;37mINFO: Building SW for simulation target.\033[0m\n"
endif 

$(OBJDIR):
	mkdir -p $(OBJDIR)

# Compile C sources into relocatable object files
$(OBJDIR)/%.rel : $(SRCDIR)/%.c $(OBJDIR)
	$(CC) $(CFLAGS) -c $<

$(OBJDIR)/%.rel : $(COMDIR)/%.c
	$(CC) $(CFLAGS) -c $<

# Assemble asm sources into relocatable object files
$(OBJDIR)/%.rel : $(SRCDIR)/%.asm $(OBJDIR)
	$(AS) -I../include -l -o $@ $<


$(BINDIR):
	mkdir -p $(BINDIR)

# Build executable file and move it to the bin directory
$(BINDIR)/$(BIN): $(OBJS)
	@echo Building executable file $@ ...
	$(LD) $(OBJS) $(LFLAGS) --code-loc 0
	$(CP) $(OBJDIR)/*.ihx $(BINDIR)/$(BIN)

# Root target
.PHONY: sw
sw: warn_build_options $(BINDIR)/$(BIN)
	@echo Done


#-- Targets that build the synthesizable vhdl ----------------------------------

#-- Create VHDL package with object code and synthesis parameters
.PHONY: package
package: warn_build_options sw
	@echo Building object code VHDL package...
	@python $(BRPATH)/src/build_rom.py \
		-f $(BINDIR)/$(BIN)  \
		-v $(BRPATH)/templates/obj_code_pkg_template.vhdl \
		--xcode $(XCODE_SIZE) --xdata $(XDATA_SIZE) -n $(PROJ_NAME) \
		-o $(VHDL_TB_PATH)/obj_code_pkg.vhdl

#-- And now the usual housekeeping stuff ---------------------------------------

.PHONY: clean
clean:
	-$(RM) $(OBJDIR)/* $(BINDIR)/* $(VHDL_TB_PATH)/obj_code_pkg.vhdl
