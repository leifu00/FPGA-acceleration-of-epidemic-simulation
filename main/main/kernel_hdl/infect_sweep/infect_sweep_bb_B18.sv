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

// SystemVerilog created from infect_sweep_bb_B18
// SystemVerilog created on Tue Nov 24 22:05:07 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module infect_sweep_bb_B18 (
    input wire [63:0] in_CellLookup,
    input wire [63:0] in_Hosts,
    input wire [63:0] in_Households,
    input wire [63:0] in_Places,
    input wire [511:0] in_c_sroa_20_0_copyload244_lm_infect_sweep_avm_readdata,
    input wire [0:0] in_c_sroa_20_0_copyload244_lm_infect_sweep_avm_readdatavalid,
    input wire [0:0] in_c_sroa_20_0_copyload244_lm_infect_sweep_avm_waitrequest,
    input wire [0:0] in_c_sroa_20_0_copyload244_lm_infect_sweep_avm_writeack,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [511:0] in_lm157_infect_sweep_avm_readdata,
    input wire [0:0] in_lm157_infect_sweep_avm_readdatavalid,
    input wire [0:0] in_lm157_infect_sweep_avm_waitrequest,
    input wire [0:0] in_lm157_infect_sweep_avm_writeack,
    input wire [511:0] in_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_readdata,
    input wire [0:0] in_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_writeack,
    input wire [511:0] in_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_readdata,
    input wire [0:0] in_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_readdatavalid,
    input wire [0:0] in_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_waitrequest,
    input wire [0:0] in_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [511:0] in_unmaskedload188_infect_sweep_avm_readdata,
    input wire [0:0] in_unmaskedload188_infect_sweep_avm_readdatavalid,
    input wire [0:0] in_unmaskedload188_infect_sweep_avm_waitrequest,
    input wire [0:0] in_unmaskedload188_infect_sweep_avm_writeack,
    input wire [0:0] in_valid_in_0,
    output wire [30:0] out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_address,
    output wire [4:0] out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_burstcount,
    output wire [63:0] out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_byteenable,
    output wire [0:0] out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_enable,
    output wire [0:0] out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_read,
    output wire [0:0] out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_write,
    output wire [511:0] out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_writedata,
    output wire [31:0] out_intel_reserved_ffwd_38_0,
    output wire [31:0] out_intel_reserved_ffwd_39_0,
    output wire [31:0] out_intel_reserved_ffwd_40_0,
    output wire [0:0] out_intel_reserved_ffwd_41_0,
    output wire [0:0] out_intel_reserved_ffwd_42_0,
    output wire [0:0] out_intel_reserved_ffwd_43_0,
    output wire [30:0] out_lm157_infect_sweep_avm_address,
    output wire [4:0] out_lm157_infect_sweep_avm_burstcount,
    output wire [63:0] out_lm157_infect_sweep_avm_byteenable,
    output wire [0:0] out_lm157_infect_sweep_avm_enable,
    output wire [0:0] out_lm157_infect_sweep_avm_read,
    output wire [0:0] out_lm157_infect_sweep_avm_write,
    output wire [511:0] out_lm157_infect_sweep_avm_writedata,
    output wire [30:0] out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_address,
    output wire [4:0] out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_burstcount,
    output wire [63:0] out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_enable,
    output wire [0:0] out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_read,
    output wire [0:0] out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_write,
    output wire [511:0] out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_writedata,
    output wire [30:0] out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_address,
    output wire [4:0] out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_burstcount,
    output wire [63:0] out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_byteenable,
    output wire [0:0] out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_enable,
    output wire [0:0] out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_read,
    output wire [0:0] out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_write,
    output wire [511:0] out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [30:0] out_unmaskedload188_infect_sweep_avm_address,
    output wire [4:0] out_unmaskedload188_infect_sweep_avm_burstcount,
    output wire [63:0] out_unmaskedload188_infect_sweep_avm_byteenable,
    output wire [0:0] out_unmaskedload188_infect_sweep_avm_enable,
    output wire [0:0] out_unmaskedload188_infect_sweep_avm_read,
    output wire [0:0] out_unmaskedload188_infect_sweep_avm_write,
    output wire [511:0] out_unmaskedload188_infect_sweep_avm_writedata,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [30:0] bb_infect_sweep_B18_stall_region_out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_address;
    wire [4:0] bb_infect_sweep_B18_stall_region_out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_burstcount;
    wire [63:0] bb_infect_sweep_B18_stall_region_out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_byteenable;
    wire [0:0] bb_infect_sweep_B18_stall_region_out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_enable;
    wire [0:0] bb_infect_sweep_B18_stall_region_out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_read;
    wire [0:0] bb_infect_sweep_B18_stall_region_out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_write;
    wire [511:0] bb_infect_sweep_B18_stall_region_out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_writedata;
    wire [31:0] bb_infect_sweep_B18_stall_region_out_intel_reserved_ffwd_38_0;
    wire [31:0] bb_infect_sweep_B18_stall_region_out_intel_reserved_ffwd_39_0;
    wire [31:0] bb_infect_sweep_B18_stall_region_out_intel_reserved_ffwd_40_0;
    wire [0:0] bb_infect_sweep_B18_stall_region_out_intel_reserved_ffwd_41_0;
    wire [0:0] bb_infect_sweep_B18_stall_region_out_intel_reserved_ffwd_42_0;
    wire [0:0] bb_infect_sweep_B18_stall_region_out_intel_reserved_ffwd_43_0;
    wire [30:0] bb_infect_sweep_B18_stall_region_out_lm157_infect_sweep_avm_address;
    wire [4:0] bb_infect_sweep_B18_stall_region_out_lm157_infect_sweep_avm_burstcount;
    wire [63:0] bb_infect_sweep_B18_stall_region_out_lm157_infect_sweep_avm_byteenable;
    wire [0:0] bb_infect_sweep_B18_stall_region_out_lm157_infect_sweep_avm_enable;
    wire [0:0] bb_infect_sweep_B18_stall_region_out_lm157_infect_sweep_avm_read;
    wire [0:0] bb_infect_sweep_B18_stall_region_out_lm157_infect_sweep_avm_write;
    wire [511:0] bb_infect_sweep_B18_stall_region_out_lm157_infect_sweep_avm_writedata;
    wire [30:0] bb_infect_sweep_B18_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_address;
    wire [4:0] bb_infect_sweep_B18_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_burstcount;
    wire [63:0] bb_infect_sweep_B18_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_byteenable;
    wire [0:0] bb_infect_sweep_B18_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_enable;
    wire [0:0] bb_infect_sweep_B18_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_read;
    wire [0:0] bb_infect_sweep_B18_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_write;
    wire [511:0] bb_infect_sweep_B18_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_writedata;
    wire [30:0] bb_infect_sweep_B18_stall_region_out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_address;
    wire [4:0] bb_infect_sweep_B18_stall_region_out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_burstcount;
    wire [63:0] bb_infect_sweep_B18_stall_region_out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_byteenable;
    wire [0:0] bb_infect_sweep_B18_stall_region_out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_enable;
    wire [0:0] bb_infect_sweep_B18_stall_region_out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_read;
    wire [0:0] bb_infect_sweep_B18_stall_region_out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_write;
    wire [511:0] bb_infect_sweep_B18_stall_region_out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_writedata;
    wire [0:0] bb_infect_sweep_B18_stall_region_out_stall_out;
    wire [30:0] bb_infect_sweep_B18_stall_region_out_unmaskedload188_infect_sweep_avm_address;
    wire [4:0] bb_infect_sweep_B18_stall_region_out_unmaskedload188_infect_sweep_avm_burstcount;
    wire [63:0] bb_infect_sweep_B18_stall_region_out_unmaskedload188_infect_sweep_avm_byteenable;
    wire [0:0] bb_infect_sweep_B18_stall_region_out_unmaskedload188_infect_sweep_avm_enable;
    wire [0:0] bb_infect_sweep_B18_stall_region_out_unmaskedload188_infect_sweep_avm_read;
    wire [0:0] bb_infect_sweep_B18_stall_region_out_unmaskedload188_infect_sweep_avm_write;
    wire [511:0] bb_infect_sweep_B18_stall_region_out_unmaskedload188_infect_sweep_avm_writedata;
    wire [0:0] bb_infect_sweep_B18_stall_region_out_valid_out;
    wire [0:0] infect_sweep_B18_branch_out_stall_out;
    wire [0:0] infect_sweep_B18_branch_out_valid_out_0;
    wire [0:0] infect_sweep_B18_merge_out_stall_out_0;
    wire [0:0] infect_sweep_B18_merge_out_valid_out;


    // infect_sweep_B18_merge(BLACKBOX,4)
    infect_sweep_B18_merge theinfect_sweep_B18_merge (
        .in_stall_in(bb_infect_sweep_B18_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(infect_sweep_B18_merge_out_stall_out_0),
        .out_valid_out(infect_sweep_B18_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // infect_sweep_B18_branch(BLACKBOX,3)
    infect_sweep_B18_branch theinfect_sweep_B18_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_infect_sweep_B18_stall_region_out_valid_out),
        .out_stall_out(infect_sweep_B18_branch_out_stall_out),
        .out_valid_out_0(infect_sweep_B18_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_infect_sweep_B18_stall_region(BLACKBOX,2)
    infect_sweep_bb_B18_stall_region thebb_infect_sweep_B18_stall_region (
        .in_CellLookup(in_CellLookup),
        .in_Hosts(in_Hosts),
        .in_Households(in_Households),
        .in_c_sroa_20_0_copyload244_lm_infect_sweep_avm_readdata(in_c_sroa_20_0_copyload244_lm_infect_sweep_avm_readdata),
        .in_c_sroa_20_0_copyload244_lm_infect_sweep_avm_readdatavalid(in_c_sroa_20_0_copyload244_lm_infect_sweep_avm_readdatavalid),
        .in_c_sroa_20_0_copyload244_lm_infect_sweep_avm_waitrequest(in_c_sroa_20_0_copyload244_lm_infect_sweep_avm_waitrequest),
        .in_c_sroa_20_0_copyload244_lm_infect_sweep_avm_writeack(in_c_sroa_20_0_copyload244_lm_infect_sweep_avm_writeack),
        .in_flush(in_flush),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_lm157_infect_sweep_avm_readdata(in_lm157_infect_sweep_avm_readdata),
        .in_lm157_infect_sweep_avm_readdatavalid(in_lm157_infect_sweep_avm_readdatavalid),
        .in_lm157_infect_sweep_avm_waitrequest(in_lm157_infect_sweep_avm_waitrequest),
        .in_lm157_infect_sweep_avm_writeack(in_lm157_infect_sweep_avm_writeack),
        .in_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_readdata(in_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_readdata),
        .in_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_readdatavalid(in_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_readdatavalid),
        .in_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_waitrequest(in_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_waitrequest),
        .in_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_writeack(in_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_writeack),
        .in_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_readdata(in_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_readdata),
        .in_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_readdatavalid(in_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_readdatavalid),
        .in_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_waitrequest(in_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_waitrequest),
        .in_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_writeack(in_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_writeack),
        .in_stall_in(infect_sweep_B18_branch_out_stall_out),
        .in_unmaskedload188_infect_sweep_avm_readdata(in_unmaskedload188_infect_sweep_avm_readdata),
        .in_unmaskedload188_infect_sweep_avm_readdatavalid(in_unmaskedload188_infect_sweep_avm_readdatavalid),
        .in_unmaskedload188_infect_sweep_avm_waitrequest(in_unmaskedload188_infect_sweep_avm_waitrequest),
        .in_unmaskedload188_infect_sweep_avm_writeack(in_unmaskedload188_infect_sweep_avm_writeack),
        .in_valid_in(infect_sweep_B18_merge_out_valid_out),
        .out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_address(bb_infect_sweep_B18_stall_region_out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_address),
        .out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_burstcount(bb_infect_sweep_B18_stall_region_out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_burstcount),
        .out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_byteenable(bb_infect_sweep_B18_stall_region_out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_byteenable),
        .out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_enable(bb_infect_sweep_B18_stall_region_out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_enable),
        .out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_read(bb_infect_sweep_B18_stall_region_out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_read),
        .out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_write(bb_infect_sweep_B18_stall_region_out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_write),
        .out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_writedata(bb_infect_sweep_B18_stall_region_out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_writedata),
        .out_intel_reserved_ffwd_38_0(bb_infect_sweep_B18_stall_region_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(bb_infect_sweep_B18_stall_region_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_40_0(bb_infect_sweep_B18_stall_region_out_intel_reserved_ffwd_40_0),
        .out_intel_reserved_ffwd_41_0(bb_infect_sweep_B18_stall_region_out_intel_reserved_ffwd_41_0),
        .out_intel_reserved_ffwd_42_0(bb_infect_sweep_B18_stall_region_out_intel_reserved_ffwd_42_0),
        .out_intel_reserved_ffwd_43_0(bb_infect_sweep_B18_stall_region_out_intel_reserved_ffwd_43_0),
        .out_lm157_infect_sweep_avm_address(bb_infect_sweep_B18_stall_region_out_lm157_infect_sweep_avm_address),
        .out_lm157_infect_sweep_avm_burstcount(bb_infect_sweep_B18_stall_region_out_lm157_infect_sweep_avm_burstcount),
        .out_lm157_infect_sweep_avm_byteenable(bb_infect_sweep_B18_stall_region_out_lm157_infect_sweep_avm_byteenable),
        .out_lm157_infect_sweep_avm_enable(bb_infect_sweep_B18_stall_region_out_lm157_infect_sweep_avm_enable),
        .out_lm157_infect_sweep_avm_read(bb_infect_sweep_B18_stall_region_out_lm157_infect_sweep_avm_read),
        .out_lm157_infect_sweep_avm_write(bb_infect_sweep_B18_stall_region_out_lm157_infect_sweep_avm_write),
        .out_lm157_infect_sweep_avm_writedata(bb_infect_sweep_B18_stall_region_out_lm157_infect_sweep_avm_writedata),
        .out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_address(bb_infect_sweep_B18_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_address),
        .out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_burstcount(bb_infect_sweep_B18_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_burstcount),
        .out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_byteenable(bb_infect_sweep_B18_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_byteenable),
        .out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_enable(bb_infect_sweep_B18_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_enable),
        .out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_read(bb_infect_sweep_B18_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_read),
        .out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_write(bb_infect_sweep_B18_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_write),
        .out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_writedata(bb_infect_sweep_B18_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_writedata),
        .out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_address(bb_infect_sweep_B18_stall_region_out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_address),
        .out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_burstcount(bb_infect_sweep_B18_stall_region_out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_burstcount),
        .out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_byteenable(bb_infect_sweep_B18_stall_region_out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_byteenable),
        .out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_enable(bb_infect_sweep_B18_stall_region_out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_enable),
        .out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_read(bb_infect_sweep_B18_stall_region_out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_read),
        .out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_write(bb_infect_sweep_B18_stall_region_out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_write),
        .out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_writedata(bb_infect_sweep_B18_stall_region_out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_writedata),
        .out_stall_out(bb_infect_sweep_B18_stall_region_out_stall_out),
        .out_unmaskedload188_infect_sweep_avm_address(bb_infect_sweep_B18_stall_region_out_unmaskedload188_infect_sweep_avm_address),
        .out_unmaskedload188_infect_sweep_avm_burstcount(bb_infect_sweep_B18_stall_region_out_unmaskedload188_infect_sweep_avm_burstcount),
        .out_unmaskedload188_infect_sweep_avm_byteenable(bb_infect_sweep_B18_stall_region_out_unmaskedload188_infect_sweep_avm_byteenable),
        .out_unmaskedload188_infect_sweep_avm_enable(bb_infect_sweep_B18_stall_region_out_unmaskedload188_infect_sweep_avm_enable),
        .out_unmaskedload188_infect_sweep_avm_read(bb_infect_sweep_B18_stall_region_out_unmaskedload188_infect_sweep_avm_read),
        .out_unmaskedload188_infect_sweep_avm_write(bb_infect_sweep_B18_stall_region_out_unmaskedload188_infect_sweep_avm_write),
        .out_unmaskedload188_infect_sweep_avm_writedata(bb_infect_sweep_B18_stall_region_out_unmaskedload188_infect_sweep_avm_writedata),
        .out_valid_out(bb_infect_sweep_B18_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_address(GPOUT,34)
    assign out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_address = bb_infect_sweep_B18_stall_region_out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_address;

    // out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_burstcount(GPOUT,35)
    assign out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_burstcount = bb_infect_sweep_B18_stall_region_out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_burstcount;

    // out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_byteenable(GPOUT,36)
    assign out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_byteenable = bb_infect_sweep_B18_stall_region_out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_byteenable;

    // out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_enable(GPOUT,37)
    assign out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_enable = bb_infect_sweep_B18_stall_region_out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_enable;

    // out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_read(GPOUT,38)
    assign out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_read = bb_infect_sweep_B18_stall_region_out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_read;

    // out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_write(GPOUT,39)
    assign out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_write = bb_infect_sweep_B18_stall_region_out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_write;

    // out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_writedata(GPOUT,40)
    assign out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_writedata = bb_infect_sweep_B18_stall_region_out_c_sroa_20_0_copyload244_lm_infect_sweep_avm_writedata;

    // out_intel_reserved_ffwd_38_0(GPOUT,41)
    assign out_intel_reserved_ffwd_38_0 = bb_infect_sweep_B18_stall_region_out_intel_reserved_ffwd_38_0;

    // out_intel_reserved_ffwd_39_0(GPOUT,42)
    assign out_intel_reserved_ffwd_39_0 = bb_infect_sweep_B18_stall_region_out_intel_reserved_ffwd_39_0;

    // out_intel_reserved_ffwd_40_0(GPOUT,43)
    assign out_intel_reserved_ffwd_40_0 = bb_infect_sweep_B18_stall_region_out_intel_reserved_ffwd_40_0;

    // out_intel_reserved_ffwd_41_0(GPOUT,44)
    assign out_intel_reserved_ffwd_41_0 = bb_infect_sweep_B18_stall_region_out_intel_reserved_ffwd_41_0;

    // out_intel_reserved_ffwd_42_0(GPOUT,45)
    assign out_intel_reserved_ffwd_42_0 = bb_infect_sweep_B18_stall_region_out_intel_reserved_ffwd_42_0;

    // out_intel_reserved_ffwd_43_0(GPOUT,46)
    assign out_intel_reserved_ffwd_43_0 = bb_infect_sweep_B18_stall_region_out_intel_reserved_ffwd_43_0;

    // out_lm157_infect_sweep_avm_address(GPOUT,47)
    assign out_lm157_infect_sweep_avm_address = bb_infect_sweep_B18_stall_region_out_lm157_infect_sweep_avm_address;

    // out_lm157_infect_sweep_avm_burstcount(GPOUT,48)
    assign out_lm157_infect_sweep_avm_burstcount = bb_infect_sweep_B18_stall_region_out_lm157_infect_sweep_avm_burstcount;

    // out_lm157_infect_sweep_avm_byteenable(GPOUT,49)
    assign out_lm157_infect_sweep_avm_byteenable = bb_infect_sweep_B18_stall_region_out_lm157_infect_sweep_avm_byteenable;

    // out_lm157_infect_sweep_avm_enable(GPOUT,50)
    assign out_lm157_infect_sweep_avm_enable = bb_infect_sweep_B18_stall_region_out_lm157_infect_sweep_avm_enable;

    // out_lm157_infect_sweep_avm_read(GPOUT,51)
    assign out_lm157_infect_sweep_avm_read = bb_infect_sweep_B18_stall_region_out_lm157_infect_sweep_avm_read;

    // out_lm157_infect_sweep_avm_write(GPOUT,52)
    assign out_lm157_infect_sweep_avm_write = bb_infect_sweep_B18_stall_region_out_lm157_infect_sweep_avm_write;

    // out_lm157_infect_sweep_avm_writedata(GPOUT,53)
    assign out_lm157_infect_sweep_avm_writedata = bb_infect_sweep_B18_stall_region_out_lm157_infect_sweep_avm_writedata;

    // out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_address(GPOUT,54)
    assign out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_address = bb_infect_sweep_B18_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_address;

    // out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_burstcount(GPOUT,55)
    assign out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_burstcount = bb_infect_sweep_B18_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_burstcount;

    // out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_byteenable(GPOUT,56)
    assign out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_byteenable = bb_infect_sweep_B18_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_byteenable;

    // out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_enable(GPOUT,57)
    assign out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_enable = bb_infect_sweep_B18_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_enable;

    // out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_read(GPOUT,58)
    assign out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_read = bb_infect_sweep_B18_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_read;

    // out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_write(GPOUT,59)
    assign out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_write = bb_infect_sweep_B18_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_write;

    // out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_writedata(GPOUT,60)
    assign out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_writedata = bb_infect_sweep_B18_stall_region_out_memcoalesce_load_infect_sweep_fpgaunique_4_infect_sweep_avm_writedata;

    // out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_address(GPOUT,61)
    assign out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_address = bb_infect_sweep_B18_stall_region_out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_address;

    // out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_burstcount(GPOUT,62)
    assign out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_burstcount = bb_infect_sweep_B18_stall_region_out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_burstcount;

    // out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_byteenable(GPOUT,63)
    assign out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_byteenable = bb_infect_sweep_B18_stall_region_out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_byteenable;

    // out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_enable(GPOUT,64)
    assign out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_enable = bb_infect_sweep_B18_stall_region_out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_enable;

    // out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_read(GPOUT,65)
    assign out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_read = bb_infect_sweep_B18_stall_region_out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_read;

    // out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_write(GPOUT,66)
    assign out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_write = bb_infect_sweep_B18_stall_region_out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_write;

    // out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_writedata(GPOUT,67)
    assign out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_writedata = bb_infect_sweep_B18_stall_region_out_si_sroa_3_0_copyload_4_pre_lm_infect_sweep_avm_writedata;

    // out_stall_out_0(GPOUT,68)
    assign out_stall_out_0 = infect_sweep_B18_merge_out_stall_out_0;

    // out_unmaskedload188_infect_sweep_avm_address(GPOUT,69)
    assign out_unmaskedload188_infect_sweep_avm_address = bb_infect_sweep_B18_stall_region_out_unmaskedload188_infect_sweep_avm_address;

    // out_unmaskedload188_infect_sweep_avm_burstcount(GPOUT,70)
    assign out_unmaskedload188_infect_sweep_avm_burstcount = bb_infect_sweep_B18_stall_region_out_unmaskedload188_infect_sweep_avm_burstcount;

    // out_unmaskedload188_infect_sweep_avm_byteenable(GPOUT,71)
    assign out_unmaskedload188_infect_sweep_avm_byteenable = bb_infect_sweep_B18_stall_region_out_unmaskedload188_infect_sweep_avm_byteenable;

    // out_unmaskedload188_infect_sweep_avm_enable(GPOUT,72)
    assign out_unmaskedload188_infect_sweep_avm_enable = bb_infect_sweep_B18_stall_region_out_unmaskedload188_infect_sweep_avm_enable;

    // out_unmaskedload188_infect_sweep_avm_read(GPOUT,73)
    assign out_unmaskedload188_infect_sweep_avm_read = bb_infect_sweep_B18_stall_region_out_unmaskedload188_infect_sweep_avm_read;

    // out_unmaskedload188_infect_sweep_avm_write(GPOUT,74)
    assign out_unmaskedload188_infect_sweep_avm_write = bb_infect_sweep_B18_stall_region_out_unmaskedload188_infect_sweep_avm_write;

    // out_unmaskedload188_infect_sweep_avm_writedata(GPOUT,75)
    assign out_unmaskedload188_infect_sweep_avm_writedata = bb_infect_sweep_B18_stall_region_out_unmaskedload188_infect_sweep_avm_writedata;

    // out_valid_out_0(GPOUT,76)
    assign out_valid_out_0 = infect_sweep_B18_branch_out_valid_out_0;

endmodule
