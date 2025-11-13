# Simple Makefile for LED Blinker VHDL Project

# Project settings
PROJECT = blink
TOP_MODULE = blink
TESTBENCH = t_blink
WORK_DIR = work

# FPGA part
FPGA_PART = xc7z020clg400-1

# Files
SOURCES = blink.vhd
TB_SOURCES = t_blink.vhd
CONSTRAINTS = constraints.xdc

# Tools
XVHDL = xvhdl
XELAB = xelab
XSIM = xsim
VIVADO = vivado

# Build directory
BUILD_DIR = build
BITSTREAM = $(BUILD_DIR)/$(TOP_MODULE).bit

.PHONY: all clean sim synth impl program

all: sim

# Simulation
sim:
	$(XVHDL) $(SOURCES) $(TB_SOURCES)
	$(XELAB) $(WORK_DIR).$(TESTBENCH) -s sim_tb --timescale 1ns/1ns --timeprecision_vhdl 1ns --debug typical
	$(XSIM) sim_tb -R

sim-gui:
	$(XVHDL) $(SOURCES) $(TB_SOURCES)
	$(XELAB) $(WORK_DIR).$(TESTBENCH) -s sim_tb --timescale 1ns/1ns --timeprecision_vhdl 1ns --debug typical
	$(XSIM) sim_tb --gui

# FPGA build
synth:
	mkdir -p $(BUILD_DIR)
	echo "create_project -in_memory -part $(FPGA_PART)" > $(BUILD_DIR)/synth.tcl
	echo "read_vhdl $(SOURCES)" >> $(BUILD_DIR)/synth.tcl
	echo "read_xdc $(CONSTRAINTS)" >> $(BUILD_DIR)/synth.tcl
	echo "synth_design -top $(TOP_MODULE) -part $(FPGA_PART)" >> $(BUILD_DIR)/synth.tcl
	echo "write_checkpoint -force $(BUILD_DIR)/post_synth.dcp" >> $(BUILD_DIR)/synth.tcl
	echo "exit" >> $(BUILD_DIR)/synth.tcl
	$(VIVADO) -mode batch -source $(BUILD_DIR)/synth.tcl

impl: synth
	echo "open_checkpoint $(BUILD_DIR)/post_synth.dcp" > $(BUILD_DIR)/impl.tcl
	echo "opt_design" >> $(BUILD_DIR)/impl.tcl
	echo "place_design" >> $(BUILD_DIR)/impl.tcl
	echo "route_design" >> $(BUILD_DIR)/impl.tcl
	echo "write_bitstream -force $(BITSTREAM)" >> $(BUILD_DIR)/impl.tcl
	echo "exit" >> $(BUILD_DIR)/impl.tcl
	$(VIVADO) -mode batch -source $(BUILD_DIR)/impl.tcl

program: impl
	echo "open_hw_manager" > $(BUILD_DIR)/program.tcl
	echo "connect_hw_server" >> $(BUILD_DIR)/program.tcl
	echo "open_hw_target" >> $(BUILD_DIR)/program.tcl
	echo "current_hw_device [get_hw_devices xc7z020_1]" >> $(BUILD_DIR)/program.tcl
	echo "set_property PROGRAM.FILE {$(BITSTREAM)} [get_hw_devices xc7z020_1]" >> $(BUILD_DIR)/program.tcl
	echo "program_hw_devices [get_hw_devices xc7z020_1]" >> $(BUILD_DIR)/program.tcl
	echo "exit" >> $(BUILD_DIR)/program.tcl
	$(VIVADO) -mode batch -source $(BUILD_DIR)/program.tcl

# Clean up
clean:
	rm -rf $(WORK_DIR) xsim.dir *.jou *.log *.pb *.wdb .Xil $(BUILD_DIR)