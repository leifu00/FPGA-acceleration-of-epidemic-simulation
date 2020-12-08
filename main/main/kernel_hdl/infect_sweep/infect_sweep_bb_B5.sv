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

// SystemVerilog created from infect_sweep_bb_B5
// SystemVerilog created on Tue Nov 24 22:05:07 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module infect_sweep_bb_B5 (
    input wire [63:0] in_CellLookup,
    input wire [63:0] in_Hosts,
    input wire [63:0] in_Households,
    input wire [63:0] in_Places,
    input wire [31:0] in_c0_exe11_0,
    input wire [31:0] in_intel_reserved_ffwd_15_0,
    input wire [0:0] in_intel_reserved_ffwd_16_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_intel_reserved_ffwd_5_0,
    input wire [0:0] in_intel_reserved_ffwd_6_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe11,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_infect_sweep_B5_stall_region_out_c0_exe11;
    wire [0:0] bb_infect_sweep_B5_stall_region_out_stall_out;
    wire [0:0] bb_infect_sweep_B5_stall_region_out_unnamed_infect_sweep16;
    wire [0:0] bb_infect_sweep_B5_stall_region_out_valid_out;
    wire [31:0] infect_sweep_B5_branch_out_c0_exe11;
    wire [0:0] infect_sweep_B5_branch_out_stall_out;
    wire [0:0] infect_sweep_B5_branch_out_valid_out_0;
    wire [0:0] infect_sweep_B5_branch_out_valid_out_1;
    wire [31:0] infect_sweep_B5_merge_out_c0_exe11;
    wire [0:0] infect_sweep_B5_merge_out_stall_out_0;
    wire [0:0] infect_sweep_B5_merge_out_valid_out;


    // infect_sweep_B5_merge(BLACKBOX,4)
    infect_sweep_B5_merge theinfect_sweep_B5_merge (
        .in_c0_exe11_0(in_c0_exe11_0),
        .in_stall_in(bb_infect_sweep_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe11(infect_sweep_B5_merge_out_c0_exe11),
        .out_stall_out_0(infect_sweep_B5_merge_out_stall_out_0),
        .out_valid_out(infect_sweep_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_infect_sweep_B5_stall_region(BLACKBOX,2)
    infect_sweep_bb_B5_stall_region thebb_infect_sweep_B5_stall_region (
        .in_c0_exe11(infect_sweep_B5_merge_out_c0_exe11),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(infect_sweep_B5_branch_out_stall_out),
        .in_valid_in(infect_sweep_B5_merge_out_valid_out),
        .out_c0_exe11(bb_infect_sweep_B5_stall_region_out_c0_exe11),
        .out_stall_out(bb_infect_sweep_B5_stall_region_out_stall_out),
        .out_unnamed_infect_sweep16(bb_infect_sweep_B5_stall_region_out_unnamed_infect_sweep16),
        .out_valid_out(bb_infect_sweep_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // infect_sweep_B5_branch(BLACKBOX,3)
    infect_sweep_B5_branch theinfect_sweep_B5_branch (
        .in_c0_exe11(bb_infect_sweep_B5_stall_region_out_c0_exe11),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_unnamed_infect_sweep16(bb_infect_sweep_B5_stall_region_out_unnamed_infect_sweep16),
        .in_valid_in(bb_infect_sweep_B5_stall_region_out_valid_out),
        .out_c0_exe11(infect_sweep_B5_branch_out_c0_exe11),
        .out_stall_out(infect_sweep_B5_branch_out_stall_out),
        .out_valid_out_0(infect_sweep_B5_branch_out_valid_out_0),
        .out_valid_out_1(infect_sweep_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe11(GPOUT,18)
    assign out_c0_exe11 = infect_sweep_B5_branch_out_c0_exe11;

    // out_stall_out_0(GPOUT,19)
    assign out_stall_out_0 = infect_sweep_B5_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,20)
    assign out_valid_out_0 = infect_sweep_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,21)
    assign out_valid_out_1 = infect_sweep_B5_branch_out_valid_out_1;

endmodule
