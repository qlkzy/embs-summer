; ModuleID = '/usr/userfs/d/drm511/embs/embs-summer/hls/tiler/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pp_tile_V = internal unnamed_addr global [36 x i8] zeroinitializer
@pp_rot_V = internal unnamed_addr global [36 x i2] zeroinitializer
@avail_V = internal unnamed_addr global i36 0
@tiles_V = internal global [144 x i4] zeroinitializer
@colours_V = internal unnamed_addr global [10 x i36] zeroinitializer
@cp_V = internal unnamed_addr global i8 0
@side_V = internal unnamed_addr global i8 0
@p_str = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1
@p_str9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str10 = private unnamed_addr constant [11 x i8] c"AXI4Stream\00", align 1
@p_str11 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [9 x i8] c"toplevel\00"

define void @toplevel(i32* %input_V_V, i32* %output_V_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %input_V_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %output_V_V), !map !11
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecFifo(i32* %input_V_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str9) nounwind
  call void (...)* @_ssdm_op_SpecFifo(i32* %output_V_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, [1 x i8]* @p_str9) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32* %input_V_V, [1 x i8]* @p_str9, [11 x i8]* @p_str10, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecIFCore(i32* %output_V_V, [1 x i8]* @p_str9, [11 x i8]* @p_str10, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9, [1 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecWire(i32 0, [13 x i8]* @p_str11, i32 0, i32 0, i32 0, [1 x i8]* @p_str9) nounwind
  store i8 0, i8* @cp_V, align 1
  br label %1

; <label>:1                                       ; preds = %_ifconv, %0
  %op2_assign = phi i6 [ 0, %0 ], [ %t, %_ifconv ]
  %exitcond_i = icmp eq i6 %op2_assign, -28
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 36, i64 36, i64 36)
  %t = add i6 %op2_assign, 1
  br i1 %exitcond_i, label %init.exit, label %_ifconv

_ifconv:                                          ; preds = %1
  %tmp_i = zext i6 %op2_assign to i36
  %r_V_2 = shl i36 1, %tmp_i
  %avail_V_load = load i36* @avail_V, align 8
  %tmp_9_i = or i36 %avail_V_load, %r_V_2
  store i36 %tmp_9_i, i36* @avail_V, align 8
  br label %1

init.exit:                                        ; preds = %1
  %tmp_V = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %input_V_V)
  %tmp_3 = trunc i32 %tmp_V to i8
  store i8 %tmp_3, i8* @side_V, align 1
  br label %.loopexit7

.loopexit7:                                       ; preds = %.preheader219, %init.exit
  %t_V = phi i8 [ 0, %init.exit ], [ %t_V_1, %.preheader219 ]
  %side_V_load = load i8* @side_V, align 1
  %lhs_V = zext i8 %side_V_load to i16
  %r_V = mul i16 %lhs_V, %lhs_V
  %tmp_cast = zext i8 %t_V to i16
  %tmp_2 = icmp ult i16 %tmp_cast, %r_V
  %t_V_1 = add i8 %t_V, 1
  br i1 %tmp_2, label %.preheader219, label %.preheader20

.preheader219:                                    ; preds = %.loopexit7, %2
  %t_V_2 = phi i3 [ %e_V, %2 ], [ 0, %.loopexit7 ]
  %exitcond1 = icmp eq i3 %t_V_2, -4
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %e_V = add i3 %t_V_2, 1
  br i1 %exitcond1, label %.loopexit7, label %2

; <label>:2                                       ; preds = %.preheader219
  %tmp_V_1 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %input_V_V)
  %tmp_8 = trunc i32 %tmp_V_1 to i4
  %tmp_9_trn_cast = zext i3 %t_V_2 to i11
  %tmp = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %t_V, i2 0)
  %tiles_V_addr5_cast = zext i10 %tmp to i11
  %tiles_V_addr6 = add i11 %tiles_V_addr5_cast, %tmp_9_trn_cast
  %tmp_1 = zext i11 %tiles_V_addr6 to i64
  %tiles_V_addr = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_1
  store i4 %tmp_8, i4* %tiles_V_addr, align 1
  br label %.preheader219

.preheader20:                                     ; preds = %.preheader.i, %.loopexit7
  %op2_assign_1 = phi i32 [ 0, %.loopexit7 ], [ %t_1, %.preheader.i ]
  %side_V_load_2 = load i8* @side_V, align 1
  %lhs_V_1 = zext i8 %side_V_load_2 to i16
  %r_V_3 = mul i16 %lhs_V_1, %lhs_V_1
  %tmp_i5_cast = zext i16 %r_V_3 to i32
  %tmp_1_i = icmp ult i32 %op2_assign_1, %tmp_i5_cast
  %t_1 = add nsw i32 %op2_assign_1, 1
  br i1 %tmp_1_i, label %.preheader.preheader.i, label %mapcolours.exit

.preheader.preheader.i:                           ; preds = %.preheader20
  %tmp_9 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %op2_assign_1, i32 31)
  %tmp_3_i = zext i32 %op2_assign_1 to i36
  %tmp_4_i = shl i36 1, %tmp_3_i
  %tmp_5_i6 = sub nsw i32 0, %op2_assign_1
  %tmp_7_i8 = lshr i32 1, %tmp_5_i6
  %tmp_7_i8_cast = zext i32 %tmp_7_i8 to i36
  %r_V_4 = select i1 %tmp_9, i36 %tmp_7_i8_cast, i36 %tmp_4_i
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZlsILi36ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit.i12, %.preheader.preheader.i
  %e_i = phi i3 [ %e, %_ZlsILi36ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit.i12 ], [ 0, %.preheader.preheader.i ]
  %exitcond_i9 = icmp eq i3 %e_i, -4
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %e = add i3 %e_i, 1
  br i1 %exitcond_i9, label %.preheader20, label %_ZlsILi36ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit.i12

_ZlsILi36ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit.i12: ; preds = %.preheader.i
  %tmp_8_i1_trn = zext i3 %e_i to i32
  %tmp_10 = shl i32 %op2_assign_1, 2
  %tiles_V_addr4 = add i32 %tmp_10, %tmp_8_i1_trn
  %tmp_4 = sext i32 %tiles_V_addr4 to i64
  %tiles_V_addr_1 = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_4
  %tiles_V_load = load i4* %tiles_V_addr_1, align 1
  %tmp_9_i1 = zext i4 %tiles_V_load to i64
  %colours_V_addr = getelementptr [10 x i36]* @colours_V, i64 0, i64 %tmp_9_i1
  %colours_V_load = load i36* %colours_V_addr, align 8
  %tmp_10_i = or i36 %colours_V_load, %r_V_4
  store i36 %tmp_10_i, i36* %colours_V_addr, align 8
  br label %.preheader.i

mapcolours.exit:                                  ; preds = %.preheader20
  call fastcc void @solve()
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %mapcolours.exit
  %t_V_3 = phi i8 [ 0, %mapcolours.exit ], [ %p_V, %.preheader ]
  %side_V_load_1 = load i8* @side_V, align 1
  %lhs_V_2 = zext i8 %side_V_load_1 to i16
  %r_V_1 = mul i16 %lhs_V_2, %lhs_V_2
  %tmp_5_cast = zext i8 %t_V_3 to i16
  %tmp_7 = icmp ult i16 %tmp_5_cast, %r_V_1
  %p_V = add i8 %t_V_3, 1
  br i1 %tmp_7, label %.preheader.preheader, label %4

.preheader.preheader:                             ; preds = %.loopexit
  %tmp_i1 = zext i8 %t_V_3 to i64
  %pp_tile_V_addr = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i1
  %pp_rot_V_addr = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %3
  %t_V_4 = phi i3 [ %e_V_1, %3 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i3 %t_V_4, -4
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %e_V_1 = add i3 %t_V_4, 1
  br i1 %exitcond, label %.loopexit, label %3

; <label>:3                                       ; preds = %.preheader
  %tmp_11 = trunc i3 %t_V_4 to i2
  %tile_V = load i8* %pp_tile_V_addr, align 2
  %rot_V = load i2* %pp_rot_V_addr, align 1
  %r_V_5 = add i2 %tmp_11, %rot_V
  %tmp_5 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V, i2 %r_V_5)
  %tmp_6 = zext i10 %tmp_5 to i64
  %tiles_V_addr_2 = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_6
  %tiles_V_load_1 = load i4* %tiles_V_addr_2, align 1
  %tmp_V_2 = zext i4 %tiles_V_load_1 to i32
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %output_V_V, i32 %tmp_V_2)
  br label %.preheader

; <label>:4                                       ; preds = %.loopexit
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

define internal fastcc void @solve() nounwind uwtable {
_ZlsILi36ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit:
  %avail_V_load = load i36* @avail_V, align 8
  %tmp_7 = call i35 @_ssdm_op_PartSelect.i35.i36.i32.i32(i36 %avail_V_load, i32 1, i32 35)
  %avail_V_assign = call i36 @_ssdm_op_BitConcatenate.i36.i35.i1(i35 %tmp_7, i1 false)
  store i36 %avail_V_assign, i36* @avail_V, align 8
  br label %step.exit

step.exit:                                        ; preds = %1, %0, %3, %_ZlsILi36ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit
  %side_V_load = load i8* @side_V, align 1
  %lhs_V = zext i8 %side_V_load to i16
  %r_V = mul i16 %lhs_V, %lhs_V
  %cp_V_load = load i8* @cp_V, align 1
  %tmp_cast = zext i8 %cp_V_load to i16
  %tmp_2 = icmp ult i16 %tmp_cast, %r_V
  br i1 %tmp_2, label %0, label %4

; <label>:0                                       ; preds = %step.exit
  call fastcc void @down() nounwind
  %side_V_load_3 = load i8* @side_V, align 1
  %lhs_V_3 = zext i8 %side_V_load_3 to i16
  %r_V_5 = mul i16 %lhs_V_3, %lhs_V_3
  %cp_V_load_1 = load i8* @cp_V, align 1
  %tmp_i_cast = zext i8 %cp_V_load_1 to i17
  %tmp_i_cast_16 = zext i16 %r_V_5 to i17
  %tmp_15_i = icmp eq i17 %tmp_i_cast, %tmp_i_cast_16
  br i1 %tmp_15_i, label %step.exit, label %1

; <label>:1                                       ; preds = %0
  %left_V = add i8 %cp_V_load_1, -1
  %up_V = sub i8 %cp_V_load_1, %side_V_load_3
  %tmp_tr_i_i = sext i8 %left_V to i9
  %tmp_tr_i_i_17 = zext i8 %side_V_load_3 to i9
  %tmp_i_i1 = sdiv i9 %tmp_tr_i_i, %tmp_tr_i_i_17
  %r_V_6 = trunc i9 %tmp_i_i1 to i8
  %r_V_8 = udiv i8 %cp_V_load_1, %side_V_load_3
  %tmp_i_i2_cast = sext i8 %r_V_6 to i9
  %tmp_60_i_i_cast = zext i8 %r_V_8 to i9
  %tmp_61_i_i = icmp eq i9 %tmp_i_i2_cast, %tmp_60_i_i_cast
  %this_assign_i_i = select i1 %tmp_61_i_i, i8 %left_V, i8 -1
  %tmp_25 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %this_assign_i_i, i32 7)
  %tmp_i_i_i = zext i8 %this_assign_i_i to i64
  %pp_tile_V_addr_1 = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i_i_i
  %tile_V = load i8* %pp_tile_V_addr_1, align 2
  %pp_rot_V_addr = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_i_i_i
  %rot_V = load i2* %pp_rot_V_addr, align 1
  %r_V_14_i = add i2 %rot_V, 1
  %tmp_8 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V, i2 %r_V_14_i)
  %tmp_9 = zext i10 %tmp_8 to i64
  %tiles_V_addr = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_9
  %tiles_V_load = load i4* %tiles_V_addr, align 1
  %tmp_63_i_i_cast = zext i4 %tiles_V_load to i5
  %p_i_i = select i1 %tmp_25, i5 -1, i5 %tmp_63_i_i_cast
  %p_i_i_cast = sext i5 %p_i_i to i8
  %tmp_26 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %up_V, i32 7)
  %tmp_i23_i_i = zext i8 %up_V to i64
  %pp_tile_V_addr_2 = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i23_i_i
  %tile_V_1 = load i8* %pp_tile_V_addr_2, align 2
  %pp_rot_V_addr_1 = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_i23_i_i
  %rot_V_1 = load i2* %pp_rot_V_addr_1, align 1
  %r_V_15_i = xor i2 %rot_V_1, -2
  %tmp_s = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V_1, i2 %r_V_15_i)
  %tmp_3 = zext i10 %tmp_s to i64
  %tiles_V_addr_3 = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_3
  %tiles_V_load_2 = load i4* %tiles_V_addr_3, align 1
  %tmp_65_i_i_cast = zext i4 %tiles_V_load_2 to i5
  %p_5_i_i = select i1 %tmp_26, i5 -1, i5 %tmp_65_i_i_cast
  %p_5_i_i_cast = sext i5 %p_5_i_i to i8
  %tmp_i2_i = zext i8 %cp_V_load_1 to i64
  %pp_tile_V_addr_3 = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i2_i
  %tile_V_2 = load i8* %pp_tile_V_addr_3, align 2
  %pp_rot_V_addr_2 = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_i2_i
  %rot_V_2 = load i2* %pp_rot_V_addr_2, align 1
  %r_V_16_i = add i2 %rot_V_2, -1
  %tmp_4 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V_2, i2 %r_V_16_i)
  %tmp_5 = zext i10 %tmp_4 to i64
  %tiles_V_addr_4 = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_5
  %tiles_V_load_3 = load i4* %tiles_V_addr_4, align 1
  %tmp_i3_cast = zext i4 %tiles_V_load_3 to i9
  %tmp_23_i_cast = zext i8 %p_i_i_cast to i9
  %tmp_24_i = icmp eq i9 %tmp_i3_cast, %tmp_23_i_cast
  %tmp_6 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V_2, i2 %rot_V_2)
  %tmp_10 = zext i10 %tmp_6 to i64
  %tiles_V_addr_5 = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_10
  %tiles_V_load_4 = load i4* %tiles_V_addr_5, align 1
  %tmp_26_i_cast = zext i4 %tiles_V_load_4 to i9
  %tmp_27_i_cast = zext i8 %p_5_i_i_cast to i9
  %not_sel_tmp1_i = or i1 %tmp_24_i, %tmp_25
  %sel_tmp3_i_not = icmp eq i9 %tmp_26_i_cast, %tmp_27_i_cast
  %tmp = or i1 %tmp_26, %sel_tmp3_i_not
  %p_i = and i1 %not_sel_tmp1_i, %tmp
  br i1 %p_i, label %step.exit, label %.preheader.i

.preheader.i:                                     ; preds = %3, %2, %1
  %tmp_17_i = call fastcc zeroext i1 @right() nounwind
  %t_V = load i8* @cp_V, align 1
  br i1 %tmp_17_i, label %3, label %2

; <label>:2                                       ; preds = %.preheader.i
  %tmp_i_i = zext i8 %t_V to i64
  %pp_tile_V_addr = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i_i
  %pp_tile_V_load = load i8* %pp_tile_V_addr, align 2
  %tmp_i_i_18 = zext i8 %pp_tile_V_load to i36
  %r_V_7 = shl i36 1, %tmp_i_i_18
  %avail_V_load_1 = load i36* @avail_V, align 8
  %tmp_58_i_i = or i36 %avail_V_load_1, %r_V_7
  store i36 %tmp_58_i_i, i36* @avail_V, align 8
  store i8 0, i8* %pp_tile_V_addr, align 2
  %tmp_59_i_i = add i8 %t_V, -1
  store i8 %tmp_59_i_i, i8* @cp_V, align 1
  br label %.preheader.i

; <label>:3                                       ; preds = %.preheader.i
  %left_V_1 = add i8 %t_V, -1
  %side_V_load_4 = load i8* @side_V, align 1
  %up_V_1 = sub i8 %t_V, %side_V_load_4
  %tmp_tr_i_i8 = sext i8 %left_V_1 to i9
  %tmp_tr_i_i9 = zext i8 %side_V_load_4 to i9
  %tmp_i_i2 = sdiv i9 %tmp_tr_i_i8, %tmp_tr_i_i9
  %r_V_9 = trunc i9 %tmp_i_i2 to i8
  %r_V_10 = udiv i8 %t_V, %side_V_load_4
  %tmp_i_i13_cast = sext i8 %r_V_9 to i9
  %tmp_60_i_i14_cast = zext i8 %r_V_10 to i9
  %tmp_61_i_i1 = icmp eq i9 %tmp_i_i13_cast, %tmp_60_i_i14_cast
  %this_assign_i_i1 = select i1 %tmp_61_i_i1, i8 %left_V_1, i8 -1
  %tmp_28 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %this_assign_i_i1, i32 7)
  %tmp_i_i_i1 = zext i8 %this_assign_i_i1 to i64
  %pp_tile_V_addr_4 = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i_i_i1
  %tile_V_3 = load i8* %pp_tile_V_addr_4, align 2
  %pp_rot_V_addr_3 = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_i_i_i1
  %rot_V_3 = load i2* %pp_rot_V_addr_3, align 1
  %r_V_14_i1 = add i2 %rot_V_3, 1
  %tmp_11 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V_3, i2 %r_V_14_i1)
  %tmp_12 = zext i10 %tmp_11 to i64
  %tiles_V_addr_6 = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_12
  %tiles_V_load_5 = load i4* %tiles_V_addr_6, align 1
  %tmp_63_i_i30_cast = zext i4 %tiles_V_load_5 to i5
  %p_i_i1 = select i1 %tmp_28, i5 -1, i5 %tmp_63_i_i30_cast
  %p_i_i31_cast = sext i5 %p_i_i1 to i8
  %tmp_29 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %up_V_1, i32 7)
  %tmp_i23_i_i1 = zext i8 %up_V_1 to i64
  %pp_tile_V_addr_5 = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i23_i_i1
  %tile_V_4 = load i8* %pp_tile_V_addr_5, align 2
  %pp_rot_V_addr_4 = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_i23_i_i1
  %rot_V_4 = load i2* %pp_rot_V_addr_4, align 1
  %r_V_15_i1 = xor i2 %rot_V_4, -2
  %tmp_13 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V_4, i2 %r_V_15_i1)
  %tmp_14 = zext i10 %tmp_13 to i64
  %tiles_V_addr_7 = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_14
  %tiles_V_load_6 = load i4* %tiles_V_addr_7, align 1
  %tmp_65_i_i45_cast = zext i4 %tiles_V_load_6 to i5
  %p_5_i_i1 = select i1 %tmp_29, i5 -1, i5 %tmp_65_i_i45_cast
  %p_5_i_i46_cast = sext i5 %p_5_i_i1 to i8
  %tmp_i2_i1 = zext i8 %t_V to i64
  %pp_tile_V_addr_6 = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i2_i1
  %tile_V_5 = load i8* %pp_tile_V_addr_6, align 2
  %pp_rot_V_addr_5 = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_i2_i1
  %rot_V_5 = load i2* %pp_rot_V_addr_5, align 1
  %r_V_16_i1 = add i2 %rot_V_5, -1
  %tmp_15 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V_5, i2 %r_V_16_i1)
  %tmp_16 = zext i10 %tmp_15 to i64
  %tiles_V_addr_8 = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_16
  %tiles_V_load_7 = load i4* %tiles_V_addr_8, align 1
  %tmp_i59_cast = zext i4 %tiles_V_load_7 to i9
  %tmp_23_i60_cast = zext i8 %p_i_i31_cast to i9
  %tmp_24_i1 = icmp eq i9 %tmp_i59_cast, %tmp_23_i60_cast
  %tmp_17 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V_5, i2 %rot_V_5)
  %tmp_18 = zext i10 %tmp_17 to i64
  %tiles_V_addr_9 = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_18
  %tiles_V_load_8 = load i4* %tiles_V_addr_9, align 1
  %tmp_26_i65_cast = zext i4 %tiles_V_load_8 to i9
  %tmp_27_i66_cast = zext i8 %p_5_i_i46_cast to i9
  %not_sel_tmp1_i1 = or i1 %tmp_24_i1, %tmp_28
  %sel_tmp3_i1_not = icmp eq i9 %tmp_26_i65_cast, %tmp_27_i66_cast
  %tmp_1 = or i1 %tmp_29, %sel_tmp3_i1_not
  %p_i1 = and i1 %not_sel_tmp1_i1, %tmp_1
  br i1 %p_i1, label %step.exit, label %.preheader.i

; <label>:4                                       ; preds = %step.exit
  ret void
}

define internal fastcc void @down() nounwind uwtable inlinehint {
_ifconv1:
  %possible_V = load i36* @avail_V, align 8
  %t_V = load i8* @cp_V, align 1
  %cp_V_assign = add i8 %t_V, 1
  store i8 %cp_V_assign, i8* @cp_V, align 1
  %side_V_load_4 = load i8* @side_V, align 1
  %up_V = sub i8 %cp_V_assign, %side_V_load_4
  %tmp_tr_i = sext i8 %t_V to i9
  %tmp_tr_i_19 = zext i8 %side_V_load_4 to i9
  %tmp_i = sdiv i9 %tmp_tr_i, %tmp_tr_i_19
  %r_V_11 = trunc i9 %tmp_i to i8
  %r_V_9 = udiv i8 %cp_V_assign, %side_V_load_4
  %tmp_i_cast = sext i8 %r_V_11 to i9
  %tmp_60_i_cast = zext i8 %r_V_9 to i9
  %tmp_61_i = icmp eq i9 %tmp_i_cast, %tmp_60_i_cast
  %this_assign_i = select i1 %tmp_61_i, i8 %t_V, i8 -1
  %tmp_31 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %this_assign_i, i32 7)
  %tmp_i_i = zext i8 %this_assign_i to i64
  %pp_tile_V_addr_1 = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i_i
  %tile_V = load i8* %pp_tile_V_addr_1, align 2
  %pp_rot_V_addr_1 = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_i_i
  %rot_V = load i2* %pp_rot_V_addr_1, align 1
  %r_V_s = add i2 %rot_V, 1
  %tmp_19 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V, i2 %r_V_s)
  %tmp_20 = zext i10 %tmp_19 to i64
  %tiles_V_addr = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_20
  %tiles_V_load = load i4* %tiles_V_addr, align 1
  %tmp_63_i_cast = zext i4 %tiles_V_load to i5
  %p_i = select i1 %tmp_31, i5 -1, i5 %tmp_63_i_cast
  %p_i_cast = sext i5 %p_i to i8
  %tmp_32 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %up_V, i32 7)
  %tmp_i23_i = zext i8 %up_V to i64
  %pp_tile_V_addr_2 = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i23_i
  %tile_V_6 = load i8* %pp_tile_V_addr_2, align 2
  %pp_rot_V_addr_2 = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_i23_i
  %rot_V_6 = load i2* %pp_rot_V_addr_2, align 1
  %r_V_1 = xor i2 %rot_V_6, -2
  %tmp_21 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V_6, i2 %r_V_1)
  %tmp_22 = zext i10 %tmp_21 to i64
  %tiles_V_addr_3 = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_22
  %tiles_V_load_2 = load i4* %tiles_V_addr_3, align 1
  %tmp_65_i_cast = zext i4 %tiles_V_load_2 to i5
  %p_5_i = select i1 %tmp_32, i5 -1, i5 %tmp_65_i_cast
  %p_5_i_cast = sext i5 %p_5_i to i8
  %tmp_3 = zext i8 %p_i_cast to i64
  %colours_V_addr = getelementptr [10 x i36]* @colours_V, i64 0, i64 %tmp_3
  %colours_V_load = load i36* %colours_V_addr, align 8
  %possible_V_1 = select i1 %tmp_31, i36 -1, i36 %colours_V_load
  %tmp_5 = zext i8 %p_5_i_cast to i64
  %colours_V_addr_1 = getelementptr [10 x i36]* @colours_V, i64 0, i64 %tmp_5
  %colours_V_load_1 = load i36* %colours_V_addr_1, align 8
  %possible_V_2 = select i1 %tmp_32, i36 -1, i36 %colours_V_load_1
  %lhs_V = zext i8 %side_V_load_4 to i16
  %r_V = mul i16 %lhs_V, %lhs_V
  %tmp = and i36 %possible_V, %possible_V_1
  br label %0

; <label>:0                                       ; preds = %_ifconv, %_ifconv1
  %op2_assign = phi i16 [ 0, %_ifconv1 ], [ %t, %_ifconv ]
  %tmp_8 = icmp ult i16 %op2_assign, %r_V
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 65025, i64 0) nounwind
  %t = add i16 %op2_assign, 1
  br i1 %tmp_8, label %_ifconv, label %.loopexit

_ifconv:                                          ; preds = %0
  %tmp_s = zext i16 %op2_assign to i36
  %r_V_12 = shl i36 1, %tmp_s
  %tmp3 = and i36 %possible_V_2, %r_V_12
  %r_V_4 = and i36 %tmp3, %tmp
  %tmp_6 = icmp eq i36 %r_V_4, 0
  br i1 %tmp_6, label %0, label %_ifconv2

_ifconv2:                                         ; preds = %_ifconv
  %tmp_7 = zext i8 %cp_V_assign to i64
  %tmp_33 = trunc i16 %op2_assign to i8
  %pp_tile_V_addr = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_7
  store i8 %tmp_33, i8* %pp_tile_V_addr, align 2
  %pp_rot_V_addr = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_7
  store i2 0, i2* %pp_rot_V_addr, align 1
  %p_2 = xor i36 %r_V_12, -1
  %tmp_1 = and i36 %possible_V, %p_2
  store i36 %tmp_1, i36* @avail_V, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %0, %_ifconv2
  ret void
}

define internal fastcc zeroext i1 @right() nounwind uwtable inlinehint {
  %cp_V_load = load i8* @cp_V, align 1
  %tmp = zext i8 %cp_V_load to i64
  %pp_rot_V_addr = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp
  %pp_rot_V_load = load i2* %pp_rot_V_addr, align 1
  %tmp_s = icmp eq i2 %pp_rot_V_load, -1
  br i1 %tmp_s, label %_ifconv, label %1

; <label>:1                                       ; preds = %0
  %tmp_5 = add i2 %pp_rot_V_load, 1
  store i2 %tmp_5, i2* %pp_rot_V_addr, align 1
  br label %.loopexit

_ifconv:                                          ; preds = %0
  %pp_tile_V_addr = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp
  %pp_tile_V_load = load i8* %pp_tile_V_addr, align 2
  %tmp_2 = zext i8 %pp_tile_V_load to i36
  %r_V = shl i36 1, %tmp_2
  %avail_V_load = load i36* @avail_V, align 8
  %possible_V = or i36 %avail_V_load, %r_V
  store i36 %possible_V, i36* @avail_V, align 8
  %left_V = add i8 %cp_V_load, -1
  %side_V_load = load i8* @side_V, align 1
  %up_V = sub i8 %cp_V_load, %side_V_load
  %tmp_tr_i = sext i8 %left_V to i9
  %tmp_tr_i_20 = zext i8 %side_V_load to i9
  %tmp_i = sdiv i9 %tmp_tr_i, %tmp_tr_i_20
  %r_V_14 = trunc i9 %tmp_i to i8
  %r_V_2 = udiv i8 %cp_V_load, %side_V_load
  %tmp_i_cast = sext i8 %r_V_14 to i9
  %tmp_60_i_cast = zext i8 %r_V_2 to i9
  %tmp_61_i = icmp eq i9 %tmp_i_cast, %tmp_60_i_cast
  %this_assign_i = select i1 %tmp_61_i, i8 %left_V, i8 -1
  %tmp_35 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %this_assign_i, i32 7)
  %tmp_i_i = zext i8 %this_assign_i to i64
  %pp_tile_V_addr_6 = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i_i
  %tile_V = load i8* %pp_tile_V_addr_6, align 2
  %pp_rot_V_addr_6 = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_i_i
  %rot_V = load i2* %pp_rot_V_addr_6, align 1
  %r_V_s = add i2 %rot_V, 1
  %tmp_23 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V, i2 %r_V_s)
  %tmp_24 = zext i10 %tmp_23 to i64
  %tiles_V_addr = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_24
  %tiles_V_load = load i4* %tiles_V_addr, align 1
  %tmp_63_i_cast = zext i4 %tiles_V_load to i5
  %p_i = select i1 %tmp_35, i5 -1, i5 %tmp_63_i_cast
  %p_i_cast = sext i5 %p_i to i8
  %tmp_36 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %up_V, i32 7)
  %tmp_i23_i = zext i8 %up_V to i64
  %pp_tile_V_addr_7 = getelementptr [36 x i8]* @pp_tile_V, i64 0, i64 %tmp_i23_i
  %tile_V_7 = load i8* %pp_tile_V_addr_7, align 2
  %pp_rot_V_addr_7 = getelementptr [36 x i2]* @pp_rot_V, i64 0, i64 %tmp_i23_i
  %rot_V_7 = load i2* %pp_rot_V_addr_7, align 1
  %r_V_3 = xor i2 %rot_V_7, -2
  %tmp_25 = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %tile_V_7, i2 %r_V_3)
  %tmp_26 = zext i10 %tmp_25 to i64
  %tiles_V_addr_7 = getelementptr [144 x i4]* @tiles_V, i64 0, i64 %tmp_26
  %tiles_V_load_6 = load i4* %tiles_V_addr_7, align 1
  %tmp_65_i_cast = zext i4 %tiles_V_load_6 to i5
  %p_5_i = select i1 %tmp_36, i5 -1, i5 %tmp_65_i_cast
  %p_5_i_cast = sext i5 %p_5_i to i8
  %tmp_3 = zext i8 %p_i_cast to i64
  %colours_V_addr = getelementptr [10 x i36]* @colours_V, i64 0, i64 %tmp_3
  %colours_V_load = load i36* %colours_V_addr, align 8
  %possible_V_3 = select i1 %tmp_35, i36 -1, i36 %colours_V_load
  %tmp_4 = zext i8 %p_5_i_cast to i64
  %colours_V_addr_2 = getelementptr [10 x i36]* @colours_V, i64 0, i64 %tmp_4
  %colours_V_load_2 = load i36* %colours_V_addr_2, align 8
  %possible_V_4 = select i1 %tmp_36, i36 -1, i36 %colours_V_load_2
  %lhs_V = zext i8 %side_V_load to i16
  %r_V_7 = mul i16 %lhs_V, %lhs_V
  %tmp1 = and i36 %possible_V, %possible_V_3
  br label %._crit_edge188

._crit_edge188:                                   ; preds = %2, %_ifconv
  %p_078_0_in = phi i8 [ %pp_tile_V_load, %_ifconv ], [ %t_V, %2 ]
  %t_V = add i8 %p_078_0_in, 1
  %tmp_36_cast = zext i8 %t_V to i16
  %tmp_6 = icmp ult i16 %tmp_36_cast, %r_V_7
  br i1 %tmp_6, label %2, label %.loopexit

; <label>:2                                       ; preds = %._crit_edge188
  %tmp_7 = zext i8 %t_V to i36
  %r_V_15 = shl i36 1, %tmp_7
  %tmp2 = and i36 %possible_V_4, %r_V_15
  %r_V_9 = and i36 %tmp2, %tmp1
  %tmp_8 = icmp eq i36 %r_V_9, 0
  br i1 %tmp_8, label %._crit_edge188, label %3

; <label>:3                                       ; preds = %2
  store i8 %t_V, i8* %pp_tile_V_addr, align 2
  store i2 0, i2* %pp_rot_V_addr, align 1
  %p_4 = xor i36 %r_V_15, -1
  %tmp_9 = and i36 %possible_V, %p_4
  store i36 %tmp_9, i36* @avail_V, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge188, %3, %1
  %p_s = phi i1 [ true, %1 ], [ true, %3 ], [ false, %._crit_edge188 ]
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
  %empty_21 = zext i2 %1 to i10
  %empty_22 = trunc i10 %empty to i8
  %empty_23 = call i8 @_ssdm_op_PartSelect.i8.i10.i32.i32(i10 %empty_21, i32 2, i32 9)
  %empty_24 = or i8 %empty_22, %empty_23
  %empty_25 = call i10 @_ssdm_op_PartSet.i10.i10.i8.i32.i32(i10 %empty_21, i8 %empty_24, i32 2, i32 9)
  ret i10 %empty_25
}

define weak i35 @_ssdm_op_PartSelect.i35.i36.i32.i32(i36, i32, i32) nounwind readnone {
entry:
  %empty = call i36 @llvm.part.select.i36(i36 %0, i32 %1, i32 %2)
  %empty_26 = trunc i36 %empty to i35
  ret i35 %empty_26
}

define weak i36 @_ssdm_op_BitConcatenate.i36.i35.i1(i35, i1) nounwind readnone {
entry:
  %empty = zext i35 %0 to i36
  %empty_27 = zext i1 %1 to i36
  %empty_28 = trunc i36 %empty to i35
  %empty_29 = call i35 @_ssdm_op_PartSelect.i35.i36.i32.i32(i36 %empty_27, i32 1, i32 35)
  %empty_30 = or i35 %empty_28, %empty_29
  %empty_31 = call i36 @_ssdm_op_PartSet.i36.i36.i35.i32.i32(i36 %empty_27, i35 %empty_30, i32 1, i32 35)
  ret i36 %empty_31
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

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_32 = and i32 %0, %empty
  %empty_33 = icmp ne i32 %empty_32, 0
  ret i1 %empty_33
}

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_34 = shl i8 1, %empty
  %empty_35 = and i8 %0, %empty_34
  %empty_36 = icmp ne i8 %empty_35, 0
  ret i1 %empty_36
}

declare i32 @_autotb_FifoRead_i32(i32*)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i36 @llvm.part.select.i36(i36, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i4 @_ssdm_op_PartSelect.i4.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i32 @_ssdm_op_BitConcatenate.i32.i30.i2(i30, i2) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_PartSelect.i8.i10.i32.i32(i10, i32, i32) nounwind readnone {
entry:
  %empty = call i10 @llvm.part.select.i10(i10 %0, i32 %1, i32 %2)
  %empty_37 = trunc i10 %empty to i8
  ret i8 %empty_37
}

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

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !""}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"input.V.V", metadata !5, metadata !"uint32"}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 31, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"output.V.V", metadata !5, metadata !"uint32"}
