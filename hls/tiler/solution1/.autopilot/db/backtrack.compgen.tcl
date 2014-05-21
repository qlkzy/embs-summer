# This script segment is generated automatically by AutoPilot

set id 21
set name toplevel_srem_10s_10ns_10_13
set corename simcore_srem_seq
set op srem
set stage_num 13
set registered_input 1
set in0_width 10
set in0_signed 1
set in1_width 10
set in1_signed 0
set out_width 10
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_srem] == "ap_gen_simcore_srem"} {
eval "ap_gen_simcore_srem { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_srem, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op srem
set corename DivnS_SEQ
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_div] == "::AESL_LIB_VIRTEX::xil_gen_div"} {
eval "::AESL_LIB_VIRTEX::xil_gen_div { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_div, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 23 \
    name pp_rot_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pp_rot_V \
    op interface \
    ports { pp_rot_V_address0 { O 6 vector } pp_rot_V_ce0 { O 1 bit } pp_rot_V_we0 { O 1 bit } pp_rot_V_d0 { O 2 vector } pp_rot_V_q0 { I 2 vector } pp_rot_V_address1 { O 6 vector } pp_rot_V_ce1 { O 1 bit } pp_rot_V_q1 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pp_rot_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 24 \
    name pp_tile_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename pp_tile_V \
    op interface \
    ports { pp_tile_V_address0 { O 6 vector } pp_tile_V_ce0 { O 1 bit } pp_tile_V_we0 { O 1 bit } pp_tile_V_d0 { O 8 vector } pp_tile_V_q0 { I 8 vector } pp_tile_V_address1 { O 6 vector } pp_tile_V_ce1 { O 1 bit } pp_tile_V_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pp_tile_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 27 \
    name tiles_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename tiles_V \
    op interface \
    ports { tiles_V_address0 { O 8 vector } tiles_V_ce0 { O 1 bit } tiles_V_q0 { I 4 vector } tiles_V_address1 { O 8 vector } tiles_V_ce1 { O 1 bit } tiles_V_q1 { I 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tiles_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 28 \
    name colours_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename colours_V \
    op interface \
    ports { colours_V_address0 { O 4 vector } colours_V_ce0 { O 1 bit } colours_V_q0 { I 36 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'colours_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name cp_V \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_cp_V \
    op interface \
    ports { cp_V_i { I 8 vector } cp_V_o { O 8 vector } cp_V_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name avail_V \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_avail_V \
    op interface \
    ports { avail_V_i { I 36 vector } avail_V_o { O 36 vector } avail_V_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name side_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_side_V \
    op interface \
    ports { side_V { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name ntiles_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ntiles_V \
    op interface \
    ports { ntiles_V { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name terminate \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_terminate \
    op interface \
    ports { terminate_i { I 1 vector } terminate_o { O 1 vector } terminate_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


