; ModuleID = '/usr/userfs/d/drm511/embs/embs-summer/hls/tiler/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pp_tile_V = internal unnamed_addr global [36 x i8] zeroinitializer
@pp_rot_V = internal unnamed_addr global [36 x i2] zeroinitializer
@tiles_V = internal global [144 x i4] zeroinitializer
@avail_V = internal unnamed_addr global i36 0
@colours_V = internal unnamed_addr global [10 x i36] zeroinitializer
@cp_V = internal unnamed_addr global i8 0
@side_V = internal unnamed_addr global i8 0
@ntiles_V = internal unnamed_addr global i8 0
@seq = global i1 false, align 1
@p_str = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1
@p_str9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str10 = private unnamed_addr constant [11 x i8] c"AXI4Stream\00", align 1
@p_str11 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@terminate = internal unnamed_addr global i1 false, align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [9 x i8] c"toplevel\00"

define void @toplevel(i32* %input_V_V, i32* %output_V_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %input_V_V), !map !12
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %output_V_V), !map !16
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecFifo(i32* %input_V_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str9) nounwind
  call void (...)* @_ssdm_op_SpecFifo(i32* %output_V_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str9) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32* %input_V_V, [1 x i8]* @p_str9, [11 x i8]* @p_str10, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecIFCore(i32* %output_V_V, [1 x i8]* @p_str9, [11 x i8]* @p_str10, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecWire(i32 0, [13 x i8]* @p_str11, i32 0, i32 0, i32 0, [1 x i8]* @p_str9) nounwind
  store i8 0, i8* @cp_V, align 1
  store i1 false, i1* @terminate, align 1
  br label %1

; <label>:1                                       ; preds = %2, %0
  %t_V_5 = phi i6 [ 0, %0 ], [ %t_V_6, %2 ]
  %exitcond2_i = icmp eq i6 %t_V_5, -28
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 36, i64 36, i64 36)
  %t_V_6 = add i6 %t_V_5, 1
  br i1 %exitcond2_i, label %.preheader154.i, label %2

; <label>:2                                       ; preds = %1
  %tmp_i = zext i6 %t_V_5 to i36
  %r_V = shl i36 1, %tmp_i
  %avail_V_load_1 = load i36* @avail_V, align 8
  %tmp_i_13 = or i36 %avail_V_load_1, %r_V
  store i36 %tmp_i_13, i36* @avail_V, align 8
  br label %1

.preheader154.i:                                  ; preds = %1, %3
  %p_i = phi i4 [ %c_V, %3 ], [ 0, %1 ]
  %exitcond3_i = icmp eq i4 %p_i, -6
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10)
  %c_V = add i4 %p_i, 1
  br i1 %exitcond3_i, label %.preheader.i, label %3

; <label>:3                                       ; preds = %.preheader154.i
  %tmp_9_i = zext i4 %p_i to i64
  %colours_V_addr = getelementptr [10 x i36]* @colours_V, i64 0, i64 %tmp_9_i
  store i36 0, i36* %colours_V_addr, align 8
  br label %.preheader154.i

.preheader.i:                                     ; preds = %.preheader154.i, %4
  %t_V_7 = phi i6 [ %p_V_1, %4 ], [ 0, %.preheader154.i ]
  %exitcond_i = icmp eq i6 %t_V_7, -28
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 36, i64 36, i64 36)
  %p_V_1 = add i6 %t_V_7, 1
  br i1 %exitcond_i, label %init.exit, label %4

; <label>:4                                       ; preds = %.preheader.i
  %tmp_1_i = zext i6 %t_V_7 to i64
  %pp_tile_V_addr = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_1_i
  store i8 0, i8* %pp_tile_V_addr, align 2
  %pp_rot_V_addr = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_1_i
  store i2 0, i2* %pp_rot_V_addr, align 1
  br label %.preheader.i

init.exit:                                        ; preds = %.preheader.i
  %tmp_V = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %input_V_V)
  %tmp_7 = trunc i32 %tmp_V to i8
  store i8 %tmp_7, i8* @side_V, align 1
  %ntiles_V_assign = mul i8 %tmp_7, %tmp_7
  store i8 %ntiles_V_assign, i8* @ntiles_V, align 1
  br label %.loopexit7

.loopexit7:                                       ; preds = %.preheader289, %init.exit
  %t_V = phi i8 [ 0, %init.exit ], [ %t_V_1, %.preheader289 ]
  %ntiles_V_load = load i8* @ntiles_V, align 1
  %tmp_1 = icmp ult i8 %t_V, %ntiles_V_load
  %t_V_1 = add i8 %t_V, 1
  br i1 %tmp_1, label %.preheader289, label %_ZlsILi36ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit

.preheader289:                                    ; preds = %.loopexit7, %5
  %t_V_2 = phi i3 [ %e_V, %5 ], [ 0, %.loopexit7 ]
  %exitcond1 = icmp eq i3 %t_V_2, -4
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %e_V = add i3 %t_V_2, 1
  br i1 %exitcond1, label %.loopexit7, label %5

; <label>:5                                       ; preds = %.preheader289
  %tmp_V_1 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %input_V_V)
  %tmp_8 = trunc i32 %tmp_V_1 to i4
  %tmp_5_trn_cast = zext i3 %t_V_2 to i11
  %tmp = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %t_V, i2 0)
  %tiles_V_addr5_cast = zext i10 %tmp to i11
  %tiles_V_addr6 = add i11 %tiles_V_addr5_cast, %tmp_5_trn_cast
  %tmp_2 = zext i11 %tiles_V_addr6 to i64
  %tiles_V_addr = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_2
  store i4 %tmp_8, i4* %tiles_V_addr, align 1
  br label %.preheader289

_ZlsILi36ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit: ; preds = %.preheader.i5, %.loopexit7
  %op2_assign = phi i32 [ 0, %.loopexit7 ], [ %t, %.preheader.i5 ]
  %ntiles_V_load_2 = load i8* @ntiles_V, align 1
  %tmp_i3_cast = zext i8 %ntiles_V_load_2 to i32
  %tmp_2_i = icmp ult i32 %op2_assign, %tmp_i3_cast
  %t = add nsw i32 %op2_assign, 1
  br i1 %tmp_2_i, label %.preheader.preheader.i, label %mapcolours.exit

.preheader.preheader.i:                           ; preds = %_ZlsILi36ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit
  %tmp_12 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %op2_assign, i32 31)
  %tmp_4_i = zext i32 %op2_assign to i36
  %tmp_5_i = shl i36 1, %tmp_4_i
  %tmp_6_i = sub nsw i32 0, %op2_assign
  %tmp_8_i = lshr i32 1, %tmp_6_i
  %tmp_8_i_cast = zext i32 %tmp_8_i to i36
  %r_V_1 = select i1 %tmp_12, i36 %tmp_8_i_cast, i36 %tmp_5_i
  br label %.preheader.i5

.preheader.i5:                                    ; preds = %_ZlsILi36ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit.i, %.preheader.preheader.i
  %e_i = phi i3 [ %e, %_ZlsILi36ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit.i ], [ 0, %.preheader.preheader.i ]
  %exitcond_i4 = icmp eq i3 %e_i, -4
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %e = add i3 %e_i, 1
  br i1 %exitcond_i4, label %_ZlsILi36ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit, label %_ZlsILi36ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit.i

_ZlsILi36ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit.i: ; preds = %.preheader.i5
  %tmp_9_i6_trn = zext i3 %e_i to i32
  %tmp_13 = shl i32 %op2_assign, 2
  %tiles_V_addr4 = add i32 %tmp_13, %tmp_9_i6_trn
  %tmp_9 = sext i32 %tiles_V_addr4 to i64
  %tiles_V_addr_1 = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_9
  %tiles_V_load = load i4* %tiles_V_addr_1, align 1
  %tmp_10_i = zext i4 %tiles_V_load to i64
  %colours_V_addr_1 = getelementptr [10 x i36]* @colours_V, i64 0, i64 %tmp_10_i
  %colours_V_load = load i36* %colours_V_addr_1, align 8
  %tmp_11_i = or i36 %colours_V_load, %r_V_1
  store i36 %tmp_11_i, i36* %colours_V_addr_1, align 8
  br label %.preheader.i5

mapcolours.exit:                                  ; preds = %_ZlsILi36ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit
  %tmp_V_4 = alloca i32, align 4
  %avail_V_load = load i36* @avail_V, align 8
  %tmp_5 = call i35 @_ssdm_op_PartSelect.i35.i36.i32.i32(i36 %avail_V_load, i32 1, i32 35)
  %tmp_3 = call i36 @_ssdm_op_BitConcatenate.i36.i35.i1(i35 %tmp_5, i1 false)
  store i36 %tmp_3, i36* @avail_V, align 8
  store volatile i1 true, i1* @seq, align 1
  br label %6

; <label>:6                                       ; preds = %.loopexit288._crit_edge, %mapcolours.exit
  %terminate_load = load i1* @terminate, align 1
  br i1 %terminate_load, label %.loopexit, label %7

; <label>:7                                       ; preds = %6
  %seq_load = load volatile i1* @seq, align 1
  br i1 %seq_load, label %._crit_edge.i, label %._crit_edge

._crit_edge.i:                                    ; preds = %7, %step.exit.i
  %tmp_i_i = call fastcc zeroext i1 @down() nounwind
  br i1 %tmp_i_i, label %._crit_edge.i.i, label %8

; <label>:8                                       ; preds = %._crit_edge.i
  call fastcc void @backtrack() nounwind
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %8, %._crit_edge.i
  %cp_V_load = load i8* @cp_V, align 1
  %tmp_i_i_18 = call fastcc i1 @check(i8 %cp_V_load) nounwind
  br i1 %tmp_i_i_18, label %step.exit.i, label %9

; <label>:9                                       ; preds = %._crit_edge.i.i
  call fastcc void @backtrack() nounwind
  br label %step.exit.i

step.exit.i:                                      ; preds = %9, %._crit_edge.i.i
  %ntiles_V_load_3 = load i8* @ntiles_V, align 1
  %tmp_i1_cast = zext i8 %ntiles_V_load_3 to i9
  %op2_assign_2 = add i9 %tmp_i1_cast, -1
  %cp_V_load_1 = load i8* @cp_V, align 1
  %tmp_i1_cast_19 = sext i8 %cp_V_load_1 to i9
  %tmp_12_i = icmp ult i9 %tmp_i1_cast_19, %op2_assign_2
  %terminate_load_2 = load i1* @terminate, align 1
  %tmp_13_i = xor i1 %terminate_load_2, true
  %or_cond_i = and i1 %tmp_12_i, %tmp_13_i
  br i1 %or_cond_i, label %._crit_edge.i, label %._crit_edge

._crit_edge:                                      ; preds = %step.exit.i, %7
  %terminate_load_1 = load i1* @terminate, align 1
  br i1 %terminate_load_1, label %10, label %11

; <label>:10                                      ; preds = %._crit_edge
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %output_V_V, i32 0)
  br label %.loopexit

; <label>:11                                      ; preds = %._crit_edge
  store volatile i1 false, i1* @seq, align 1
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %output_V_V, i32 1)
  %seq_load_1 = load volatile i1* @seq, align 1
  br i1 %seq_load_1, label %._crit_edge290, label %12

; <label>:12                                      ; preds = %11
  %tmp_V_3 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %input_V_V)
  store i32 %tmp_V_3, i32* %tmp_V_4, align 4
  br label %._crit_edge290

._crit_edge290:                                   ; preds = %12, %11
  %tmp_V_4_load = load i32* %tmp_V_4, align 4
  store volatile i1 true, i1* @seq, align 1
  %tmp_s = icmp eq i32 %tmp_V_4_load, 0
  br i1 %tmp_s, label %.loopexit, label %13

; <label>:13                                      ; preds = %._crit_edge290
  %tmp_4 = icmp eq i32 %tmp_V_4_load, 1
  br i1 %tmp_4, label %.preheader287, label %.loopexit288

.preheader287:                                    ; preds = %.preheader, %13
  %t_V_3 = phi i8 [ 0, %13 ], [ %p_V, %.preheader ]
  %ntiles_V_load_1 = load i8* @ntiles_V, align 1
  %tmp_6 = icmp ult i8 %t_V_3, %ntiles_V_load_1
  %p_V = add i8 %t_V_3, 1
  br i1 %tmp_6, label %.preheader.preheader, label %.loopexit288

.preheader.preheader:                             ; preds = %.preheader287
  %tmp_i3 = zext i8 %t_V_3 to i64
  %pp_tile_V_addr_1 = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i3
  %pp_rot_V_addr_1 = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_i3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %14
  %t_V_4 = phi i3 [ %e_V_1, %14 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i3 %t_V_4, -4
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %e_V_1 = add i3 %t_V_4, 1
  br i1 %exitcond, label %.preheader287, label %14

; <label>:14                                      ; preds = %.preheader
  %tmp_15 = trunc i3 %t_V_4 to i2
  %tile_V = load i8* %pp_tile_V_addr_1, align 2
  %rot_V = load i2* %pp_rot_V_addr_1, align 1
  %r_V_2 = add i2 %tmp_15, %rot_V
  %tmp_10 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V, i2 %r_V_2)
  %tmp_11 = zext i10 %tmp_10 to i64
  %tiles_V_addr_2 = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_11
  %tiles_V_load_1 = load i4* %tiles_V_addr_2, align 1
  %tmp_V_5 = zext i4 %tiles_V_load_1 to i32
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %output_V_V, i32 %tmp_V_5)
  br label %.preheader

.loopexit288:                                     ; preds = %.preheader287, %13
  %seq_load_2 = load volatile i1* @seq, align 1
  br i1 %seq_load_2, label %.loopexit288._crit_edge, label %.backedge.i

.backedge.i:                                      ; preds = %.critedge.i, %16, %15, %.loopexit288
  %tmp_i4 = call fastcc zeroext i1 @right() nounwind
  %terminate_load_3 = load i1* @terminate, align 1
  %or_cond_demorgan_i = or i1 %tmp_i4, %terminate_load_3
  %t_V_8 = load i8* @cp_V, align 1
  br i1 %or_cond_demorgan_i, label %.critedge.i, label %15

; <label>:15                                      ; preds = %.backedge.i
  %tmp_i_i1 = sext i8 %t_V_8 to i64
  %pp_tile_V_addr_2 = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i_i1
  %pp_tile_V_load = load i8* %pp_tile_V_addr_2, align 2
  %tmp_i_i1_21 = zext i8 %pp_tile_V_load to i36
  %r_V_3 = shl i36 1, %tmp_i_i1_21
  %avail_V_load_2 = load i36* @avail_V, align 8
  %tmp_22_i_i = or i36 %avail_V_load_2, %r_V_3
  store i36 %tmp_22_i_i, i36* @avail_V, align 8
  store i8 0, i8* %pp_tile_V_addr_2, align 2
  %tmp_23_i_i = add i8 %t_V_8, -1
  store i8 %tmp_23_i_i, i8* @cp_V, align 1
  %tmp_14 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %tmp_23_i_i, i32 7)
  br i1 %tmp_14, label %16, label %.backedge.i

; <label>:16                                      ; preds = %15
  store i1 true, i1* @terminate, align 1
  br label %.backedge.i

.critedge.i:                                      ; preds = %.backedge.i
  %tmp_i4_22 = call fastcc i1 @check(i8 %t_V_8) nounwind
  %or_cond5_demorgan_i = or i1 %tmp_i4_22, %terminate_load_3
  br i1 %or_cond5_demorgan_i, label %.loopexit288._crit_edge, label %.backedge.i

.loopexit288._crit_edge:                          ; preds = %.critedge.i, %.loopexit288
  store volatile i1 true, i1* @seq, align 1
  br label %6

.loopexit:                                        ; preds = %._crit_edge290, %6, %10
  ret void
}

define weak void @_ssdm_op_SpecFifo(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecWire(...) nounwind {
entry:
  ret void
}

define internal fastcc void @backtrack() nounwind uwtable {
  br label %.backedge

.backedge:                                        ; preds = %check.exit, %2, %1, %0
  %tmp = call fastcc zeroext i1 @right()
  %terminate_load = load i1* @terminate, align 1
  %or_cond_demorgan = or i1 %tmp, %terminate_load
  %t_V = load i8* @cp_V, align 1
  br i1 %or_cond_demorgan, label %.critedge, label %1

; <label>:1                                       ; preds = %.backedge
  %tmp_i = sext i8 %t_V to i64
  %pp_tile_V_addr = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i
  %pp_tile_V_load = load i8* %pp_tile_V_addr, align 2
  %tmp_i_23 = zext i8 %pp_tile_V_load to i36
  %r_V = shl i36 1, %tmp_i_23
  %avail_V_load = load i36* @avail_V, align 8
  %tmp_22_i = or i36 %avail_V_load, %r_V
  store i36 %tmp_22_i, i36* @avail_V, align 8
  store i8 0, i8* %pp_tile_V_addr, align 2
  %tmp_23_i = add i8 %t_V, -1
  store i8 %tmp_23_i, i8* @cp_V, align 1
  %tmp_20 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %tmp_23_i, i32 7)
  br i1 %tmp_20, label %2, label %.backedge

; <label>:2                                       ; preds = %1
  store i1 true, i1* @terminate, align 1
  br label %.backedge

.critedge:                                        ; preds = %.backedge
  %tmp_i_i = icmp eq i8 %t_V, 0
  br i1 %tmp_i_i, label %.critedge.i, label %3

; <label>:3                                       ; preds = %.critedge
  %tmp_i_i_cast = sext i8 %t_V to i10
  %side_V_load = load i8* @side_V, align 1
  %tmp_26_i_i_cast = zext i8 %side_V_load to i10
  %tmp_27_i_i = srem i10 %tmp_i_i_cast, %tmp_26_i_i_cast
  %r_V_4 = trunc i10 %tmp_27_i_i to i8
  %tmp_28_i_i = icmp eq i8 %r_V_4, 0
  br i1 %tmp_28_i_i, label %.critedge.i, label %left_colour_match.exit.i

left_colour_match.exit.i:                         ; preds = %3
  %this_assign_i_i = add i8 %t_V, -1
  %tmp_i_i_i = zext i8 %this_assign_i_i to i64
  %pp_tile_V_addr_3 = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i_i_i
  %tile_V = load i8* %pp_tile_V_addr_3, align 2
  %pp_rot_V_addr = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_i_i_i
  %rot_V = load i2* %pp_rot_V_addr, align 1
  %r_V_9_i = add i2 %rot_V, 1
  %tmp_s = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V, i2 %r_V_9_i)
  %tmp_12 = zext i10 %tmp_s to i64
  %tiles_V_addr = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_12
  %tiles_V_load = load i4* %tiles_V_addr, align 1
  %tmp_i2_i_i = zext i8 %t_V to i64
  %pp_tile_V_addr_4 = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i2_i_i
  %tile_V_1 = load i8* %pp_tile_V_addr_4, align 2
  %pp_rot_V_addr_2 = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_i2_i_i
  %rot_V_1 = load i2* %pp_rot_V_addr_2, align 1
  %r_V_10_i = add i2 %rot_V_1, -1
  %tmp_13 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V_1, i2 %r_V_10_i)
  %tmp_14 = zext i10 %tmp_13 to i64
  %tiles_V_addr_3 = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_14
  %tiles_V_load_2 = load i4* %tiles_V_addr_3, align 1
  %tmp_29_i_i = icmp eq i4 %tiles_V_load, %tiles_V_load_2
  br i1 %tmp_29_i_i, label %.critedge.i, label %check.exit

.critedge.i:                                      ; preds = %left_colour_match.exit.i, %3, %.critedge
  %side_V_load_1 = load i8* @side_V, align 1
  %up_V = sub i8 %t_V, %side_V_load_1
  %tmp_22 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %up_V, i32 7)
  br i1 %tmp_22, label %check.exit, label %4

; <label>:4                                       ; preds = %.critedge.i
  %tmp_i_i3_i = zext i8 %up_V to i64
  %pp_tile_V_addr_5 = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i_i3_i
  %tile_V_2 = load i8* %pp_tile_V_addr_5, align 2
  %pp_rot_V_addr_3 = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_i_i3_i
  %rot_V_2 = load i2* %pp_rot_V_addr_3, align 1
  %r_V_11_i = xor i2 %rot_V_2, -2
  %tmp_15 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V_2, i2 %r_V_11_i)
  %tmp_16 = zext i10 %tmp_15 to i64
  %tiles_V_addr_4 = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_16
  %tiles_V_load_3 = load i4* %tiles_V_addr_4, align 1
  %tmp_i3_i_i = zext i8 %t_V to i64
  %pp_tile_V_addr_6 = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i3_i_i
  %tile_V_3 = load i8* %pp_tile_V_addr_6, align 2
  %pp_rot_V_addr_4 = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_i3_i_i
  %rot_V_3 = load i2* %pp_rot_V_addr_4, align 1
  %tmp_17 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V_3, i2 %rot_V_3)
  %tmp_18 = zext i10 %tmp_17 to i64
  %tiles_V_addr_5 = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_18
  %tiles_V_load_4 = load i4* %tiles_V_addr_5, align 1
  %tmp_i6_i = icmp eq i4 %tiles_V_load_3, %tiles_V_load_4
  br label %check.exit

check.exit:                                       ; preds = %4, %.critedge.i, %left_colour_match.exit.i
  %tmp_i1 = phi i1 [ false, %left_colour_match.exit.i ], [ %tmp_i6_i, %4 ], [ true, %.critedge.i ]
  %or_cond5_demorgan = or i1 %tmp_i1, %terminate_load
  br i1 %or_cond5_demorgan, label %.critedge1, label %.backedge

.critedge1:                                       ; preds = %check.exit
  ret void
}

define internal fastcc zeroext i1 @right() nounwind uwtable {
  %cp_V_load = load i8* @cp_V, align 1
  %tmp = sext i8 %cp_V_load to i64
  %pp_rot_V_addr = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp
  %pp_rot_V_load = load i2* %pp_rot_V_addr, align 1
  %tmp_s = icmp eq i2 %pp_rot_V_load, -1
  br i1 %tmp_s, label %2, label %1

; <label>:1                                       ; preds = %0
  %tmp_2 = add i2 %pp_rot_V_load, 1
  store i2 %tmp_2, i2* %pp_rot_V_addr, align 1
  br label %.loopexit

; <label>:2                                       ; preds = %0
  %pp_tile_V_addr = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp
  %pp_tile_V_load = load i8* %pp_tile_V_addr, align 2
  %tmp_1 = zext i8 %pp_tile_V_load to i36
  %r_V = shl i36 1, %tmp_1
  %avail_V_load = load i36* @avail_V, align 8
  %possible_V = or i36 %avail_V_load, %r_V
  store i36 %possible_V, i36* @avail_V, align 8
  %left_V = add i8 %cp_V_load, -1
  %tmp_i = icmp eq i8 %cp_V_load, 0
  br i1 %tmp_i, label %left_possible_mask.exit_ifconv, label %3

; <label>:3                                       ; preds = %2
  %side_V_load = load i8* @side_V, align 1
  %tmp_tr_i = sext i8 %left_V to i9
  %tmp_40_tr_i = zext i8 %side_V_load to i9
  %tmp_1_i = sdiv i9 %tmp_tr_i, %tmp_40_tr_i
  %r_V_5 = trunc i9 %tmp_1_i to i8
  %tmp_42_tr_i = sext i8 %cp_V_load to i9
  %tmp_2_i = sdiv i9 %tmp_42_tr_i, %tmp_40_tr_i
  %r_V_8 = trunc i9 %tmp_2_i to i8
  %tmp_i_24 = icmp eq i8 %r_V_5, %r_V_8
  br i1 %tmp_i_24, label %4, label %left_possible_mask.exit_ifconv

; <label>:4                                       ; preds = %3
  %tmp_i_i = zext i8 %left_V to i64
  %pp_tile_V_addr_3 = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i_i
  %tile_V = load i8* %pp_tile_V_addr_3, align 2
  %pp_rot_V_addr_2 = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_i_i
  %rot_V = load i2* %pp_rot_V_addr_2, align 1
  %r_V_6 = add i2 %rot_V, 1
  %tmp_19 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V, i2 %r_V_6)
  %tmp_20 = zext i10 %tmp_19 to i64
  %tiles_V_addr = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_20
  %tiles_V_load = load i4* %tiles_V_addr, align 1
  %tmp_30_i = zext i4 %tiles_V_load to i64
  %colours_V_addr = getelementptr [10 x i36]* @colours_V, i64 0, i64 %tmp_30_i
  %colours_V_load = load i36* %colours_V_addr, align 8
  br label %left_possible_mask.exit_ifconv

left_possible_mask.exit_ifconv:                   ; preds = %4, %3, %2
  %agg_result_V_i = phi i36 [ %colours_V_load, %4 ], [ -1, %2 ], [ -1, %3 ]
  %side_V_load_1 = load i8* @side_V, align 1
  %up_V = sub i8 %cp_V_load, %side_V_load_1
  %tmp_26 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %up_V, i32 7)
  %tmp_i_i2 = zext i8 %up_V to i64
  %pp_tile_V_addr_4 = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i_i2
  %tile_V_4 = load i8* %pp_tile_V_addr_4, align 2
  %pp_rot_V_addr_3 = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_i_i2
  %rot_V_4 = load i2* %pp_rot_V_addr_3, align 1
  %r_V_7 = xor i2 %rot_V_4, -2
  %tmp_21 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V_4, i2 %r_V_7)
  %tmp_22 = zext i10 %tmp_21 to i64
  %tiles_V_addr_3 = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_22
  %tiles_V_load_2 = load i4* %tiles_V_addr_3, align 1
  %tmp_i5 = zext i4 %tiles_V_load_2 to i64
  %colours_V_addr_2 = getelementptr [10 x i36]* @colours_V, i64 0, i64 %tmp_i5
  %colours_V_load_1 = load i36* %colours_V_addr_2, align 8
  %agg_result_V_i1 = select i1 %tmp_26, i36 -1, i36 %colours_V_load_1
  %ntiles_V_load = load i8* @ntiles_V, align 1
  %tmp1 = and i36 %agg_result_V_i, %possible_V
  br label %._crit_edge

._crit_edge:                                      ; preds = %5, %left_possible_mask.exit_ifconv
  %p_058_0_in = phi i8 [ %pp_tile_V_load, %left_possible_mask.exit_ifconv ], [ %t_V, %5 ]
  %t_V = add i8 %p_058_0_in, 1
  %tmp_3 = icmp ult i8 %t_V, %ntiles_V_load
  br i1 %tmp_3, label %5, label %.loopexit

; <label>:5                                       ; preds = %._crit_edge
  %tmp_4 = zext i8 %t_V to i36
  %r_V_10 = shl i36 1, %tmp_4
  %tmp2 = and i36 %agg_result_V_i1, %r_V_10
  %r_V_2 = and i36 %tmp2, %tmp1
  %tmp_5 = icmp eq i36 %r_V_2, 0
  br i1 %tmp_5, label %._crit_edge, label %6

; <label>:6                                       ; preds = %5
  store i8 %t_V, i8* %pp_tile_V_addr, align 2
  store i2 0, i2* %pp_rot_V_addr, align 1
  %p_s = xor i36 %r_V_10, -1
  %tmp_6 = and i36 %possible_V, %p_s
  store i36 %tmp_6, i36* @avail_V, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %6, %1
  %p_0 = phi i1 [ true, %1 ], [ true, %6 ], [ false, %._crit_edge ]
  ret i1 %p_0
}

define internal fastcc i1 @check(i8 %p_V) readonly {
  %p_V_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %p_V)
  %tmp_i = icmp eq i8 %p_V_read, 0
  br i1 %tmp_i, label %.critedge, label %1

; <label>:1                                       ; preds = %0
  %tmp_i_cast = sext i8 %p_V_read to i10
  %side_V_load = load i8* @side_V, align 1
  %tmp_26_i_cast = zext i8 %side_V_load to i10
  %tmp_27_i = srem i10 %tmp_i_cast, %tmp_26_i_cast
  %r_V = trunc i10 %tmp_27_i to i8
  %tmp_28_i = icmp eq i8 %r_V, 0
  br i1 %tmp_28_i, label %.critedge, label %left_colour_match.exit

left_colour_match.exit:                           ; preds = %1
  %this_assign_i = add i8 %p_V_read, -1
  %tmp_i_i = zext i8 %this_assign_i to i64
  %pp_tile_V_addr = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i_i
  %tile_V = load i8* %pp_tile_V_addr, align 2
  %pp_rot_V_addr = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_i_i
  %rot_V = load i2* %pp_rot_V_addr, align 1
  %r_V_9 = add i2 %rot_V, 1
  %tmp = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V, i2 %r_V_9)
  %tmp_23 = zext i10 %tmp to i64
  %tiles_V_addr = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_23
  %tiles_V_load = load i4* %tiles_V_addr, align 1
  %tmp_i2_i = zext i8 %p_V_read to i64
  %pp_tile_V_addr_5 = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i2_i
  %tile_V_5 = load i8* %pp_tile_V_addr_5, align 2
  %pp_rot_V_addr_4 = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_i2_i
  %rot_V_5 = load i2* %pp_rot_V_addr_4, align 1
  %r_V_s = add i2 %rot_V_5, -1
  %tmp_24 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V_5, i2 %r_V_s)
  %tmp_25 = zext i10 %tmp_24 to i64
  %tiles_V_addr_4 = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_25
  %tiles_V_load_3 = load i4* %tiles_V_addr_4, align 1
  %tmp_29_i = icmp eq i4 %tiles_V_load, %tiles_V_load_3
  br i1 %tmp_29_i, label %.critedge, label %._crit_edge

.critedge:                                        ; preds = %left_colour_match.exit, %1, %0
  %side_V_load_2 = load i8* @side_V, align 1
  %up_V = sub i8 %p_V_read, %side_V_load_2
  %tmp_32 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %up_V, i32 7)
  br i1 %tmp_32, label %._crit_edge, label %2

; <label>:2                                       ; preds = %.critedge
  %tmp_i_i3 = zext i8 %up_V to i64
  %pp_tile_V_addr_6 = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i_i3
  %tile_V_6 = load i8* %pp_tile_V_addr_6, align 2
  %pp_rot_V_addr_5 = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_i_i3
  %rot_V_6 = load i2* %pp_rot_V_addr_5, align 1
  %r_V_1 = xor i2 %rot_V_6, -2
  %tmp_26 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V_6, i2 %r_V_1)
  %tmp_27 = zext i10 %tmp_26 to i64
  %tiles_V_addr_5 = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_27
  %tiles_V_load_4 = load i4* %tiles_V_addr_5, align 1
  %tmp_i3_i = zext i8 %p_V_read to i64
  %pp_tile_V_addr_7 = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i3_i
  %tile_V_7 = load i8* %pp_tile_V_addr_7, align 2
  %pp_rot_V_addr_6 = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_i3_i
  %rot_V_7 = load i2* %pp_rot_V_addr_6, align 1
  %tmp_28 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V_7, i2 %rot_V_7)
  %tmp_29 = zext i10 %tmp_28 to i64
  %tiles_V_addr_6 = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_29
  %tiles_V_load_5 = load i4* %tiles_V_addr_6, align 1
  %tmp_i6 = icmp eq i4 %tiles_V_load_4, %tiles_V_load_5
  br label %._crit_edge

._crit_edge:                                      ; preds = %2, %.critedge, %left_colour_match.exit
  %tmp_s = phi i1 [ false, %left_colour_match.exit ], [ %tmp_i6, %2 ], [ true, %.critedge ]
  ret i1 %tmp_s
}

define internal fastcc zeroext i1 @down() nounwind uwtable {
  %ntiles_V_load = load i8* @ntiles_V, align 1
  %tmp_cast = zext i8 %ntiles_V_load to i9
  %op2_assign_4 = add i9 %tmp_cast, -1
  %t_V = load i8* @cp_V, align 1
  %tmp_cast_25 = sext i8 %t_V to i9
  %tmp_7 = icmp ult i9 %tmp_cast_25, %op2_assign_4
  br i1 %tmp_7, label %1, label %.loopexit

; <label>:1                                       ; preds = %0
  %p_4 = add i8 %t_V, 1
  store i8 %p_4, i8* @cp_V, align 1
  %possible_V = load i36* @avail_V, align 8
  %tmp_i = icmp eq i8 %p_4, 0
  br i1 %tmp_i, label %left_possible_mask.exit_ifconv, label %2

; <label>:2                                       ; preds = %1
  %side_V_load = load i8* @side_V, align 1
  %tmp_40_tr_i = zext i8 %side_V_load to i9
  %tmp_1_i = sdiv i9 %tmp_cast_25, %tmp_40_tr_i
  %r_V_11 = trunc i9 %tmp_1_i to i8
  %tmp_42_tr_i = sext i8 %p_4 to i9
  %tmp_2_i = sdiv i9 %tmp_42_tr_i, %tmp_40_tr_i
  %r_V_12 = trunc i9 %tmp_2_i to i8
  %tmp_i_26 = icmp eq i8 %r_V_11, %r_V_12
  br i1 %tmp_i_26, label %3, label %left_possible_mask.exit_ifconv

; <label>:3                                       ; preds = %2
  %tmp_i_i = zext i8 %t_V to i64
  %pp_tile_V_addr_8 = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i_i
  %tile_V = load i8* %pp_tile_V_addr_8, align 2
  %pp_rot_V_addr_7 = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_i_i
  %rot_V = load i2* %pp_rot_V_addr_7, align 1
  %r_V_s = add i2 %rot_V, 1
  %tmp = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V, i2 %r_V_s)
  %tmp_30 = zext i10 %tmp to i64
  %tiles_V_addr = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_30
  %tiles_V_load = load i4* %tiles_V_addr, align 1
  %tmp_30_i = zext i4 %tiles_V_load to i64
  %colours_V_addr = getelementptr [10 x i36]* @colours_V, i64 0, i64 %tmp_30_i
  %colours_V_load = load i36* %colours_V_addr, align 8
  br label %left_possible_mask.exit_ifconv

left_possible_mask.exit_ifconv:                   ; preds = %3, %2, %1
  %agg_result_V_i = phi i36 [ %colours_V_load, %3 ], [ -1, %1 ], [ -1, %2 ]
  %side_V_load_3 = load i8* @side_V, align 1
  %up_V = sub i8 %p_4, %side_V_load_3
  %tmp_36 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %up_V, i32 7)
  %tmp_i_i3 = zext i8 %up_V to i64
  %pp_tile_V_addr_9 = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i_i3
  %tile_V_8 = load i8* %pp_tile_V_addr_9, align 2
  %pp_rot_V_addr_8 = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_i_i3
  %rot_V_8 = load i2* %pp_rot_V_addr_8, align 1
  %r_V_2 = xor i2 %rot_V_8, -2
  %tmp_31 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V_8, i2 %r_V_2)
  %tmp_32 = zext i10 %tmp_31 to i64
  %tiles_V_addr_7 = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_32
  %tiles_V_load_6 = load i4* %tiles_V_addr_7, align 1
  %tmp_i7 = zext i4 %tiles_V_load_6 to i64
  %colours_V_addr_3 = getelementptr [10 x i36]* @colours_V, i64 0, i64 %tmp_i7
  %colours_V_load_2 = load i36* %colours_V_addr_3, align 8
  %agg_result_V_i2 = select i1 %tmp_36, i36 -1, i36 %colours_V_load_2
  %tmp2 = and i36 %agg_result_V_i, %possible_V
  br label %4

; <label>:4                                       ; preds = %_ifconv, %left_possible_mask.exit_ifconv
  %op2_assign = phi i8 [ 0, %left_possible_mask.exit_ifconv ], [ %t, %_ifconv ]
  %tmp_9 = icmp ult i8 %op2_assign, %ntiles_V_load
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 255, i64 0) nounwind
  %t = add i8 %op2_assign, 1
  br i1 %tmp_9, label %_ifconv, label %.loopexit

_ifconv:                                          ; preds = %4
  %tmp_s = zext i8 %op2_assign to i36
  %r_V_13 = shl i36 1, %tmp_s
  %tmp3 = and i36 %agg_result_V_i2, %r_V_13
  %r_V = and i36 %tmp3, %tmp2
  %tmp_2 = icmp eq i36 %r_V, 0
  br i1 %tmp_2, label %4, label %_ifconv1

_ifconv1:                                         ; preds = %_ifconv
  %tmp_3 = sext i8 %p_4 to i64
  %pp_tile_V_addr = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_3
  store i8 %op2_assign, i8* %pp_tile_V_addr, align 2
  %pp_rot_V_addr = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_3
  store i2 0, i2* %pp_rot_V_addr, align 1
  %p_3 = xor i36 %r_V_13, -1
  %tmp_4 = and i36 %possible_V, %p_3
  store i36 %tmp_4, i36* @avail_V, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %4, %_ifconv1, %0
  %p_s = phi i1 [ true, %_ifconv1 ], [ false, %0 ], [ false, %4 ]
  ret i1 %p_s
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8, i2) nounwind readnone {
entry:
  %empty = zext i8 %0 to i10
  %empty_27 = zext i2 %1 to i10
  %empty_28 = trunc i10 %empty to i8
  %empty_29 = call i8 @_ssdm_op_PartSelect.i8.i10.i32.i32(i10 %empty_27, i32 2, i32 9)
  %empty_30 = or i8 %empty_28, %empty_29
  %empty_31 = call i10 @_ssdm_op_PartSet.i10.i10.i8.i32.i32(i10 %empty_27, i8 %empty_30, i32 2, i32 9)
  ret i10 %empty_31
}

define weak i35 @_ssdm_op_PartSelect.i35.i36.i32.i32(i36, i32, i32) nounwind readnone {
entry:
  %empty = call i36 @llvm.part.select.i36(i36 %0, i32 %1, i32 %2)
  %empty_32 = trunc i36 %empty to i35
  ret i35 %empty_32
}

define weak i36 @_ssdm_op_BitConcatenate.i36.i35.i1(i35, i1) nounwind readnone {
entry:
  %empty = zext i35 %0 to i36
  %empty_33 = zext i1 %1 to i36
  %empty_34 = trunc i36 %empty to i35
  %empty_35 = call i35 @_ssdm_op_PartSelect.i35.i36.i32.i32(i36 %empty_33, i32 1, i32 35)
  %empty_36 = or i35 %empty_34, %empty_35
  %empty_37 = call i36 @_ssdm_op_PartSet.i36.i36.i35.i32.i32(i36 %empty_33, i35 %empty_36, i32 1, i32 35)
  ret i36 %empty_37
}

define weak i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  ret i32 %empty
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1)
  ret void
}

define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_38 = and i32 %0, %empty
  %empty_39 = icmp ne i32 %empty_38, 0
  ret i1 %empty_39
}

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_40 = shl i8 1, %empty
  %empty_41 = and i8 %0, %empty_40
  %empty_42 = icmp ne i8 %empty_41, 0
  ret i1 %empty_42
}

declare i32 @_autotb_FifoRead_i32(i32*)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i36 @llvm.part.select.i36(i36, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i4 @_ssdm_op_PartSelect.i4.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i32 @_ssdm_op_BitConcatenate.i32.i30.i2(i30, i2) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_PartSelect.i8.i10.i32.i32(i10, i32, i32) nounwind readnone {
entry:
  %empty = call i10 @llvm.part.select.i10(i10 %0, i32 %1, i32 %2)
  %empty_43 = trunc i10 %empty to i8
  ret i8 %empty_43
}

declare i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9, i32, i32) nounwind readnone

define weak i10 @_ssdm_op_PartSet.i10.i10.i8.i32.i32(i10, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i10 @llvm.part.set.i10.i8(i10 %0, i8 %1, i32 %2, i32 %3)
  ret i10 %empty
}

define weak i36 @_ssdm_op_PartSet.i36.i36.i35.i32.i32(i36, i35, i32, i32) nounwind readnone {
entry:
  %empty = call i36 @llvm.part.set.i36.i35(i36 %0, i35 %1, i32 %2, i32 %3)
  ret i36 %empty
}

declare i10 @llvm.part.select.i10(i10, i32, i32) nounwind readnone

declare i10 @llvm.part.set.i10.i8(i10, i8, i32, i32) nounwind readnone

declare i36 @llvm.part.set.i36.i35(i36, i35, i32, i32) nounwind readnone

!llvm.map.gv = !{!0, !7}

!0 = metadata !{metadata !1, i1* @seq}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 0, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"seq", metadata !5, metadata !"bool"}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8, [1 x i32]* @llvm_global_ctors_0}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 31, metadata !10}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !""}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 31, metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !"input.V.V", metadata !5, metadata !"uint32"}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 0, i32 31, metadata !18}
!18 = metadata !{metadata !19}
!19 = metadata !{metadata !"output.V.V", metadata !5, metadata !"uint32"}
