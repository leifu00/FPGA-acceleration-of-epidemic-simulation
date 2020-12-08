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

// SystemVerilog created from infect_sweep_bb_B6
// SystemVerilog created on Tue Nov 24 22:05:07 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module infect_sweep_bb_B6 (
    input wire [63:0] in_CellLookup,
    input wire [63:0] in_Hosts,
    input wire [63:0] in_Households,
    input wire [63:0] in_Places,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked150_0,
    input wire [0:0] in_forked150_1,
    input wire [31:0] in_inc198173_0,
    input wire [31:0] in_inc198173_1,
    input wire [63:0] in_intel_reserved_ffwd_14_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_intel_reserved_ffwd_6_0,
    input wire [0:0] in_intel_reserved_ffwd_7_0,
    input wire [511:0] in_lm3_infect_sweep_avm_readdata,
    input wire [0:0] in_lm3_infect_sweep_avm_readdatavalid,
    input wire [0:0] in_lm3_infect_sweep_avm_waitrequest,
    input wire [0:0] in_lm3_infect_sweep_avm_writeack,
    input wire [511:0] in_lm71_infect_sweep_avm_readdata,
    input wire [0:0] in_lm71_infect_sweep_avm_readdatavalid,
    input wire [0:0] in_lm71_infect_sweep_avm_waitrequest,
    input wire [0:0] in_lm71_infect_sweep_avm_writeack,
    input wire [511:0] in_lm_infect_sweep_avm_readdata,
    input wire [0:0] in_lm_infect_sweep_avm_readdatavalid,
    input wire [0:0] in_lm_infect_sweep_avm_waitrequest,
    input wire [0:0] in_lm_infect_sweep_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_intel_reserved_ffwd_16_0,
    output wire [30:0] out_lm3_infect_sweep_avm_address,
    output wire [4:0] out_lm3_infect_sweep_avm_burstcount,
    output wire [63:0] out_lm3_infect_sweep_avm_byteenable,
    output wire [0:0] out_lm3_infect_sweep_avm_enable,
    output wire [0:0] out_lm3_infect_sweep_avm_read,
    output wire [0:0] out_lm3_infect_sweep_avm_write,
    output wire [511:0] out_lm3_infect_sweep_avm_writedata,
    output wire [30:0] out_lm71_infect_sweep_avm_address,
    output wire [4:0] out_lm71_infect_sweep_avm_burstcount,
    output wire [63:0] out_lm71_infect_sweep_avm_byteenable,
    output wire [0:0] out_lm71_infect_sweep_avm_enable,
    output wire [0:0] out_lm71_infect_sweep_avm_read,
    output wire [0:0] out_lm71_infect_sweep_avm_write,
    output wire [511:0] out_lm71_infect_sweep_avm_writedata,
    output wire [30:0] out_lm_infect_sweep_avm_address,
    output wire [4:0] out_lm_infect_sweep_avm_burstcount,
    output wire [63:0] out_lm_infect_sweep_avm_byteenable,
    output wire [0:0] out_lm_infect_sweep_avm_enable,
    output wire [0:0] out_lm_infect_sweep_avm_read,
    output wire [0:0] out_lm_infect_sweep_avm_write,
    output wire [511:0] out_lm_infect_sweep_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_infect_sweep_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going153_infect_sweep10_exiting_stall_out;
    wire [0:0] bb_infect_sweep_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going153_infect_sweep10_exiting_valid_out;
    wire [31:0] bb_infect_sweep_B6_stall_region_out_c0_exe1;
    wire [0:0] bb_infect_sweep_B6_stall_region_out_intel_reserved_ffwd_16_0;
    wire [30:0] bb_infect_sweep_B6_stall_region_out_lm3_infect_sweep_avm_address;
    wire [4:0] bb_infect_sweep_B6_stall_region_out_lm3_infect_sweep_avm_burstcount;
    wire [63:0] bb_infect_sweep_B6_stall_region_out_lm3_infect_sweep_avm_byteenable;
    wire [0:0] bb_infect_sweep_B6_stall_region_out_lm3_infect_sweep_avm_enable;
    wire [0:0] bb_infect_sweep_B6_stall_region_out_lm3_infect_sweep_avm_read;
    wire [0:0] bb_infect_sweep_B6_stall_region_out_lm3_infect_sweep_avm_write;
    wire [511:0] bb_infect_sweep_B6_stall_region_out_lm3_infect_sweep_avm_writedata;
    wire [30:0] bb_infect_sweep_B6_stall_region_out_lm71_infect_sweep_avm_address;
    wire [4:0] bb_infect_sweep_B6_stall_region_out_lm71_infect_sweep_avm_burstcount;
    wire [63:0] bb_infect_sweep_B6_stall_region_out_lm71_infect_sweep_avm_byteenable;
    wire [0:0] bb_infect_sweep_B6_stall_region_out_lm71_infect_sweep_avm_enable;
    wire [0:0] bb_infect_sweep_B6_stall_region_out_lm71_infect_sweep_avm_read;
    wire [0:0] bb_infect_sweep_B6_stall_region_out_lm71_infect_sweep_avm_write;
    wire [511:0] bb_infect_sweep_B6_stall_region_out_lm71_infect_sweep_avm_writedata;
    wire [30:0] bb_infect_sweep_B6_stall_region_out_lm_infect_sweep_avm_address;
    wire [4:0] bb_infect_sweep_B6_stall_region_out_lm_infect_sweep_avm_burstcount;
    wire [63:0] bb_infect_sweep_B6_stall_region_out_lm_infect_sweep_avm_byteenable;
    wire [0:0] bb_infect_sweep_B6_stall_region_out_lm_infect_sweep_avm_enable;
    wire [0:0] bb_infect_sweep_B6_stall_region_out_lm_infect_sweep_avm_read;
    wire [0:0] bb_infect_sweep_B6_stall_region_out_lm_infect_sweep_avm_write;
    wire [511:0] bb_infect_sweep_B6_stall_region_out_lm_infect_sweep_avm_writedata;
    wire [0:0] bb_infect_sweep_B6_stall_region_out_masked162;
    wire [0:0] bb_infect_sweep_B6_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_infect_sweep_B6_stall_region_out_stall_out;
    wire [0:0] bb_infect_sweep_B6_stall_region_out_valid_out;
    wire [31:0] infect_sweep_B6_branch_out_c0_exe1;
    wire [0:0] infect_sweep_B6_branch_out_stall_out;
    wire [0:0] infect_sweep_B6_branch_out_valid_out_0;
    wire [0:0] infect_sweep_B6_branch_out_valid_out_1;
    wire [0:0] infect_sweep_B6_merge_out_forked150;
    wire [31:0] infect_sweep_B6_merge_out_inc198173;
    wire [0:0] infect_sweep_B6_merge_out_stall_out_0;
    wire [0:0] infect_sweep_B6_merge_out_stall_out_1;
    wire [0:0] infect_sweep_B6_merge_out_valid_out;


    // infect_sweep_B6_merge(BLACKBOX,4)
    infect_sweep_B6_merge theinfect_sweep_B6_merge (
        .in_forked150_0(in_forked150_0),
        .in_forked150_1(in_forked150_1),
        .in_inc198173_0(in_inc198173_0),
        .in_inc198173_1(in_inc198173_1),
        .in_stall_in(bb_infect_sweep_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked150(infect_sweep_B6_merge_out_forked150),
        .out_inc198173(infect_sweep_B6_merge_out_inc198173),
        .out_stall_out_0(infect_sweep_B6_merge_out_stall_out_0),
        .out_stall_out_1(infect_sweep_B6_merge_out_stall_out_1),
        .out_valid_out(infect_sweep_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_infect_sweep_B6_stall_region(BLACKBOX,2)
    infect_sweep_bb_B6_stall_region thebb_infect_sweep_B6_stall_region (
        .in_Hosts(in_Hosts),
        .in_Places(in_Places),
        .in_flush(in_flush),
        .in_forked150(infect_sweep_B6_merge_out_forked150),
        .in_inc198173(infect_sweep_B6_merge_out_inc198173),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_lm3_infect_sweep_avm_readdata(in_lm3_infect_sweep_avm_readdata),
        .in_lm3_infect_sweep_avm_readdatavalid(in_lm3_infect_sweep_avm_readdatavalid),
        .in_lm3_infect_sweep_avm_waitrequest(in_lm3_infect_sweep_avm_waitrequest),
        .in_lm3_infect_sweep_avm_writeack(in_lm3_infect_sweep_avm_writeack),
        .in_lm71_infect_sweep_avm_readdata(in_lm71_infect_sweep_avm_readdata),
        .in_lm71_infect_sweep_avm_readdatavalid(in_lm71_infect_sweep_avm_readdatavalid),
        .in_lm71_infect_sweep_avm_waitrequest(in_lm71_infect_sweep_avm_waitrequest),
        .in_lm71_infect_sweep_avm_writeack(in_lm71_infect_sweep_avm_writeack),
        .in_lm_infect_sweep_avm_readdata(in_lm_infect_sweep_avm_readdata),
        .in_lm_infect_sweep_avm_readdatavalid(in_lm_infect_sweep_avm_readdatavalid),
        .in_lm_infect_sweep_avm_waitrequest(in_lm_infect_sweep_avm_waitrequest),
        .in_lm_infect_sweep_avm_writeack(in_lm_infect_sweep_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(infect_sweep_B6_branch_out_stall_out),
        .in_valid_in(infect_sweep_B6_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going153_infect_sweep10_exiting_stall_out(bb_infect_sweep_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going153_infect_sweep10_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going153_infect_sweep10_exiting_valid_out(bb_infect_sweep_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going153_infect_sweep10_exiting_valid_out),
        .out_c0_exe1(bb_infect_sweep_B6_stall_region_out_c0_exe1),
        .out_intel_reserved_ffwd_16_0(bb_infect_sweep_B6_stall_region_out_intel_reserved_ffwd_16_0),
        .out_lm3_infect_sweep_avm_address(bb_infect_sweep_B6_stall_region_out_lm3_infect_sweep_avm_address),
        .out_lm3_infect_sweep_avm_burstcount(bb_infect_sweep_B6_stall_region_out_lm3_infect_sweep_avm_burstcount),
        .out_lm3_infect_sweep_avm_byteenable(bb_infect_sweep_B6_stall_region_out_lm3_infect_sweep_avm_byteenable),
        .out_lm3_infect_sweep_avm_enable(bb_infect_sweep_B6_stall_region_out_lm3_infect_sweep_avm_enable),
        .out_lm3_infect_sweep_avm_read(bb_infect_sweep_B6_stall_region_out_lm3_infect_sweep_avm_read),
        .out_lm3_infect_sweep_avm_write(bb_infect_sweep_B6_stall_region_out_lm3_infect_sweep_avm_write),
        .out_lm3_infect_sweep_avm_writedata(bb_infect_sweep_B6_stall_region_out_lm3_infect_sweep_avm_writedata),
        .out_lm71_infect_sweep_avm_address(bb_infect_sweep_B6_stall_region_out_lm71_infect_sweep_avm_address),
        .out_lm71_infect_sweep_avm_burstcount(bb_infect_sweep_B6_stall_region_out_lm71_infect_sweep_avm_burstcount),
        .out_lm71_infect_sweep_avm_byteenable(bb_infect_sweep_B6_stall_region_out_lm71_infect_sweep_avm_byteenable),
        .out_lm71_infect_sweep_avm_enable(bb_infect_sweep_B6_stall_region_out_lm71_infect_sweep_avm_enable),
        .out_lm71_infect_sweep_avm_read(bb_infect_sweep_B6_stall_region_out_lm71_infect_sweep_avm_read),
        .out_lm71_infect_sweep_avm_write(bb_infect_sweep_B6_stall_region_out_lm71_infect_sweep_avm_write),
        .out_lm71_infect_sweep_avm_writedata(bb_infect_sweep_B6_stall_region_out_lm71_infect_sweep_avm_writedata),
        .out_lm_infect_sweep_avm_address(bb_infect_sweep_B6_stall_region_out_lm_infect_sweep_avm_address),
        .out_lm_infect_sweep_avm_burstcount(bb_infect_sweep_B6_stall_region_out_lm_infect_sweep_avm_burstcount),
        .out_lm_infect_sweep_avm_byteenable(bb_infect_sweep_B6_stall_region_out_lm_infect_sweep_avm_byteenable),
        .out_lm_infect_sweep_avm_enable(bb_infect_sweep_B6_stall_region_out_lm_infect_sweep_avm_enable),
        .out_lm_infect_sweep_avm_read(bb_infect_sweep_B6_stall_region_out_lm_infect_sweep_avm_read),
        .out_lm_infect_sweep_avm_write(bb_infect_sweep_B6_stall_region_out_lm_infect_sweep_avm_write),
        .out_lm_infect_sweep_avm_writedata(bb_infect_sweep_B6_stall_region_out_lm_infect_sweep_avm_writedata),
        .out_masked162(bb_infect_sweep_B6_stall_region_out_masked162),
        .out_pipeline_valid_out(bb_infect_sweep_B6_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_infect_sweep_B6_stall_region_out_stall_out),
        .out_valid_out(bb_infect_sweep_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // infect_sweep_B6_branch(BLACKBOX,3)
    infect_sweep_B6_branch theinfect_sweep_B6_branch (
        .in_c0_exe1(bb_infect_sweep_B6_stall_region_out_c0_exe1),
        .in_masked162(bb_infect_sweep_B6_stall_region_out_masked162),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_infect_sweep_B6_stall_region_out_valid_out),
        .out_c0_exe1(infect_sweep_B6_branch_out_c0_exe1),
        .out_stall_out(infect_sweep_B6_branch_out_stall_out),
        .out_valid_out_0(infect_sweep_B6_branch_out_valid_out_0),
        .out_valid_out_1(infect_sweep_B6_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1(GPOUT,34)
    assign out_c0_exe1 = infect_sweep_B6_branch_out_c0_exe1;

    // out_exiting_stall_out(GPOUT,35)
    assign out_exiting_stall_out = bb_infect_sweep_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going153_infect_sweep10_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,36)
    assign out_exiting_valid_out = bb_infect_sweep_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going153_infect_sweep10_exiting_valid_out;

    // out_intel_reserved_ffwd_16_0(GPOUT,37)
    assign out_intel_reserved_ffwd_16_0 = bb_infect_sweep_B6_stall_region_out_intel_reserved_ffwd_16_0;

    // out_lm3_infect_sweep_avm_address(GPOUT,38)
    assign out_lm3_infect_sweep_avm_address = bb_infect_sweep_B6_stall_region_out_lm3_infect_sweep_avm_address;

    // out_lm3_infect_sweep_avm_burstcount(GPOUT,39)
    assign out_lm3_infect_sweep_avm_burstcount = bb_infect_sweep_B6_stall_region_out_lm3_infect_sweep_avm_burstcount;

    // out_lm3_infect_sweep_avm_byteenable(GPOUT,40)
    assign out_lm3_infect_sweep_avm_byteenable = bb_infect_sweep_B6_stall_region_out_lm3_infect_sweep_avm_byteenable;

    // out_lm3_infect_sweep_avm_enable(GPOUT,41)
    assign out_lm3_infect_sweep_avm_enable = bb_infect_sweep_B6_stall_region_out_lm3_infect_sweep_avm_enable;

    // out_lm3_infect_sweep_avm_read(GPOUT,42)
    assign out_lm3_infect_sweep_avm_read = bb_infect_sweep_B6_stall_region_out_lm3_infect_sweep_avm_read;

    // out_lm3_infect_sweep_avm_write(GPOUT,43)
    assign out_lm3_infect_sweep_avm_write = bb_infect_sweep_B6_stall_region_out_lm3_infect_sweep_avm_write;

    // out_lm3_infect_sweep_avm_writedata(GPOUT,44)
    assign out_lm3_infect_sweep_avm_writedata = bb_infect_sweep_B6_stall_region_out_lm3_infect_sweep_avm_writedata;

    // out_lm71_infect_sweep_avm_address(GPOUT,45)
    assign out_lm71_infect_sweep_avm_address = bb_infect_sweep_B6_stall_region_out_lm71_infect_sweep_avm_address;

    // out_lm71_infect_sweep_avm_burstcount(GPOUT,46)
    assign out_lm71_infect_sweep_avm_burstcount = bb_infect_sweep_B6_stall_region_out_lm71_infect_sweep_avm_burstcount;

    // out_lm71_infect_sweep_avm_byteenable(GPOUT,47)
    assign out_lm71_infect_sweep_avm_byteenable = bb_infect_sweep_B6_stall_region_out_lm71_infect_sweep_avm_byteenable;

    // out_lm71_infect_sweep_avm_enable(GPOUT,48)
    assign out_lm71_infect_sweep_avm_enable = bb_infect_sweep_B6_stall_region_out_lm71_infect_sweep_avm_enable;

    // out_lm71_infect_sweep_avm_read(GPOUT,49)
    assign out_lm71_infect_sweep_avm_read = bb_infect_sweep_B6_stall_region_out_lm71_infect_sweep_avm_read;

    // out_lm71_infect_sweep_avm_write(GPOUT,50)
    assign out_lm71_infect_sweep_avm_write = bb_infect_sweep_B6_stall_region_out_lm71_infect_sweep_avm_write;

    // out_lm71_infect_sweep_avm_writedata(GPOUT,51)
    assign out_lm71_infect_sweep_avm_writedata = bb_infect_sweep_B6_stall_region_out_lm71_infect_sweep_avm_writedata;

    // out_lm_infect_sweep_avm_address(GPOUT,52)
    assign out_lm_infect_sweep_avm_address = bb_infect_sweep_B6_stall_region_out_lm_infect_sweep_avm_address;

    // out_lm_infect_sweep_avm_burstcount(GPOUT,53)
    assign out_lm_infect_sweep_avm_burstcount = bb_infect_sweep_B6_stall_region_out_lm_infect_sweep_avm_burstcount;

    // out_lm_infect_sweep_avm_byteenable(GPOUT,54)
    assign out_lm_infect_sweep_avm_byteenable = bb_infect_sweep_B6_stall_region_out_lm_infect_sweep_avm_byteenable;

    // out_lm_infect_sweep_avm_enable(GPOUT,55)
    assign out_lm_infect_sweep_avm_enable = bb_infect_sweep_B6_stall_region_out_lm_infect_sweep_avm_enable;

    // out_lm_infect_sweep_avm_read(GPOUT,56)
    assign out_lm_infect_sweep_avm_read = bb_infect_sweep_B6_stall_region_out_lm_infect_sweep_avm_read;

    // out_lm_infect_sweep_avm_write(GPOUT,57)
    assign out_lm_infect_sweep_avm_write = bb_infect_sweep_B6_stall_region_out_lm_infect_sweep_avm_write;

    // out_lm_infect_sweep_avm_writedata(GPOUT,58)
    assign out_lm_infect_sweep_avm_writedata = bb_infect_sweep_B6_stall_region_out_lm_infect_sweep_avm_writedata;

    // out_stall_out_0(GPOUT,59)
    assign out_stall_out_0 = infect_sweep_B6_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,60)
    assign out_stall_out_1 = infect_sweep_B6_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,61)
    assign out_valid_out_0 = infect_sweep_B6_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,62)
    assign out_valid_out_1 = infect_sweep_B6_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,64)
    assign out_pipeline_valid_out = bb_infect_sweep_B6_stall_region_out_pipeline_valid_out;

endmodule
