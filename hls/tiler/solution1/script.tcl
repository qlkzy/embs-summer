############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2013 Xilinx Inc. All rights reserved.
############################################################
open_project tiler
set_top toplevel
add_files toplevel.h
add_files toplevel.cpp
add_files -tb testbench.cpp
open_solution "solution1"
set_part {xc3s500efg320-4}
create_clock -period 20 -name default
source "./tiler/solution1/directives.tcl"
csim_design -ldflags {-B"/usr/lib/x86_64-linux-gnu/"}
csynth_design
cosim_design -ldflags {-B"/usr/lib/x86_64-linux-gnu/"} -trace_level none -rtl verilog -tool auto
export_design -format pcore -version "1.00.a" -use_netlist none
