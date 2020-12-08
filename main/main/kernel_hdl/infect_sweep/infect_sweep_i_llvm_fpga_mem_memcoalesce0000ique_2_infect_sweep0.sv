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

// SystemVerilog created from infect_sweep_i_llvm_fpga_mem_memcoalesce0000ique_2_infect_sweep0
// SystemVerilog created on Tue Nov 24 22:05:06 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module infect_sweep_i_llvm_fpga_mem_memcoalesce0000ique_2_infect_sweep0 (
    input wire [0:0] in_flush,
    input wire [511:0] in_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep_avm_readdata,
    input wire [0:0] in_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep_avm_writeack,
    output wire [30:0] out_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep_avm_address,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [63:0] in_i_address,
    input wire [0:0] in_i_predicate,
    input wire [0:0] in_i_valid,
    output wire [4:0] out_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep_avm_burstcount,
    output wire [63:0] out_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep_avm_enable,
    output wire [0:0] out_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep_avm_read,
    output wire [0:0] out_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep_avm_write,
    output wire [511:0] out_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep_avm_writedata,
    output wire [31:0] out_o_readdata_0_tpl,
    output wire [15:0] out_o_readdata_1_tpl,
    output wire [15:0] out_o_readdata_2_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [30:0] addr_trunc_in;
    wire [30:0] addr_trunc_q;
    wire [30:0] c_i31_013_q;
    wire [31:0] c_i32_014_q;
    wire [2:0] c_i3_015_q;
    wire [63:0] c_i64_010_q;
    wire [7:0] c_i8_011_q;
    wire [511:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_readdata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_readdatavalid;
    wire i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_readdatavalid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_waitrequest;
    wire i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_waitrequest_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_writeack;
    wire i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_writeack_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_clock2x;
    wire i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_clock2x_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_flush;
    wire i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_flush_bitsignaltemp;
    wire [30:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_address;
    wire [2:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_atomic_op;
    wire [30:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_bitwiseor;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_byteenable;
    wire [63:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_cmpdata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_predicate;
    wire i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_stall;
    wire i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_valid;
    wire i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_valid_bitsignaltemp;
    wire [63:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_writedata;
    wire [30:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_stream_base_addr;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_stream_reset;
    wire i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_stream_reset_bitsignaltemp;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_stream_size;
    wire [30:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_address;
    wire [4:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_enable;
    wire i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_enable_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_read;
    wire i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_read_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_write;
    wire i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_write_bitsignaltemp;
    wire [511:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_writedata;
    wire [4:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_o_input_fifo_depth;
    wire [63:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_o_readdata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_o_stall;
    wire i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_o_valid;
    wire i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_o_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_o_writeack;
    wire i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_o_writeack_bitsignaltemp;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_profile_avm_burstcount_total_incr;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_profile_bw_incr;
    wire [31:0] ip_dsdk_adapt_bitselect4_b;
    wire [15:0] ip_dsdk_adapt_bitselect6_b;
    wire [15:0] ip_dsdk_adapt_bitselect8_b;
    wire [0:0] readdata_reg_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep19_aunroll_x_out_stall_out;
    wire [0:0] readdata_reg_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep19_aunroll_x_out_valid_out;
    wire [31:0] readdata_reg_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep19_aunroll_x_out_data_out_0_tpl;
    wire [15:0] readdata_reg_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep19_aunroll_x_out_data_out_1_tpl;
    wire [15:0] readdata_reg_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep19_aunroll_x_out_data_out_2_tpl;


    // c_i32_014(CONSTANT,6)
    assign c_i32_014_q = $unsigned(32'b00000000000000000000000000000000);

    // ip_dsdk_adapt_bitselect8(BITSELECT,14)
    assign ip_dsdk_adapt_bitselect8_b = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_o_readdata[63:48];

    // ip_dsdk_adapt_bitselect6(BITSELECT,13)
    assign ip_dsdk_adapt_bitselect6_b = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_o_readdata[47:32];

    // ip_dsdk_adapt_bitselect4(BITSELECT,12)
    assign ip_dsdk_adapt_bitselect4_b = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_o_readdata[31:0];

    // readdata_reg_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep19_aunroll_x(BLACKBOX,33)@20000000
    // out out_valid_out@20000001
    // out out_data_out_0_tpl@20000001
    // out out_data_out_1_tpl@20000001
    // out out_data_out_2_tpl@20000001
    infect_sweep_readdata_reg_memcoalesce_lo0000que_2_infect_sweep19 thereaddata_reg_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep19_aunroll_x (
        .in_stall_in(in_i_stall),
        .in_valid_in(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_o_valid),
        .in_data_in_0_tpl(ip_dsdk_adapt_bitselect4_b),
        .in_data_in_1_tpl(ip_dsdk_adapt_bitselect6_b),
        .in_data_in_2_tpl(ip_dsdk_adapt_bitselect8_b),
        .out_stall_out(readdata_reg_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep19_aunroll_x_out_stall_out),
        .out_valid_out(readdata_reg_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep19_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(readdata_reg_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep19_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(readdata_reg_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep19_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(readdata_reg_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep19_aunroll_x_out_data_out_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i64_010(CONSTANT,8)
    assign c_i64_010_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // c_i8_011(CONSTANT,10)
    assign c_i8_011_q = $unsigned(8'b00000000);

    // c_i31_013(CONSTANT,4)
    assign c_i31_013_q = $unsigned(31'b0000000000000000000000000000000);

    // c_i3_015(CONSTANT,7)
    assign c_i3_015_q = $unsigned(3'b000);

    // addr_trunc(ROUND,2)
    assign addr_trunc_in = in_i_address[30:0];
    assign addr_trunc_q = addr_trunc_in[30:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1(EXTIFACE,11)
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_readdata = in_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep_avm_readdata;
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_readdatavalid = in_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep_avm_readdatavalid;
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_waitrequest = in_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep_avm_waitrequest;
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_writeack = in_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep_avm_writeack;
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_clock2x = GND_q;
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_flush = in_flush;
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_address = addr_trunc_q;
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_atomic_op = c_i3_015_q;
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_bitwiseor = c_i31_013_q;
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_byteenable = c_i8_011_q;
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_cmpdata = c_i64_010_q;
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_predicate = in_i_predicate;
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_stall = readdata_reg_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep19_aunroll_x_out_stall_out;
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_valid = in_i_valid;
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_writedata = c_i64_010_q;
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_stream_base_addr = c_i31_013_q;
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_stream_reset = GND_q;
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_stream_size = c_i32_014_q;
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_readdatavalid_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_readdatavalid[0];
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_waitrequest_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_waitrequest[0];
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_writeack_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_writeack[0];
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_clock2x_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_clock2x[0];
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_flush_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_flush[0];
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_predicate_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_predicate[0];
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_stall_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_stall[0];
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_valid_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_valid[0];
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_stream_reset_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_stream_reset[0];
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_enable[0] = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_enable_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_read[0] = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_read_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_write[0] = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_write_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_o_stall[0] = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_o_stall_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_o_valid[0] = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_o_valid_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_o_writeack[0] = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_o_writeack_bitsignaltemp;
    lsu_top #(
        .ABITS_PER_LMEM_BANK(0),
        .ADDRSPACE(1024),
        .ALIGNMENT_BYTES(8),
        .ALLOW_HIGH_SPEED_FIFO_USAGE(0),
        .ASYNC_RESET(1),
        .ATOMIC(0),
        .ATOMIC_WIDTH(3),
        .AVM_READ_DATA_LATENESS(0),
        .AVM_WRITE_DATA_LATENESS(0),
        .AWIDTH(31),
        .BURSTCOUNT_WIDTH(5),
        .CACHESIZE(1024),
        .ENABLE_BANKED_MEMORY(0),
        .FORCE_NOP_SUPPORT(0),
        .HIGH_FMAX(1),
        .INPUTFIFO_USEDW_MAXBITS(5),
        .KERNEL_SIDE_MEM_LATENCY(1),
        .LMEM_ADDR_PERMUTATION_STYLE(0),
        .MEMORY_SIDE_MEM_LATENCY(1),
        .MWIDTH_BYTES(64),
        .NUMBER_BANKS(1),
        .PROFILE_ADDR_TOGGLE(0),
        .READ(1),
        .STALLFREE(0),
        .STYLE("BURST-COALESCED"),
        .SYNCHRONIZE_RESET(1),
        .USECACHING(1),
        .USEINPUTFIFO(0),
        .USEOUTPUTFIFO(1),
        .USE_BYTE_EN(0),
        .USE_STALL_LATENCY(0),
        .USE_WRITE_ACK(0),
        .WIDE_DATA_SLICING(0),
        .WIDTH_BYTES(8),
        .WRITEDATAWIDTH_BYTES(64)
    ) thei_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1 (
        .avm_readdata(in_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep_avm_readdata),
        .avm_readdatavalid(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_readdatavalid_bitsignaltemp),
        .avm_waitrequest(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_waitrequest_bitsignaltemp),
        .avm_writeack(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_writeack_bitsignaltemp),
        .clock2x(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_clock2x_bitsignaltemp),
        .flush(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_flush_bitsignaltemp),
        .i_address(addr_trunc_q),
        .i_atomic_op(c_i3_015_q),
        .i_bitwiseor(c_i31_013_q),
        .i_byteenable(c_i8_011_q),
        .i_cmpdata(c_i64_010_q),
        .i_predicate(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_predicate_bitsignaltemp),
        .i_stall(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_i_valid_bitsignaltemp),
        .i_writedata(c_i64_010_q),
        .stream_base_addr(c_i31_013_q),
        .stream_reset(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_stream_reset_bitsignaltemp),
        .stream_size(c_i32_014_q),
        .avm_address(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_address),
        .avm_burstcount(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_burstcount),
        .avm_byteenable(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_byteenable),
        .avm_enable(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_enable_bitsignaltemp),
        .avm_read(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_read_bitsignaltemp),
        .avm_write(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_write_bitsignaltemp),
        .avm_writedata(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_writedata),
        .o_input_fifo_depth(),
        .o_readdata(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_o_readdata),
        .o_stall(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_o_valid_bitsignaltemp),
        .o_writeack(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_o_writeack_bitsignaltemp),
        .profile_avm_burstcount_total_incr(),
        .profile_bw_incr(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,23)
    assign out_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep_avm_address = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_address;

    // sync_out(GPOUT,25)@20000000
    assign out_o_stall = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_o_stall;

    // dupName_0_regfree_osync_x(GPOUT,27)
    assign out_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep_avm_burstcount = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,28)
    assign out_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep_avm_byteenable = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_byteenable;

    // dupName_2_regfree_osync_x(GPOUT,29)
    assign out_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep_avm_enable = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_enable;

    // dupName_3_regfree_osync_x(GPOUT,30)
    assign out_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep_avm_read = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_read;

    // dupName_4_regfree_osync_x(GPOUT,31)
    assign out_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep_avm_write = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_write;

    // dupName_5_regfree_osync_x(GPOUT,32)
    assign out_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep_avm_writedata = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep1_avm_writedata;

    // dupName_0_sync_out_aunroll_x(GPOUT,34)@12
    assign out_o_readdata_0_tpl = readdata_reg_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep19_aunroll_x_out_data_out_0_tpl;
    assign out_o_readdata_1_tpl = readdata_reg_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep19_aunroll_x_out_data_out_1_tpl;
    assign out_o_readdata_2_tpl = readdata_reg_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep19_aunroll_x_out_data_out_2_tpl;
    assign out_o_valid = readdata_reg_memcoalesce_load_infect_sweep_fpgaunique_2_infect_sweep19_aunroll_x_out_valid_out;

endmodule
