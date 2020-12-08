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

// SystemVerilog created from infect_sweep_bb_B2
// SystemVerilog created on Tue Nov 24 22:05:07 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module infect_sweep_bb_B2 (
    input wire [63:0] in_CellLookup,
    input wire [63:0] in_Hosts,
    input wire [63:0] in_Households,
    input wire [63:0] in_Places,
    input wire [511:0] in_c_sroa_0_0_copyload228_infect_sweep_avm_readdata,
    input wire [0:0] in_c_sroa_0_0_copyload228_infect_sweep_avm_readdatavalid,
    input wire [0:0] in_c_sroa_0_0_copyload228_infect_sweep_avm_waitrequest,
    input wire [0:0] in_c_sroa_0_0_copyload228_infect_sweep_avm_writeack,
    input wire [511:0] in_c_sroa_20_0_copyload246_lm_infect_sweep_avm_readdata,
    input wire [0:0] in_c_sroa_20_0_copyload246_lm_infect_sweep_avm_readdatavalid,
    input wire [0:0] in_c_sroa_20_0_copyload246_lm_infect_sweep_avm_waitrequest,
    input wire [0:0] in_c_sroa_20_0_copyload246_lm_infect_sweep_avm_writeack,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked86_0,
    input wire [0:0] in_forked86_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_47_0,
    input wire [511:0] in_lm58_infect_sweep_avm_readdata,
    input wire [0:0] in_lm58_infect_sweep_avm_readdatavalid,
    input wire [0:0] in_lm58_infect_sweep_avm_waitrequest,
    input wire [0:0] in_lm58_infect_sweep_avm_writeack,
    input wire [511:0] in_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_readdata,
    input wire [0:0] in_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_writeack,
    input wire [511:0] in_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_readdata,
    input wire [0:0] in_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_readdatavalid,
    input wire [0:0] in_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_waitrequest,
    input wire [0:0] in_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [30:0] out_c_sroa_0_0_copyload228_infect_sweep_avm_address,
    output wire [4:0] out_c_sroa_0_0_copyload228_infect_sweep_avm_burstcount,
    output wire [63:0] out_c_sroa_0_0_copyload228_infect_sweep_avm_byteenable,
    output wire [0:0] out_c_sroa_0_0_copyload228_infect_sweep_avm_enable,
    output wire [0:0] out_c_sroa_0_0_copyload228_infect_sweep_avm_read,
    output wire [0:0] out_c_sroa_0_0_copyload228_infect_sweep_avm_write,
    output wire [511:0] out_c_sroa_0_0_copyload228_infect_sweep_avm_writedata,
    output wire [30:0] out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_address,
    output wire [4:0] out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_burstcount,
    output wire [63:0] out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_byteenable,
    output wire [0:0] out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_enable,
    output wire [0:0] out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_read,
    output wire [0:0] out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_write,
    output wire [511:0] out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_writedata,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    output wire [0:0] out_intel_reserved_ffwd_5_0,
    output wire [0:0] out_intel_reserved_ffwd_6_0,
    output wire [0:0] out_intel_reserved_ffwd_7_0,
    output wire [30:0] out_lm58_infect_sweep_avm_address,
    output wire [4:0] out_lm58_infect_sweep_avm_burstcount,
    output wire [63:0] out_lm58_infect_sweep_avm_byteenable,
    output wire [0:0] out_lm58_infect_sweep_avm_enable,
    output wire [0:0] out_lm58_infect_sweep_avm_read,
    output wire [0:0] out_lm58_infect_sweep_avm_write,
    output wire [511:0] out_lm58_infect_sweep_avm_writedata,
    output wire [30:0] out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_address,
    output wire [4:0] out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_burstcount,
    output wire [63:0] out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_enable,
    output wire [0:0] out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_read,
    output wire [0:0] out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_write,
    output wire [511:0] out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_writedata,
    output wire [30:0] out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_address,
    output wire [4:0] out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_burstcount,
    output wire [63:0] out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_byteenable,
    output wire [0:0] out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_enable,
    output wire [0:0] out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_read,
    output wire [0:0] out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_write,
    output wire [511:0] out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [30:0] bb_infect_sweep_B2_stall_region_out_c_sroa_0_0_copyload228_infect_sweep_avm_address;
    wire [4:0] bb_infect_sweep_B2_stall_region_out_c_sroa_0_0_copyload228_infect_sweep_avm_burstcount;
    wire [63:0] bb_infect_sweep_B2_stall_region_out_c_sroa_0_0_copyload228_infect_sweep_avm_byteenable;
    wire [0:0] bb_infect_sweep_B2_stall_region_out_c_sroa_0_0_copyload228_infect_sweep_avm_enable;
    wire [0:0] bb_infect_sweep_B2_stall_region_out_c_sroa_0_0_copyload228_infect_sweep_avm_read;
    wire [0:0] bb_infect_sweep_B2_stall_region_out_c_sroa_0_0_copyload228_infect_sweep_avm_write;
    wire [511:0] bb_infect_sweep_B2_stall_region_out_c_sroa_0_0_copyload228_infect_sweep_avm_writedata;
    wire [30:0] bb_infect_sweep_B2_stall_region_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_address;
    wire [4:0] bb_infect_sweep_B2_stall_region_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_burstcount;
    wire [63:0] bb_infect_sweep_B2_stall_region_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_byteenable;
    wire [0:0] bb_infect_sweep_B2_stall_region_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_enable;
    wire [0:0] bb_infect_sweep_B2_stall_region_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_read;
    wire [0:0] bb_infect_sweep_B2_stall_region_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_write;
    wire [511:0] bb_infect_sweep_B2_stall_region_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_writedata;
    wire [31:0] bb_infect_sweep_B2_stall_region_out_intel_reserved_ffwd_1_0;
    wire [31:0] bb_infect_sweep_B2_stall_region_out_intel_reserved_ffwd_2_0;
    wire [31:0] bb_infect_sweep_B2_stall_region_out_intel_reserved_ffwd_3_0;
    wire [31:0] bb_infect_sweep_B2_stall_region_out_intel_reserved_ffwd_4_0;
    wire [0:0] bb_infect_sweep_B2_stall_region_out_intel_reserved_ffwd_5_0;
    wire [0:0] bb_infect_sweep_B2_stall_region_out_intel_reserved_ffwd_6_0;
    wire [0:0] bb_infect_sweep_B2_stall_region_out_intel_reserved_ffwd_7_0;
    wire [30:0] bb_infect_sweep_B2_stall_region_out_lm58_infect_sweep_avm_address;
    wire [4:0] bb_infect_sweep_B2_stall_region_out_lm58_infect_sweep_avm_burstcount;
    wire [63:0] bb_infect_sweep_B2_stall_region_out_lm58_infect_sweep_avm_byteenable;
    wire [0:0] bb_infect_sweep_B2_stall_region_out_lm58_infect_sweep_avm_enable;
    wire [0:0] bb_infect_sweep_B2_stall_region_out_lm58_infect_sweep_avm_read;
    wire [0:0] bb_infect_sweep_B2_stall_region_out_lm58_infect_sweep_avm_write;
    wire [511:0] bb_infect_sweep_B2_stall_region_out_lm58_infect_sweep_avm_writedata;
    wire [30:0] bb_infect_sweep_B2_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_address;
    wire [4:0] bb_infect_sweep_B2_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_burstcount;
    wire [63:0] bb_infect_sweep_B2_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_byteenable;
    wire [0:0] bb_infect_sweep_B2_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_enable;
    wire [0:0] bb_infect_sweep_B2_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_read;
    wire [0:0] bb_infect_sweep_B2_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_write;
    wire [511:0] bb_infect_sweep_B2_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_writedata;
    wire [30:0] bb_infect_sweep_B2_stall_region_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_address;
    wire [4:0] bb_infect_sweep_B2_stall_region_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_burstcount;
    wire [63:0] bb_infect_sweep_B2_stall_region_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_byteenable;
    wire [0:0] bb_infect_sweep_B2_stall_region_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_enable;
    wire [0:0] bb_infect_sweep_B2_stall_region_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_read;
    wire [0:0] bb_infect_sweep_B2_stall_region_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_write;
    wire [511:0] bb_infect_sweep_B2_stall_region_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_writedata;
    wire [0:0] bb_infect_sweep_B2_stall_region_out_stall_out;
    wire [0:0] bb_infect_sweep_B2_stall_region_out_valid_out;
    wire [0:0] infect_sweep_B2_branch_out_stall_out;
    wire [0:0] infect_sweep_B2_branch_out_valid_out_0;
    wire [0:0] infect_sweep_B2_merge_out_forked86;
    wire [0:0] infect_sweep_B2_merge_out_stall_out_0;
    wire [0:0] infect_sweep_B2_merge_out_stall_out_1;
    wire [0:0] infect_sweep_B2_merge_out_valid_out;


    // infect_sweep_B2_branch(BLACKBOX,3)
    infect_sweep_B2_branch theinfect_sweep_B2_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_infect_sweep_B2_stall_region_out_valid_out),
        .out_stall_out(infect_sweep_B2_branch_out_stall_out),
        .out_valid_out_0(infect_sweep_B2_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // infect_sweep_B2_merge(BLACKBOX,4)
    infect_sweep_B2_merge theinfect_sweep_B2_merge (
        .in_forked86_0(in_forked86_0),
        .in_forked86_1(in_forked86_1),
        .in_stall_in(bb_infect_sweep_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked86(infect_sweep_B2_merge_out_forked86),
        .out_stall_out_0(infect_sweep_B2_merge_out_stall_out_0),
        .out_stall_out_1(infect_sweep_B2_merge_out_stall_out_1),
        .out_valid_out(infect_sweep_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_infect_sweep_B2_stall_region(BLACKBOX,2)
    infect_sweep_bb_B2_stall_region thebb_infect_sweep_B2_stall_region (
        .in_CellLookup(in_CellLookup),
        .in_Hosts(in_Hosts),
        .in_Households(in_Households),
        .in_c_sroa_0_0_copyload228_infect_sweep_avm_readdata(in_c_sroa_0_0_copyload228_infect_sweep_avm_readdata),
        .in_c_sroa_0_0_copyload228_infect_sweep_avm_readdatavalid(in_c_sroa_0_0_copyload228_infect_sweep_avm_readdatavalid),
        .in_c_sroa_0_0_copyload228_infect_sweep_avm_waitrequest(in_c_sroa_0_0_copyload228_infect_sweep_avm_waitrequest),
        .in_c_sroa_0_0_copyload228_infect_sweep_avm_writeack(in_c_sroa_0_0_copyload228_infect_sweep_avm_writeack),
        .in_c_sroa_20_0_copyload246_lm_infect_sweep_avm_readdata(in_c_sroa_20_0_copyload246_lm_infect_sweep_avm_readdata),
        .in_c_sroa_20_0_copyload246_lm_infect_sweep_avm_readdatavalid(in_c_sroa_20_0_copyload246_lm_infect_sweep_avm_readdatavalid),
        .in_c_sroa_20_0_copyload246_lm_infect_sweep_avm_waitrequest(in_c_sroa_20_0_copyload246_lm_infect_sweep_avm_waitrequest),
        .in_c_sroa_20_0_copyload246_lm_infect_sweep_avm_writeack(in_c_sroa_20_0_copyload246_lm_infect_sweep_avm_writeack),
        .in_flush(in_flush),
        .in_forked86(infect_sweep_B2_merge_out_forked86),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_47_0(in_intel_reserved_ffwd_47_0),
        .in_lm58_infect_sweep_avm_readdata(in_lm58_infect_sweep_avm_readdata),
        .in_lm58_infect_sweep_avm_readdatavalid(in_lm58_infect_sweep_avm_readdatavalid),
        .in_lm58_infect_sweep_avm_waitrequest(in_lm58_infect_sweep_avm_waitrequest),
        .in_lm58_infect_sweep_avm_writeack(in_lm58_infect_sweep_avm_writeack),
        .in_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_readdata(in_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_readdata),
        .in_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_readdatavalid(in_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_readdatavalid),
        .in_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_waitrequest(in_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_waitrequest),
        .in_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_writeack(in_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_writeack),
        .in_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_readdata(in_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_readdata),
        .in_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_readdatavalid(in_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_readdatavalid),
        .in_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_waitrequest(in_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_waitrequest),
        .in_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_writeack(in_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_writeack),
        .in_stall_in(infect_sweep_B2_branch_out_stall_out),
        .in_valid_in(infect_sweep_B2_merge_out_valid_out),
        .out_c_sroa_0_0_copyload228_infect_sweep_avm_address(bb_infect_sweep_B2_stall_region_out_c_sroa_0_0_copyload228_infect_sweep_avm_address),
        .out_c_sroa_0_0_copyload228_infect_sweep_avm_burstcount(bb_infect_sweep_B2_stall_region_out_c_sroa_0_0_copyload228_infect_sweep_avm_burstcount),
        .out_c_sroa_0_0_copyload228_infect_sweep_avm_byteenable(bb_infect_sweep_B2_stall_region_out_c_sroa_0_0_copyload228_infect_sweep_avm_byteenable),
        .out_c_sroa_0_0_copyload228_infect_sweep_avm_enable(bb_infect_sweep_B2_stall_region_out_c_sroa_0_0_copyload228_infect_sweep_avm_enable),
        .out_c_sroa_0_0_copyload228_infect_sweep_avm_read(bb_infect_sweep_B2_stall_region_out_c_sroa_0_0_copyload228_infect_sweep_avm_read),
        .out_c_sroa_0_0_copyload228_infect_sweep_avm_write(bb_infect_sweep_B2_stall_region_out_c_sroa_0_0_copyload228_infect_sweep_avm_write),
        .out_c_sroa_0_0_copyload228_infect_sweep_avm_writedata(bb_infect_sweep_B2_stall_region_out_c_sroa_0_0_copyload228_infect_sweep_avm_writedata),
        .out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_address(bb_infect_sweep_B2_stall_region_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_address),
        .out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_burstcount(bb_infect_sweep_B2_stall_region_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_burstcount),
        .out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_byteenable(bb_infect_sweep_B2_stall_region_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_byteenable),
        .out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_enable(bb_infect_sweep_B2_stall_region_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_enable),
        .out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_read(bb_infect_sweep_B2_stall_region_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_read),
        .out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_write(bb_infect_sweep_B2_stall_region_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_write),
        .out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_writedata(bb_infect_sweep_B2_stall_region_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_writedata),
        .out_intel_reserved_ffwd_1_0(bb_infect_sweep_B2_stall_region_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_infect_sweep_B2_stall_region_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_infect_sweep_B2_stall_region_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_infect_sweep_B2_stall_region_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_infect_sweep_B2_stall_region_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_infect_sweep_B2_stall_region_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_infect_sweep_B2_stall_region_out_intel_reserved_ffwd_7_0),
        .out_lm58_infect_sweep_avm_address(bb_infect_sweep_B2_stall_region_out_lm58_infect_sweep_avm_address),
        .out_lm58_infect_sweep_avm_burstcount(bb_infect_sweep_B2_stall_region_out_lm58_infect_sweep_avm_burstcount),
        .out_lm58_infect_sweep_avm_byteenable(bb_infect_sweep_B2_stall_region_out_lm58_infect_sweep_avm_byteenable),
        .out_lm58_infect_sweep_avm_enable(bb_infect_sweep_B2_stall_region_out_lm58_infect_sweep_avm_enable),
        .out_lm58_infect_sweep_avm_read(bb_infect_sweep_B2_stall_region_out_lm58_infect_sweep_avm_read),
        .out_lm58_infect_sweep_avm_write(bb_infect_sweep_B2_stall_region_out_lm58_infect_sweep_avm_write),
        .out_lm58_infect_sweep_avm_writedata(bb_infect_sweep_B2_stall_region_out_lm58_infect_sweep_avm_writedata),
        .out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_address(bb_infect_sweep_B2_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_address),
        .out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_burstcount(bb_infect_sweep_B2_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_burstcount),
        .out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_byteenable(bb_infect_sweep_B2_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_byteenable),
        .out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_enable(bb_infect_sweep_B2_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_enable),
        .out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_read(bb_infect_sweep_B2_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_read),
        .out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_write(bb_infect_sweep_B2_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_write),
        .out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_writedata(bb_infect_sweep_B2_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_writedata),
        .out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_address(bb_infect_sweep_B2_stall_region_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_address),
        .out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_burstcount(bb_infect_sweep_B2_stall_region_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_burstcount),
        .out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_byteenable(bb_infect_sweep_B2_stall_region_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_byteenable),
        .out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_enable(bb_infect_sweep_B2_stall_region_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_enable),
        .out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_read(bb_infect_sweep_B2_stall_region_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_read),
        .out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_write(bb_infect_sweep_B2_stall_region_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_write),
        .out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_writedata(bb_infect_sweep_B2_stall_region_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_writedata),
        .out_stall_out(bb_infect_sweep_B2_stall_region_out_stall_out),
        .out_valid_out(bb_infect_sweep_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c_sroa_0_0_copyload228_infect_sweep_avm_address(GPOUT,37)
    assign out_c_sroa_0_0_copyload228_infect_sweep_avm_address = bb_infect_sweep_B2_stall_region_out_c_sroa_0_0_copyload228_infect_sweep_avm_address;

    // out_c_sroa_0_0_copyload228_infect_sweep_avm_burstcount(GPOUT,38)
    assign out_c_sroa_0_0_copyload228_infect_sweep_avm_burstcount = bb_infect_sweep_B2_stall_region_out_c_sroa_0_0_copyload228_infect_sweep_avm_burstcount;

    // out_c_sroa_0_0_copyload228_infect_sweep_avm_byteenable(GPOUT,39)
    assign out_c_sroa_0_0_copyload228_infect_sweep_avm_byteenable = bb_infect_sweep_B2_stall_region_out_c_sroa_0_0_copyload228_infect_sweep_avm_byteenable;

    // out_c_sroa_0_0_copyload228_infect_sweep_avm_enable(GPOUT,40)
    assign out_c_sroa_0_0_copyload228_infect_sweep_avm_enable = bb_infect_sweep_B2_stall_region_out_c_sroa_0_0_copyload228_infect_sweep_avm_enable;

    // out_c_sroa_0_0_copyload228_infect_sweep_avm_read(GPOUT,41)
    assign out_c_sroa_0_0_copyload228_infect_sweep_avm_read = bb_infect_sweep_B2_stall_region_out_c_sroa_0_0_copyload228_infect_sweep_avm_read;

    // out_c_sroa_0_0_copyload228_infect_sweep_avm_write(GPOUT,42)
    assign out_c_sroa_0_0_copyload228_infect_sweep_avm_write = bb_infect_sweep_B2_stall_region_out_c_sroa_0_0_copyload228_infect_sweep_avm_write;

    // out_c_sroa_0_0_copyload228_infect_sweep_avm_writedata(GPOUT,43)
    assign out_c_sroa_0_0_copyload228_infect_sweep_avm_writedata = bb_infect_sweep_B2_stall_region_out_c_sroa_0_0_copyload228_infect_sweep_avm_writedata;

    // out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_address(GPOUT,44)
    assign out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_address = bb_infect_sweep_B2_stall_region_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_address;

    // out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_burstcount(GPOUT,45)
    assign out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_burstcount = bb_infect_sweep_B2_stall_region_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_burstcount;

    // out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_byteenable(GPOUT,46)
    assign out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_byteenable = bb_infect_sweep_B2_stall_region_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_byteenable;

    // out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_enable(GPOUT,47)
    assign out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_enable = bb_infect_sweep_B2_stall_region_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_enable;

    // out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_read(GPOUT,48)
    assign out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_read = bb_infect_sweep_B2_stall_region_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_read;

    // out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_write(GPOUT,49)
    assign out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_write = bb_infect_sweep_B2_stall_region_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_write;

    // out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_writedata(GPOUT,50)
    assign out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_writedata = bb_infect_sweep_B2_stall_region_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_writedata;

    // out_intel_reserved_ffwd_1_0(GPOUT,51)
    assign out_intel_reserved_ffwd_1_0 = bb_infect_sweep_B2_stall_region_out_intel_reserved_ffwd_1_0;

    // out_intel_reserved_ffwd_2_0(GPOUT,52)
    assign out_intel_reserved_ffwd_2_0 = bb_infect_sweep_B2_stall_region_out_intel_reserved_ffwd_2_0;

    // out_intel_reserved_ffwd_3_0(GPOUT,53)
    assign out_intel_reserved_ffwd_3_0 = bb_infect_sweep_B2_stall_region_out_intel_reserved_ffwd_3_0;

    // out_intel_reserved_ffwd_4_0(GPOUT,54)
    assign out_intel_reserved_ffwd_4_0 = bb_infect_sweep_B2_stall_region_out_intel_reserved_ffwd_4_0;

    // out_intel_reserved_ffwd_5_0(GPOUT,55)
    assign out_intel_reserved_ffwd_5_0 = bb_infect_sweep_B2_stall_region_out_intel_reserved_ffwd_5_0;

    // out_intel_reserved_ffwd_6_0(GPOUT,56)
    assign out_intel_reserved_ffwd_6_0 = bb_infect_sweep_B2_stall_region_out_intel_reserved_ffwd_6_0;

    // out_intel_reserved_ffwd_7_0(GPOUT,57)
    assign out_intel_reserved_ffwd_7_0 = bb_infect_sweep_B2_stall_region_out_intel_reserved_ffwd_7_0;

    // out_lm58_infect_sweep_avm_address(GPOUT,58)
    assign out_lm58_infect_sweep_avm_address = bb_infect_sweep_B2_stall_region_out_lm58_infect_sweep_avm_address;

    // out_lm58_infect_sweep_avm_burstcount(GPOUT,59)
    assign out_lm58_infect_sweep_avm_burstcount = bb_infect_sweep_B2_stall_region_out_lm58_infect_sweep_avm_burstcount;

    // out_lm58_infect_sweep_avm_byteenable(GPOUT,60)
    assign out_lm58_infect_sweep_avm_byteenable = bb_infect_sweep_B2_stall_region_out_lm58_infect_sweep_avm_byteenable;

    // out_lm58_infect_sweep_avm_enable(GPOUT,61)
    assign out_lm58_infect_sweep_avm_enable = bb_infect_sweep_B2_stall_region_out_lm58_infect_sweep_avm_enable;

    // out_lm58_infect_sweep_avm_read(GPOUT,62)
    assign out_lm58_infect_sweep_avm_read = bb_infect_sweep_B2_stall_region_out_lm58_infect_sweep_avm_read;

    // out_lm58_infect_sweep_avm_write(GPOUT,63)
    assign out_lm58_infect_sweep_avm_write = bb_infect_sweep_B2_stall_region_out_lm58_infect_sweep_avm_write;

    // out_lm58_infect_sweep_avm_writedata(GPOUT,64)
    assign out_lm58_infect_sweep_avm_writedata = bb_infect_sweep_B2_stall_region_out_lm58_infect_sweep_avm_writedata;

    // out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_address(GPOUT,65)
    assign out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_address = bb_infect_sweep_B2_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_address;

    // out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_burstcount(GPOUT,66)
    assign out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_burstcount = bb_infect_sweep_B2_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_burstcount;

    // out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_byteenable(GPOUT,67)
    assign out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_byteenable = bb_infect_sweep_B2_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_byteenable;

    // out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_enable(GPOUT,68)
    assign out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_enable = bb_infect_sweep_B2_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_enable;

    // out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_read(GPOUT,69)
    assign out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_read = bb_infect_sweep_B2_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_read;

    // out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_write(GPOUT,70)
    assign out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_write = bb_infect_sweep_B2_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_write;

    // out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_writedata(GPOUT,71)
    assign out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_writedata = bb_infect_sweep_B2_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_writedata;

    // out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_address(GPOUT,72)
    assign out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_address = bb_infect_sweep_B2_stall_region_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_address;

    // out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_burstcount(GPOUT,73)
    assign out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_burstcount = bb_infect_sweep_B2_stall_region_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_burstcount;

    // out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_byteenable(GPOUT,74)
    assign out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_byteenable = bb_infect_sweep_B2_stall_region_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_byteenable;

    // out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_enable(GPOUT,75)
    assign out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_enable = bb_infect_sweep_B2_stall_region_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_enable;

    // out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_read(GPOUT,76)
    assign out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_read = bb_infect_sweep_B2_stall_region_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_read;

    // out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_write(GPOUT,77)
    assign out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_write = bb_infect_sweep_B2_stall_region_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_write;

    // out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_writedata(GPOUT,78)
    assign out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_writedata = bb_infect_sweep_B2_stall_region_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_writedata;

    // out_stall_out_0(GPOUT,79)
    assign out_stall_out_0 = infect_sweep_B2_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,80)
    assign out_stall_out_1 = infect_sweep_B2_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,81)
    assign out_valid_out_0 = infect_sweep_B2_branch_out_valid_out_0;

endmodule
