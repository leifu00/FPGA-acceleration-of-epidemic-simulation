// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 20.1 (Release Build #177)
// 
// Legal Notice: Copyright 2020 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from infect_sweep_bb_B0_stall_region
// SystemVerilog created on Tue Nov 24 22:05:06 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module infect_sweep_bb_B0_stall_region (
    input wire [0:0] in_feedback_in_0,
    output wire [0:0] out_feedback_stall_out_0,
    input wire [0:0] in_feedback_valid_in_0,
    input wire [63:0] in_P,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0_out_feedback_stall_out_0;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_out_valid_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_vt_select_63_b;
    wire [5:0] i_placetypenum_infect_sweep2_vt_const_5_q;
    wire [63:0] i_placetypenum_infect_sweep2_vt_join_q;
    wire [57:0] i_placetypenum_infect_sweep2_vt_select_63_b;
    wire [0:0] infect_sweep_B0_merge_reg_out_stall_out;
    wire [0:0] infect_sweep_B0_merge_reg_out_valid_out;
    wire [64:0] i_placetypenum_infect_sweep0_add_x_a;
    wire [64:0] i_placetypenum_infect_sweep0_add_x_b;
    logic [64:0] i_placetypenum_infect_sweep0_add_x_o;
    wire [64:0] i_placetypenum_infect_sweep0_add_x_q;
    wire [63:0] i_placetypenum_infect_sweep0_c_i64_1600641_x_q;
    wire [63:0] i_placetypenum_infect_sweep0_trunc_sel_x_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_V0;
    wire [0:0] SE_out_infect_sweep_B0_merge_reg_wireValid;
    wire [0:0] SE_out_infect_sweep_B0_merge_reg_wireStall;
    wire [0:0] SE_out_infect_sweep_B0_merge_reg_StallValid;
    wire [0:0] SE_out_infect_sweep_B0_merge_reg_toReg0;
    reg [0:0] SE_out_infect_sweep_B0_merge_reg_fromReg0;
    wire [0:0] SE_out_infect_sweep_B0_merge_reg_consumed0;
    wire [0:0] SE_out_infect_sweep_B0_merge_reg_toReg1;
    reg [0:0] SE_out_infect_sweep_B0_merge_reg_fromReg1;
    wire [0:0] SE_out_infect_sweep_B0_merge_reg_consumed1;
    wire [0:0] SE_out_infect_sweep_B0_merge_reg_or0;
    wire [0:0] SE_out_infect_sweep_B0_merge_reg_backStall;
    wire [0:0] SE_out_infect_sweep_B0_merge_reg_V0;
    wire [0:0] SE_out_infect_sweep_B0_merge_reg_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_V0;


    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg(STALLENABLE,78)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_s_tv_0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0_backStall & bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3(STALLENABLE,49)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_out_valid_out;

    // i_placetypenum_infect_sweep0_c_i64_1600641_x(CONSTANT,37)
    assign i_placetypenum_infect_sweep0_c_i64_1600641_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000100111000101000000);

    // bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1(BITJOIN,43)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_q = i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1(BITSELECT,44)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_vt_select_63(BITSELECT,15)@1
    assign i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_vt_const_9(CONSTANT,13)
    assign i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_vt_join(BITJOIN,14)@1
    assign i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_vt_join_q = {i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_vt_const_9_q};

    // i_placetypenum_infect_sweep0_add_x(ADD,36)@1
    assign i_placetypenum_infect_sweep0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_vt_join_q};
    assign i_placetypenum_infect_sweep0_add_x_b = {1'b0, i_placetypenum_infect_sweep0_c_i64_1600641_x_q};
    assign i_placetypenum_infect_sweep0_add_x_o = $unsigned(i_placetypenum_infect_sweep0_add_x_a) + $unsigned(i_placetypenum_infect_sweep0_add_x_b);
    assign i_placetypenum_infect_sweep0_add_x_q = i_placetypenum_infect_sweep0_add_x_o[64:0];

    // i_placetypenum_infect_sweep0_trunc_sel_x(BITSELECT,39)@1
    assign i_placetypenum_infect_sweep0_trunc_sel_x_b = i_placetypenum_infect_sweep0_add_x_q[63:0];

    // i_placetypenum_infect_sweep2_vt_select_63(BITSELECT,18)@1
    assign i_placetypenum_infect_sweep2_vt_select_63_b = i_placetypenum_infect_sweep0_trunc_sel_x_b[63:6];

    // i_placetypenum_infect_sweep2_vt_const_5(CONSTANT,16)
    assign i_placetypenum_infect_sweep2_vt_const_5_q = $unsigned(6'b000000);

    // i_placetypenum_infect_sweep2_vt_join(BITJOIN,17)@1
    assign i_placetypenum_infect_sweep2_vt_join_q = {i_placetypenum_infect_sweep2_vt_select_63_b, i_placetypenum_infect_sweep2_vt_const_5_q};

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3(BLACKBOX,10)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_source_p100000amed_0_infect_sweep0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(i_placetypenum_infect_sweep2_vt_join_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_V0),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1(STALLENABLE,53)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_V0 = SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_backStall = i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_out_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_wireValid = i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_out_valid_out;

    // i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1(BLACKBOX,12)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_sync_buffer_p100000rams_p_sync_buffer_0 thei_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1 (
        .in_buffer_in(in_P),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_backStall),
        .in_valid_in(SE_out_infect_sweep_B0_merge_reg_V1),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,60)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = infect_sweep_B0_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // infect_sweep_B0_merge_reg(BLACKBOX,19)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    infect_sweep_B0_merge_reg theinfect_sweep_B0_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_infect_sweep_B0_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(infect_sweep_B0_merge_reg_out_stall_out),
        .out_valid_out(infect_sweep_B0_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_infect_sweep_B0_merge_reg(STALLENABLE,59)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_infect_sweep_B0_merge_reg_fromReg0 <= '0;
            SE_out_infect_sweep_B0_merge_reg_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_infect_sweep_B0_merge_reg_fromReg0 <= SE_out_infect_sweep_B0_merge_reg_toReg0;
            // Successor 1
            SE_out_infect_sweep_B0_merge_reg_fromReg1 <= SE_out_infect_sweep_B0_merge_reg_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_infect_sweep_B0_merge_reg_consumed0 = (~ (i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0_out_stall_out) & SE_out_infect_sweep_B0_merge_reg_wireValid) | SE_out_infect_sweep_B0_merge_reg_fromReg0;
    assign SE_out_infect_sweep_B0_merge_reg_consumed1 = (~ (i_llvm_fpga_sync_buffer_p1024s_struct_params_p_sync_buffer_infect_sweep1_out_stall_out) & SE_out_infect_sweep_B0_merge_reg_wireValid) | SE_out_infect_sweep_B0_merge_reg_fromReg1;
    // Consuming
    assign SE_out_infect_sweep_B0_merge_reg_StallValid = SE_out_infect_sweep_B0_merge_reg_backStall & SE_out_infect_sweep_B0_merge_reg_wireValid;
    assign SE_out_infect_sweep_B0_merge_reg_toReg0 = SE_out_infect_sweep_B0_merge_reg_StallValid & SE_out_infect_sweep_B0_merge_reg_consumed0;
    assign SE_out_infect_sweep_B0_merge_reg_toReg1 = SE_out_infect_sweep_B0_merge_reg_StallValid & SE_out_infect_sweep_B0_merge_reg_consumed1;
    // Backward Stall generation
    assign SE_out_infect_sweep_B0_merge_reg_or0 = SE_out_infect_sweep_B0_merge_reg_consumed0;
    assign SE_out_infect_sweep_B0_merge_reg_wireStall = ~ (SE_out_infect_sweep_B0_merge_reg_consumed1 & SE_out_infect_sweep_B0_merge_reg_or0);
    assign SE_out_infect_sweep_B0_merge_reg_backStall = SE_out_infect_sweep_B0_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_infect_sweep_B0_merge_reg_V0 = SE_out_infect_sweep_B0_merge_reg_wireValid & ~ (SE_out_infect_sweep_B0_merge_reg_fromReg0);
    assign SE_out_infect_sweep_B0_merge_reg_V1 = SE_out_infect_sweep_B0_merge_reg_wireValid & ~ (SE_out_infect_sweep_B0_merge_reg_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_infect_sweep_B0_merge_reg_wireValid = infect_sweep_B0_merge_reg_out_valid_out;

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0(STALLENABLE,51)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0_and0 = i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0_wireValid = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_1_reg_V0 & SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0_and0;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0(BLACKBOX,11)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_0@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    infect_sweep_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_0(in_feedback_in_0),
        .in_feedback_valid_in_0(in_feedback_valid_in_0),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0_backStall),
        .in_valid_in(SE_out_infect_sweep_B0_merge_reg_V0),
        .out_data_out(),
        .out_feedback_stall_out_0(i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0_out_feedback_stall_out_0),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_0_sync(GPOUT,8)
    assign out_feedback_stall_out_0 = i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0_out_feedback_stall_out_0;

    // regfree_osync(GPOUT,29)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_infect_sweep0_infect_sweep3_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,33)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,35)@2
    assign out_valid_out = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_infect_sweep0_V0;

endmodule
