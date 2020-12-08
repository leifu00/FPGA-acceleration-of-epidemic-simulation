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

// SystemVerilog created from infect_sweep_bb_B21_stall_region
// SystemVerilog created on Tue Nov 24 22:05:07 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module infect_sweep_bb_B21_stall_region (
    input wire [31:0] in_intel_reserved_ffwd_39_0,
    input wire [0:0] in_intel_reserved_ffwd_41_0,
    input wire [0:0] in_intel_reserved_ffwd_42_0,
    input wire [31:0] in_intel_reserved_ffwd_45_0,
    input wire [0:0] in_intel_reserved_ffwd_46_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe12225,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe12225,
    output wire [0:0] out_unnamed_infect_sweep80,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [33:0] i_cmp152_4_infect_sweep5_a;
    wire [33:0] i_cmp152_4_infect_sweep5_b;
    logic [33:0] i_cmp152_4_infect_sweep5_o;
    wire [0:0] i_cmp152_4_infect_sweep5_c;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_narrow85_infect_sweep1_out_dest_data_out_46_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_narrow85_infect_sweep1_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_narrow85_infect_sweep1_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_out_dest_data_out_42_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep82_infect_sweep9_out_dest_data_out_41_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep82_infect_sweep9_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep82_infect_sweep9_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_add_481_infect_sweep3_out_dest_data_out_39_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_add_481_infect_sweep3_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_add_481_infect_sweep3_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_inc198_484_infect_sweep4_out_dest_data_out_45_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_inc198_484_infect_sweep4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_inc198_484_infect_sweep4_out_valid_out;
    wire [0:0] i_narrow190_infect_sweep2_q;
    wire [0:0] i_tobool_4_infect_sweep7_q;
    wire [0:0] i_unnamed_infect_sweep10_q;
    wire [0:0] i_unnamed_infect_sweep8_q;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_narrow85_infect_sweep1_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_narrow85_infect_sweep1_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep82_infect_sweep9_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep82_infect_sweep9_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_add_481_infect_sweep3_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_add_481_infect_sweep3_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_inc198_484_infect_sweep4_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_inc198_484_infect_sweep4_b;
    wire [31:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_and3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_and4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_toReg3;
    reg [0:0] SE_stall_entry_fromReg3;
    wire [0:0] SE_stall_entry_consumed3;
    wire [0:0] SE_stall_entry_toReg4;
    reg [0:0] SE_stall_entry_fromReg4;
    wire [0:0] SE_stall_entry_consumed4;
    wire [0:0] SE_stall_entry_toReg5;
    reg [0:0] SE_stall_entry_fromReg5;
    wire [0:0] SE_stall_entry_consumed5;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_or3;
    wire [0:0] SE_stall_entry_or4;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_stall_entry_V3;
    wire [0:0] SE_stall_entry_V4;
    wire [0:0] SE_stall_entry_V5;


    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0(STALLENABLE,70)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_and0 = i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_and1 = i_llvm_fpga_ffwd_dest_i1_narrow85_infect_sweep1_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_and2 = i_llvm_fpga_ffwd_dest_i32_inc198_484_infect_sweep4_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_and3 = i_llvm_fpga_ffwd_dest_i32_add_481_infect_sweep3_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_and2;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_and4 = i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep82_infect_sweep9_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_and3;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_wireValid = SE_stall_entry_V5 & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_and4;

    // i_llvm_fpga_ffwd_dest_i32_inc198_484_infect_sweep4(BLACKBOX,10)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_dest_i32_inc198_484_0 thei_llvm_fpga_ffwd_dest_i32_inc198_484_infect_sweep4 (
        .in_intel_reserved_ffwd_45_0(in_intel_reserved_ffwd_45_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_backStall),
        .in_valid_in(SE_stall_entry_V4),
        .out_dest_data_out_45_0(i_llvm_fpga_ffwd_dest_i32_inc198_484_infect_sweep4_out_dest_data_out_45_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_inc198_484_infect_sweep4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_inc198_484_infect_sweep4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_add_481_infect_sweep3(BLACKBOX,9)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_dest_i32_add_481_0 thei_llvm_fpga_ffwd_dest_i32_add_481_infect_sweep3 (
        .in_intel_reserved_ffwd_39_0(in_intel_reserved_ffwd_39_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_backStall),
        .in_valid_in(SE_stall_entry_V3),
        .out_dest_data_out_39_0(i_llvm_fpga_ffwd_dest_i32_add_481_infect_sweep3_out_dest_data_out_39_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_add_481_infect_sweep3_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_add_481_infect_sweep3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep82_infect_sweep9(BLACKBOX,8)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_dest_i1_unnamed_82_infect_sweep0 thei_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep82_infect_sweep9 (
        .in_intel_reserved_ffwd_41_0(in_intel_reserved_ffwd_41_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_dest_data_out_41_0(i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep82_infect_sweep9_out_dest_data_out_41_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep82_infect_sweep9_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep82_infect_sweep9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0(BLACKBOX,7)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_dest_i1_unnamed_81_infect_sweep0 thei_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0 (
        .in_intel_reserved_ffwd_42_0(in_intel_reserved_ffwd_42_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_42_0(i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_out_dest_data_out_42_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_narrow85_infect_sweep1(BLACKBOX,6)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_dest_i1_narrow85_0 thei_llvm_fpga_ffwd_dest_i1_narrow85_infect_sweep1 (
        .in_intel_reserved_ffwd_46_0(in_intel_reserved_ffwd_46_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_46_0(i_llvm_fpga_ffwd_dest_i1_narrow85_infect_sweep1_out_dest_data_out_46_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_narrow85_infect_sweep1_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_narrow85_infect_sweep1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,81)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
            SE_stall_entry_fromReg3 <= '0;
            SE_stall_entry_fromReg4 <= '0;
            SE_stall_entry_fromReg5 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
            // Successor 3
            SE_stall_entry_fromReg3 <= SE_stall_entry_toReg3;
            // Successor 4
            SE_stall_entry_fromReg4 <= SE_stall_entry_toReg4;
            // Successor 5
            SE_stall_entry_fromReg5 <= SE_stall_entry_toReg5;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_narrow85_infect_sweep1_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep82_infect_sweep9_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (i_llvm_fpga_ffwd_dest_i32_add_481_infect_sweep3_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    assign SE_stall_entry_consumed4 = (~ (i_llvm_fpga_ffwd_dest_i32_inc198_484_infect_sweep4_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg4;
    assign SE_stall_entry_consumed5 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg5;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    assign SE_stall_entry_toReg3 = SE_stall_entry_StallValid & SE_stall_entry_consumed3;
    assign SE_stall_entry_toReg4 = SE_stall_entry_StallValid & SE_stall_entry_consumed4;
    assign SE_stall_entry_toReg5 = SE_stall_entry_StallValid & SE_stall_entry_consumed5;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_or3 = SE_stall_entry_consumed3 & SE_stall_entry_or2;
    assign SE_stall_entry_or4 = SE_stall_entry_consumed4 & SE_stall_entry_or3;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed5 & SE_stall_entry_or4);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    assign SE_stall_entry_V3 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg3);
    assign SE_stall_entry_V4 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg4);
    assign SE_stall_entry_V5 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg5);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,35)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep82_infect_sweep9(BITJOIN,47)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep82_infect_sweep9_q = i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep82_infect_sweep9_out_dest_data_out_41_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep82_infect_sweep9(BITSELECT,48)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep82_infect_sweep9_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep82_infect_sweep9_q[0:0]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_narrow85_infect_sweep1(BITJOIN,39)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_narrow85_infect_sweep1_q = i_llvm_fpga_ffwd_dest_i1_narrow85_infect_sweep1_out_dest_data_out_46_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_narrow85_infect_sweep1(BITSELECT,40)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_narrow85_infect_sweep1_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_narrow85_infect_sweep1_q[0:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0(BITJOIN,43)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_q = i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_out_dest_data_out_42_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0(BITSELECT,44)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_q[0:0]);

    // i_narrow190_infect_sweep2(LOGICAL,11)@0
    assign i_narrow190_infect_sweep2_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_b & bubble_select_i_llvm_fpga_ffwd_dest_i1_narrow85_infect_sweep1_b;

    // i_tobool_4_infect_sweep7(LOGICAL,12)@0
    assign i_tobool_4_infect_sweep7_q = i_narrow190_infect_sweep2_q ^ VCC_q;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_add_481_infect_sweep3(BITJOIN,51)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_add_481_infect_sweep3_q = i_llvm_fpga_ffwd_dest_i32_add_481_infect_sweep3_out_dest_data_out_39_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_add_481_infect_sweep3(BITSELECT,52)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_add_481_infect_sweep3_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_add_481_infect_sweep3_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_inc198_484_infect_sweep4(BITJOIN,55)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_inc198_484_infect_sweep4_q = i_llvm_fpga_ffwd_dest_i32_inc198_484_infect_sweep4_out_dest_data_out_45_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_inc198_484_infect_sweep4(BITSELECT,56)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_inc198_484_infect_sweep4_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_inc198_484_infect_sweep4_q[31:0]);

    // i_cmp152_4_infect_sweep5(COMPARE,5)@0
    assign i_cmp152_4_infect_sweep5_a = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_inc198_484_infect_sweep4_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_inc198_484_infect_sweep4_b});
    assign i_cmp152_4_infect_sweep5_b = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_add_481_infect_sweep3_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_add_481_infect_sweep3_b});
    assign i_cmp152_4_infect_sweep5_o = $unsigned($signed(i_cmp152_4_infect_sweep5_a) - $signed(i_cmp152_4_infect_sweep5_b));
    assign i_cmp152_4_infect_sweep5_c[0] = i_cmp152_4_infect_sweep5_o[33];

    // i_unnamed_infect_sweep8(LOGICAL,14)@0
    assign i_unnamed_infect_sweep8_q = i_cmp152_4_infect_sweep5_c & i_tobool_4_infect_sweep7_q;

    // i_unnamed_infect_sweep10(LOGICAL,13)@0
    assign i_unnamed_infect_sweep10_q = i_unnamed_infect_sweep8_q & bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep82_infect_sweep9_b;

    // bubble_join_stall_entry(BITJOIN,59)
    assign bubble_join_stall_entry_q = in_c0_exe12225;

    // bubble_select_stall_entry(BITSELECT,60)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);

    // dupName_0_sync_out_x(GPOUT,37)@0
    assign out_c0_exe12225 = bubble_select_stall_entry_b;
    assign out_unnamed_infect_sweep80 = i_unnamed_infect_sweep10_q;
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep81_infect_sweep0_V0;

endmodule
