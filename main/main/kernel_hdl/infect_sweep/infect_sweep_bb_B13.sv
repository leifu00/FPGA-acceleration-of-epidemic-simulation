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

// SystemVerilog created from infect_sweep_bb_B13
// SystemVerilog created on Tue Nov 24 22:05:06 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module infect_sweep_bb_B13 (
    input wire [63:0] in_CellLookup,
    input wire [63:0] in_Hosts,
    input wire [63:0] in_Households,
    input wire [63:0] in_Places,
    input wire [31:0] in_c0_exe12023_0,
    input wire [31:0] in_intel_reserved_ffwd_21_0,
    input wire [0:0] in_intel_reserved_ffwd_23_0,
    input wire [0:0] in_intel_reserved_ffwd_24_0,
    input wire [31:0] in_intel_reserved_ffwd_27_0,
    input wire [0:0] in_intel_reserved_ffwd_28_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe12023,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_infect_sweep_B13_stall_region_out_c0_exe12023;
    wire [0:0] bb_infect_sweep_B13_stall_region_out_stall_out;
    wire [0:0] bb_infect_sweep_B13_stall_region_out_unnamed_infect_sweep48;
    wire [0:0] bb_infect_sweep_B13_stall_region_out_valid_out;
    wire [31:0] infect_sweep_B13_branch_out_c0_exe12023;
    wire [0:0] infect_sweep_B13_branch_out_stall_out;
    wire [0:0] infect_sweep_B13_branch_out_valid_out_0;
    wire [0:0] infect_sweep_B13_branch_out_valid_out_1;
    wire [31:0] infect_sweep_B13_merge_out_c0_exe12023;
    wire [0:0] infect_sweep_B13_merge_out_stall_out_0;
    wire [0:0] infect_sweep_B13_merge_out_valid_out;


    // infect_sweep_B13_merge(BLACKBOX,4)
    infect_sweep_B13_merge theinfect_sweep_B13_merge (
        .in_c0_exe12023_0(in_c0_exe12023_0),
        .in_stall_in(bb_infect_sweep_B13_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe12023(infect_sweep_B13_merge_out_c0_exe12023),
        .out_stall_out_0(infect_sweep_B13_merge_out_stall_out_0),
        .out_valid_out(infect_sweep_B13_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_infect_sweep_B13_stall_region(BLACKBOX,2)
    infect_sweep_bb_B13_stall_region thebb_infect_sweep_B13_stall_region (
        .in_c0_exe12023(infect_sweep_B13_merge_out_c0_exe12023),
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_intel_reserved_ffwd_28_0(in_intel_reserved_ffwd_28_0),
        .in_stall_in(infect_sweep_B13_branch_out_stall_out),
        .in_valid_in(infect_sweep_B13_merge_out_valid_out),
        .out_c0_exe12023(bb_infect_sweep_B13_stall_region_out_c0_exe12023),
        .out_stall_out(bb_infect_sweep_B13_stall_region_out_stall_out),
        .out_unnamed_infect_sweep48(bb_infect_sweep_B13_stall_region_out_unnamed_infect_sweep48),
        .out_valid_out(bb_infect_sweep_B13_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // infect_sweep_B13_branch(BLACKBOX,3)
    infect_sweep_B13_branch theinfect_sweep_B13_branch (
        .in_c0_exe12023(bb_infect_sweep_B13_stall_region_out_c0_exe12023),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_unnamed_infect_sweep48(bb_infect_sweep_B13_stall_region_out_unnamed_infect_sweep48),
        .in_valid_in(bb_infect_sweep_B13_stall_region_out_valid_out),
        .out_c0_exe12023(infect_sweep_B13_branch_out_c0_exe12023),
        .out_stall_out(infect_sweep_B13_branch_out_stall_out),
        .out_valid_out_0(infect_sweep_B13_branch_out_valid_out_0),
        .out_valid_out_1(infect_sweep_B13_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe12023(GPOUT,18)
    assign out_c0_exe12023 = infect_sweep_B13_branch_out_c0_exe12023;

    // out_stall_out_0(GPOUT,19)
    assign out_stall_out_0 = infect_sweep_B13_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,20)
    assign out_valid_out_0 = infect_sweep_B13_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,21)
    assign out_valid_out_1 = infect_sweep_B13_branch_out_valid_out_1;

endmodule
