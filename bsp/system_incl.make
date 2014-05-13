#################################################################
# Makefile generated by Xilinx Platform Studio 
# Project:/usr/userfs/d/drm511/embs/embs-summer/bsp/system.xmp
#
# WARNING : This file will be re-generated every time a command
# to run a make target is invoked. So, any changes made to this  
# file manually, will be lost when make is invoked next. 
#################################################################

XILINX_EDK_DIR = /opt/york/cs/net/xilinx-design-suite-14.3-x86_64-1/14.3/ISE_DS/EDK

SYSTEM = system

MHSFILE = system.mhs

FPGA_ARCH = spartan3e

DEVICE = xc3s500efg320-4

INTSTYLE = default

XPS_HDL_LANG = vhdl
GLOBAL_SEARCHPATHOPT = 
PROJECT_SEARCHPATHOPT =  -lp /usr/userfs/d/drm511/embs/embs-summer/hls/tiler/solution1/

SEARCHPATHOPT = $(PROJECT_SEARCHPATHOPT) $(GLOBAL_SEARCHPATHOPT)

SUBMODULE_OPT = 

PLATGEN_OPTIONS = -p $(DEVICE) -lang $(XPS_HDL_LANG) -intstyle $(INTSTYLE) $(SEARCHPATHOPT) $(SUBMODULE_OPT) -msg __xps/ise/xmsgprops.lst -parallel yes

OBSERVE_PAR_OPTIONS = -error yes

MICROBLAZE_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/microblaze/mb_bootloop.elf
MICROBLAZE_BOOTLOOP_LE = $(XILINX_EDK_DIR)/sw/lib/microblaze/mb_bootloop_le.elf
PPC405_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/ppc405/ppc_bootloop.elf
PPC440_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/ppc440/ppc440_bootloop.elf
BOOTLOOP_DIR = bootloops

MICROBLAZE_0_BOOTLOOP = $(BOOTLOOP_DIR)/microblaze_0.elf

BRAMINIT_ELF_IMP_FILES = $(MICROBLAZE_0_BOOTLOOP)
BRAMINIT_ELF_IMP_FILE_ARGS = -pe microblaze_0 $(MICROBLAZE_0_BOOTLOOP)

BRAMINIT_ELF_SIM_FILES = $(MICROBLAZE_0_BOOTLOOP)
BRAMINIT_ELF_SIM_FILE_ARGS = -pe microblaze_0 $(MICROBLAZE_0_BOOTLOOP)

SIM_CMD = vsim

BEHAVIORAL_SIM_SCRIPT = simulation/behavioral/$(SYSTEM)_setup.do

STRUCTURAL_SIM_SCRIPT = simulation/structural/$(SYSTEM)_setup.do

TIMING_SIM_SCRIPT = simulation/timing/$(SYSTEM)_setup.do

DEFAULT_SIM_SCRIPT = $(BEHAVIORAL_SIM_SCRIPT)

SIMGEN_OPTIONS = -p $(DEVICE) -lang $(XPS_HDL_LANG) -intstyle $(INTSTYLE) $(SEARCHPATHOPT) $(BRAMINIT_ELF_SIM_FILE_ARGS) -msg __xps/ise/xmsgprops.lst -s mgm


CORE_STATE_DEVELOPMENT_FILES = /usr/userfs/d/drm511/embs/embs-summer/hls/tiler/solution1/impl/pcores/toplevel_top_v1_00_a/synhdl/verilog/toplevel_udiv_8ns_8ns_8_11.v \
/usr/userfs/d/drm511/embs/embs-summer/hls/tiler/solution1/impl/pcores/toplevel_top_v1_00_a/synhdl/verilog/down.v \
/usr/userfs/d/drm511/embs/embs-summer/hls/tiler/solution1/impl/pcores/toplevel_top_v1_00_a/synhdl/verilog/right_r.v \
/usr/userfs/d/drm511/embs/embs-summer/hls/tiler/solution1/impl/pcores/toplevel_top_v1_00_a/synhdl/verilog/solve.v \
/usr/userfs/d/drm511/embs/embs-summer/hls/tiler/solution1/impl/pcores/toplevel_top_v1_00_a/synhdl/verilog/toplevel_colours_V.v \
/usr/userfs/d/drm511/embs/embs-summer/hls/tiler/solution1/impl/pcores/toplevel_top_v1_00_a/synhdl/verilog/toplevel_pp_rot_V.v \
/usr/userfs/d/drm511/embs/embs-summer/hls/tiler/solution1/impl/pcores/toplevel_top_v1_00_a/synhdl/verilog/toplevel_pp_tile_V.v \
/usr/userfs/d/drm511/embs/embs-summer/hls/tiler/solution1/impl/pcores/toplevel_top_v1_00_a/synhdl/verilog/toplevel_tiles_V.v \
/usr/userfs/d/drm511/embs/embs-summer/hls/tiler/solution1/impl/pcores/toplevel_top_v1_00_a/synhdl/verilog/toplevel.v \
/usr/userfs/d/drm511/embs/embs-summer/hls/tiler/solution1/impl/pcores/toplevel_top_v1_00_a/synhdl/verilog/toplevel_ap_rst_if.v \
/usr/userfs/d/drm511/embs/embs-summer/hls/tiler/solution1/impl/pcores/toplevel_top_v1_00_a/synhdl/verilog/toplevel_input_V_V_if.v \
/usr/userfs/d/drm511/embs/embs-summer/hls/tiler/solution1/impl/pcores/toplevel_top_v1_00_a/synhdl/verilog/toplevel_output_V_V_if.v \
/usr/userfs/d/drm511/embs/embs-summer/hls/tiler/solution1/impl/pcores/toplevel_top_v1_00_a/synhdl/verilog/toplevel_top.v

WRAPPER_NGC_FILES = implementation/system_microblaze_0_wrapper.ngc \
implementation/system_mb_plb_wrapper.ngc \
implementation/system_ilmb_wrapper.ngc \
implementation/system_dlmb_wrapper.ngc \
implementation/system_dlmb_cntlr_wrapper.ngc \
implementation/system_ilmb_cntlr_wrapper.ngc \
implementation/system_lmb_bram_wrapper.ngc \
implementation/system_rs232_dte_wrapper.ngc \
implementation/system_leds_8bit_wrapper.ngc \
implementation/system_dip_switches_4bit_wrapper.ngc \
implementation/system_buttons_4bit_wrapper.ngc \
implementation/system_ddr_sdram_wrapper.ngc \
implementation/system_ethernet_mac_wrapper.ngc \
implementation/system_clock_generator_0_wrapper.ngc \
implementation/system_mdm_0_wrapper.ngc \
implementation/system_proc_sys_reset_0_wrapper.ngc \
implementation/system_embs_vga_0_wrapper.ngc \
implementation/system_toplevel_top_0_wrapper.ngc

POSTSYN_NETLIST = implementation/$(SYSTEM).ngc

SYSTEM_BIT = implementation/$(SYSTEM).bit

DOWNLOAD_BIT = implementation/download.bit

SYSTEM_ACE = implementation/$(SYSTEM).ace

UCF_FILE = data/system.ucf

BMM_FILE = implementation/$(SYSTEM).bmm

BITGEN_UT_FILE = etc/bitgen.ut

XFLOW_OPT_FILE = etc/fast_runtime.opt
XFLOW_DEPENDENCY = __xps/xpsxflow.opt $(XFLOW_OPT_FILE)

XPLORER_DEPENDENCY = __xps/xplorer.opt
XPLORER_OPTIONS = -p $(DEVICE) -uc $(SYSTEM).ucf -bm $(SYSTEM).bmm -max_runs 7

FPGA_IMP_DEPENDENCY = $(BMM_FILE) $(POSTSYN_NETLIST) $(UCF_FILE) $(XFLOW_DEPENDENCY)

SDK_EXPORT_DIR = SDK/SDK_Export/hw
SYSTEM_HW_HANDOFF = $(SDK_EXPORT_DIR)/$(SYSTEM).xml
SYSTEM_HW_HANDOFF_BIT = $(SDK_EXPORT_DIR)/$(SYSTEM).bit
SYSTEM_HW_HANDOFF_BMM = $(SDK_EXPORT_DIR)/$(SYSTEM)_bd.bmm
SYSTEM_HW_HANDOFF_DEP = $(SYSTEM_HW_HANDOFF) $(SYSTEM_HW_HANDOFF_BIT) $(SYSTEM_HW_HANDOFF_BMM)
