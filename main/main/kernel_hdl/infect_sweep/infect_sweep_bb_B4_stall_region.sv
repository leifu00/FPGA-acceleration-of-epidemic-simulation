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

// SystemVerilog created from infect_sweep_bb_B4_stall_region
// SystemVerilog created on Tue Nov 24 22:05:07 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module infect_sweep_bb_B4_stall_region (
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    output wire [63:0] out_intel_reserved_ffwd_14_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [31:0] in_i3_0185,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_intel_reserved_ffwd_15_0,
    output wire [31:0] out_inc198,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_16_q;
    wire [0:0] i_i3_0185_replace_phi_infect_sweep1_s;
    reg [31:0] i_i3_0185_replace_phi_infect_sweep1_q;
    wire [32:0] i_inc198_infect_sweep3_a;
    wire [32:0] i_inc198_infect_sweep3_b;
    logic [32:0] i_inc198_infect_sweep3_o;
    wire [32:0] i_inc198_infect_sweep3_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep15_infect_sweep5_out_intel_reserved_ffwd_15_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep15_infect_sweep5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep15_infect_sweep5_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_out_intel_reserved_ffwd_14_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_out_valid_out;
    wire [31:0] bgTrunc_i_inc198_infect_sweep3_sel_x_b;
    wire [63:0] i_idxprom165_infect_sweep2_sel_x_b;
    wire [0:0] infect_sweep_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] infect_sweep_B4_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] infect_sweep_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] infect_sweep_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_b;
    wire [32:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [32:0] bubble_join_infect_sweep_B4_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_infect_sweep_B4_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_infect_sweep_B4_merge_reg_aunroll_x_c;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_or1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_V2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_infect_sweep_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_infect_sweep_B4_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_infect_sweep_B4_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_infect_sweep_B4_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_infect_sweep_B4_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_infect_sweep_B4_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_infect_sweep_B4_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_infect_sweep_B4_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_infect_sweep_B4_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_infect_sweep_B4_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_infect_sweep_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_infect_sweep_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_infect_sweep_B4_merge_reg_aunroll_x_V1;


    // c_i32_16(CONSTANT,4)
    assign c_i32_16_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0(BITJOIN,38)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_q = i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0(BITSELECT,39)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_q[31:0]);

    // bubble_join_stall_entry(BITJOIN,43)
    assign bubble_join_stall_entry_q = {in_i3_0185, in_forked};

    // bubble_select_stall_entry(BITSELECT,44)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);

    // SE_stall_entry(STALLENABLE,58)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = infect_sweep_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // infect_sweep_B4_merge_reg_aunroll_x(BLACKBOX,34)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    infect_sweep_B4_merge_reg theinfect_sweep_B4_merge_reg_aunroll_x (
        .in_stall_in(SE_out_infect_sweep_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_b),
        .out_stall_out(infect_sweep_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(infect_sweep_B4_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(infect_sweep_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(infect_sweep_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_infect_sweep_B4_merge_reg_aunroll_x(BITJOIN,47)
    assign bubble_join_infect_sweep_B4_merge_reg_aunroll_x_q = {infect_sweep_B4_merge_reg_aunroll_x_out_data_out_1_tpl, infect_sweep_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_infect_sweep_B4_merge_reg_aunroll_x(BITSELECT,48)
    assign bubble_select_infect_sweep_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_infect_sweep_B4_merge_reg_aunroll_x_q[31:0]);
    assign bubble_select_infect_sweep_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_infect_sweep_B4_merge_reg_aunroll_x_q[32:32]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_i3_0185_replace_phi_infect_sweep1(MUX,7)@1
    assign i_i3_0185_replace_phi_infect_sweep1_s = bubble_select_infect_sweep_B4_merge_reg_aunroll_x_c;
    always @(i_i3_0185_replace_phi_infect_sweep1_s or bubble_select_infect_sweep_B4_merge_reg_aunroll_x_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_b)
    begin
        unique case (i_i3_0185_replace_phi_infect_sweep1_s)
            1'b0 : i_i3_0185_replace_phi_infect_sweep1_q = bubble_select_infect_sweep_B4_merge_reg_aunroll_x_b;
            1'b1 : i_i3_0185_replace_phi_infect_sweep1_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_b;
            default : i_i3_0185_replace_phi_infect_sweep1_q = 32'b0;
        endcase
    end

    // i_inc198_infect_sweep3(ADD,10)@1
    assign i_inc198_infect_sweep3_a = {1'b0, i_i3_0185_replace_phi_infect_sweep1_q};
    assign i_inc198_infect_sweep3_b = {1'b0, c_i32_16_q};
    assign i_inc198_infect_sweep3_o = $unsigned(i_inc198_infect_sweep3_a) + $unsigned(i_inc198_infect_sweep3_b);
    assign i_inc198_infect_sweep3_q = i_inc198_infect_sweep3_o[32:0];

    // bgTrunc_i_inc198_infect_sweep3_sel_x(BITSELECT,30)@1
    assign bgTrunc_i_inc198_infect_sweep3_sel_x_b = i_inc198_infect_sweep3_q[31:0];

    // i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep15_infect_sweep5(BLACKBOX,12)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_15_0@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_source_i320000med_15_infect_sweep0 thei_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep15_infect_sweep5 (
        .in_predicate_in(GND_q),
        .in_src_data_in_15_0(bgTrunc_i_inc198_infect_sweep3_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_V2),
        .out_intel_reserved_ffwd_15_0(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep15_infect_sweep5_out_intel_reserved_ffwd_15_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep15_infect_sweep5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep15_infect_sweep5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_infect_sweep_B4_merge_reg_aunroll_x(STALLENABLE,63)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_infect_sweep_B4_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_infect_sweep_B4_merge_reg_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_infect_sweep_B4_merge_reg_aunroll_x_fromReg0 <= SE_out_infect_sweep_B4_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_infect_sweep_B4_merge_reg_aunroll_x_fromReg1 <= SE_out_infect_sweep_B4_merge_reg_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_infect_sweep_B4_merge_reg_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_out_stall_out) & SE_out_infect_sweep_B4_merge_reg_aunroll_x_wireValid) | SE_out_infect_sweep_B4_merge_reg_aunroll_x_fromReg0;
    assign SE_out_infect_sweep_B4_merge_reg_aunroll_x_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_backStall) & SE_out_infect_sweep_B4_merge_reg_aunroll_x_wireValid) | SE_out_infect_sweep_B4_merge_reg_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_infect_sweep_B4_merge_reg_aunroll_x_StallValid = SE_out_infect_sweep_B4_merge_reg_aunroll_x_backStall & SE_out_infect_sweep_B4_merge_reg_aunroll_x_wireValid;
    assign SE_out_infect_sweep_B4_merge_reg_aunroll_x_toReg0 = SE_out_infect_sweep_B4_merge_reg_aunroll_x_StallValid & SE_out_infect_sweep_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_infect_sweep_B4_merge_reg_aunroll_x_toReg1 = SE_out_infect_sweep_B4_merge_reg_aunroll_x_StallValid & SE_out_infect_sweep_B4_merge_reg_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_infect_sweep_B4_merge_reg_aunroll_x_or0 = SE_out_infect_sweep_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_infect_sweep_B4_merge_reg_aunroll_x_wireStall = ~ (SE_out_infect_sweep_B4_merge_reg_aunroll_x_consumed1 & SE_out_infect_sweep_B4_merge_reg_aunroll_x_or0);
    assign SE_out_infect_sweep_B4_merge_reg_aunroll_x_backStall = SE_out_infect_sweep_B4_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_infect_sweep_B4_merge_reg_aunroll_x_V0 = SE_out_infect_sweep_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_infect_sweep_B4_merge_reg_aunroll_x_fromReg0);
    assign SE_out_infect_sweep_B4_merge_reg_aunroll_x_V1 = SE_out_infect_sweep_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_infect_sweep_B4_merge_reg_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_infect_sweep_B4_merge_reg_aunroll_x_wireValid = infect_sweep_B4_merge_reg_aunroll_x_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0(BLACKBOX,11)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_dest_i32_m0000ue_052_infect_sweep0 thei_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_backStall),
        .in_valid_in(SE_out_infect_sweep_B4_merge_reg_aunroll_x_V0),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0(STALLENABLE,53)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_fromReg1 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_fromReg2 <= SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_consumed0 = (~ (i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_fromReg1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_consumed2 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep15_infect_sweep5_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_consumed1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_toReg2 = SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_or1 = SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_or0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_consumed2 & SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_or1);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_fromReg1);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_V2 = SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_and0 = i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_wireValid = SE_out_infect_sweep_B4_merge_reg_aunroll_x_V1 & SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_and0;

    // SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4(STALLENABLE,57)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_V0 = SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_and0 = i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_and1 = i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep15_infect_sweep5_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_and0;
    assign SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_V1 & SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_and1;

    // i_idxprom165_infect_sweep2_sel_x(BITSELECT,33)@1
    assign i_idxprom165_infect_sweep2_sel_x_b = $unsigned({{32{i_i3_0185_replace_phi_infect_sweep1_q[31]}}, i_i3_0185_replace_phi_infect_sweep1_q[31:0]});

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4(BLACKBOX,13)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_14_0@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_source_i640000med_14_infect_sweep0 thei_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4 (
        .in_predicate_in(GND_q),
        .in_src_data_in_14_0(i_idxprom165_infect_sweep2_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_memcoalesce_extrvalue_0_infect_sweep_fpgaunique_052_infect_sweep0_V0),
        .out_intel_reserved_ffwd_14_0(i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_out_intel_reserved_ffwd_14_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,24)
    assign out_intel_reserved_ffwd_14_0 = i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_out_intel_reserved_ffwd_14_0;

    // sync_out(GPOUT,28)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,31)
    assign out_intel_reserved_ffwd_15_0 = i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep15_infect_sweep5_out_intel_reserved_ffwd_15_0;

    // dupName_0_sync_out_x(GPOUT,32)@1
    assign out_inc198 = bgTrunc_i_inc198_infect_sweep3_sel_x_b;
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_i64_unnamed_infect_sweep14_infect_sweep4_V0;

endmodule
