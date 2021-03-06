###  -*-Makefile-*-

# ================================================================

.PHONY: help
help:
	@echo '    make  compile      Recompile Core (CPU, caches) into Verilog_RTL and copies into xilinx_ip/hdl'
	@echo '                           NOTE: needs Bluespec bsc compiler'
	@echo ''
	@echo '    make  clean        Remove intermediate build-files'
	@echo '    make  full_clean   Restore this directory to pristine state'

.PHONY: all
all: compile

# ================================================================

REPO ?= ..
ARCH ?= RV64ACDFIMSU

# ================================================================
# RISC-V config macros passed into Bluespec 'bsc' compiler

BSC_COMPILATION_FLAGS += \
	-D RV64 \
	-D ISA_PRIV_M  -D ISA_PRIV_S  -D ISA_PRIV_U  \
	-D SV39 \
	-D ISA_I  -D ISA_M  -D ISA_A  -D ISA_F  -D ISA_D  -D ISA_FD_DIV  -D ISA_C  \
	-D SHIFT_BARREL    \
	-D MULT_SERIAL    \
	-D Near_Mem_Caches    \
	-D FABRIC64    \
	-D INCLUDE_GDB_CONTROL \
	-D INCLUDE_TANDEM_VERIF \
	-D BRVF_TRACE \
	-D XILINX_BSCAN  -D XILINX_XCVU9P  -D JTAG_TAP \


# Only used if we don't have INCLUDE_GDB_CONTROL
#	-D EXTERNAL_DEBUG_MODULE

include $(REPO)/builds/Resources/Include_RISCY_Config.mk

# ================================================================
# Path to RISCY-OOO sources

RISCY_HOME ?= ../src_Core/RISCY_OOO

RISCY_DIRS = $(RISCY_HOME)/procs/RV64G_OOO:$(RISCY_HOME)/procs/lib:$(RISCY_HOME)/coherence/src:$(RISCY_HOME)/fpgautils/lib

CONNECTAL_DIRS = $(RISCY_HOME)/connectal/bsv:$(RISCY_HOME)/connectal/tests/spi:$(RISCY_HOME)/connectal/lib/bsv

# ALL_RISCY_DIRS = $(RISCY_DIRS)
ALL_RISCY_DIRS = $(RISCY_DIRS):$(CONNECTAL_DIRS)

# ================================================================
# Search path for bsc for .bsv files

CORE_DIRS = $(REPO)/src_Core/CPU:$(REPO)/src_Core/ISA:$(REPO)/src_Core/Core:$(REPO)/src_Core/PLIC:$(REPO)/src_Core/Debug_Module:$(REPO)/src_Core/BSV_Additional_Libs

TESTBENCH_DIRS  = $(REPO)/src_Testbench/Fabrics/AXI4

BSC_PATH = -p src_BSV:$(ALL_RISCY_DIRS):$(CORE_DIRS):$(TESTBENCH_DIRS):+:%/Libraries/TLM3:%/Libraries/Axi:%/Libraries/Axi4

# ----------------
# Top-level file and module

TOPFILE   = src_BSV/P3_Core.bsv
TOPMODULE = mkP3_Core

# ================================================================
# bsc compilation flags
# Parameter settings for MIT RISCY
# We include 'BSC_COMPILATION_FLAGS += D BSIM' to use simulation
# models for the integer divier. Omit this for synthesis.

BSC_COMPILATION_FLAGS += \
	-keep-fires -aggressive-conditions -no-warn-action-shadowing -no-show-timestamps \
	-suppress-warnings G0020    \
	+RTS -K128M -RTS  -show-range-conflict

# ================================================================
# Generate Verilog RTL from BSV sources (needs Bluespec 'bsc' compiler)

BUILD_DIRS = -bdir build_dir  -info-dir build_dir

build_dir:
	mkdir -p $@

Verilog_RTL:
	mkdir -p $@

Verilog_RTL_sim:
	mkdir -p $@

.PHONY: compile
compile:  build_dir Verilog_RTL Verilog_RTL_sim
	@echo  "INFO: Generating RTL into Verilog_RTL for synthesis ..."
	bsc -u -elab -verilog  -vdir Verilog_RTL $(BUILD_DIRS)  $(BSC_COMPILATION_FLAGS)  $(BSC_PATH)  $(TOPFILE)
	@echo  "INFO: Generated Synth RTL into Verilog_RTL"
	cp  Verilog_RTL/*  xilinx_ip/hdl/
	@echo  "INFO: Copied RTL from  Verilog_RTL/  to  xilinx_ip/hdl/"
	rm -f build_dir/*
	@echo  "INFO: Generating RTL into Verilog_RTL_sim for simulation ..."
	bsc -u -elab -verilog  -vdir Verilog_RTL_sim $(BUILD_DIRS)  $(BSC_COMPILATION_FLAGS)  -D BSIM $(BSC_PATH)  $(TOPFILE)

# ================================================================

.PHONY: clean
clean:
	rm -r -f  *~  Makefile_*  build_dir

.PHONY: full_clean
full_clean: clean
	rm -r -f  *.log  Verilog_RTL Verilog_RTL_sim

# ================================================================
