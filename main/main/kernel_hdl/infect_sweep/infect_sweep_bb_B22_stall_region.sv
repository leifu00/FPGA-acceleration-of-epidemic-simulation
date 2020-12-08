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

// SystemVerilog created from infect_sweep_bb_B22_stall_region
// SystemVerilog created on Tue Nov 24 22:05:07 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module infect_sweep_bb_B22_stall_region (
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_47_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_cmp_4,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_10005_q;
    wire [31:0] c_i32_54_q;
    wire [33:0] i_cmp_4_infect_sweep2_a;
    wire [33:0] i_cmp_4_infect_sweep2_b;
    logic [33:0] i_cmp_4_infect_sweep2_o;
    wire [0:0] i_cmp_4_infect_sweep2_c;
    wire [32:0] i_inc360_4_infect_sweep1_a;
    wire [32:0] i_inc360_4_infect_sweep1_b;
    logic [32:0] i_inc360_4_infect_sweep1_o;
    wire [32:0] i_inc360_4_infect_sweep1_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_out_intel_reserved_ffwd_47_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_out_valid_out;
    wire [31:0] bgTrunc_i_inc360_4_infect_sweep1_sel_x_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_b;
    reg [0:0] SE_i_cmp_4_infect_sweep2_R_v_0;
    wire [0:0] SE_i_cmp_4_infect_sweep2_v_s_0;
    wire [0:0] SE_i_cmp_4_infect_sweep2_s_tv_0;
    wire [0:0] SE_i_cmp_4_infect_sweep2_backEN;
    wire [0:0] SE_i_cmp_4_infect_sweep2_backStall;
    wire [0:0] SE_i_cmp_4_infect_sweep2_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_V0;


    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg(STALLENABLE,48)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1(STALLENABLE,45)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_V0 = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_and0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_V0;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_wireValid = SE_i_cmp_4_infect_sweep2_V0 & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_and0;

    // SE_i_cmp_4_infect_sweep2(STALLENABLE,31)
    // Valid signal propagation
    assign SE_i_cmp_4_infect_sweep2_V0 = SE_i_cmp_4_infect_sweep2_R_v_0;
    // Stall signal propagation
    assign SE_i_cmp_4_infect_sweep2_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_backStall & SE_i_cmp_4_infect_sweep2_R_v_0;
    // Backward Enable generation
    assign SE_i_cmp_4_infect_sweep2_backEN = ~ (SE_i_cmp_4_infect_sweep2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp_4_infect_sweep2_v_s_0 = SE_i_cmp_4_infect_sweep2_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_V0;
    // Backward Stall generation
    assign SE_i_cmp_4_infect_sweep2_backStall = ~ (SE_i_cmp_4_infect_sweep2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp_4_infect_sweep2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp_4_infect_sweep2_backEN == 1'b0)
            begin
                SE_i_cmp_4_infect_sweep2_R_v_0 <= SE_i_cmp_4_infect_sweep2_R_v_0 & SE_i_cmp_4_infect_sweep2_s_tv_0;
            end
            else
            begin
                SE_i_cmp_4_infect_sweep2_R_v_0 <= SE_i_cmp_4_infect_sweep2_v_s_0;
            end

        end
    end

    // SE_stall_entry(STALLENABLE,37)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0(BLACKBOX,10)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_dest_i32_index_018847_0 thei_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0(STALLENABLE,34)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_consumed0 = (~ (SE_i_cmp_4_infect_sweep2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_wireValid = i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3(STALLENABLE,36)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_out_valid_out;

    // c_i32_54(CONSTANT,5)
    assign c_i32_54_q = $unsigned(32'b00000000000000000000000000000101);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0(BITJOIN,27)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_q = i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0(BITSELECT,28)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_q[31:0]);

    // i_inc360_4_infect_sweep1(ADD,9)@0
    assign i_inc360_4_infect_sweep1_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_b};
    assign i_inc360_4_infect_sweep1_b = {1'b0, c_i32_54_q};
    assign i_inc360_4_infect_sweep1_o = $unsigned(i_inc360_4_infect_sweep1_a) + $unsigned(i_inc360_4_infect_sweep1_b);
    assign i_inc360_4_infect_sweep1_q = i_inc360_4_infect_sweep1_o[32:0];

    // bgTrunc_i_inc360_4_infect_sweep1_sel_x(BITSELECT,23)@0
    assign bgTrunc_i_inc360_4_infect_sweep1_sel_x_b = i_inc360_4_infect_sweep1_q[31:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3(BLACKBOX,11)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_47_0@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_source_i320000med_83_infect_sweep0 thei_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3 (
        .in_predicate_in(GND_q),
        .in_src_data_in_47_0(bgTrunc_i_inc360_4_infect_sweep1_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_index_018847_infect_sweep0_V1),
        .out_intel_reserved_ffwd_47_0(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_out_intel_reserved_ffwd_47_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,17)
    assign out_intel_reserved_ffwd_47_0 = i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_out_intel_reserved_ffwd_47_0;

    // sync_out(GPOUT,21)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // c_i32_10005(CONSTANT,4)
    assign c_i32_10005_q = $unsigned(32'b00000000000000000000001111101000);

    // i_cmp_4_infect_sweep2(COMPARE,8)@0 + 1
    assign i_cmp_4_infect_sweep2_a = {2'b00, bgTrunc_i_inc360_4_infect_sweep1_sel_x_b};
    assign i_cmp_4_infect_sweep2_b = {2'b00, c_i32_10005_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp_4_infect_sweep2_o <= 34'b0;
        end
        else if (SE_i_cmp_4_infect_sweep2_backEN == 1'b1)
        begin
            i_cmp_4_infect_sweep2_o <= $unsigned(i_cmp_4_infect_sweep2_a) - $unsigned(i_cmp_4_infect_sweep2_b);
        end
    end
    assign i_cmp_4_infect_sweep2_c[0] = i_cmp_4_infect_sweep2_o[33];

    // dupName_0_sync_out_x(GPOUT,24)@1
    assign out_cmp_4 = i_cmp_4_infect_sweep2_c;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep83_infect_sweep3_1_V0;

endmodule
