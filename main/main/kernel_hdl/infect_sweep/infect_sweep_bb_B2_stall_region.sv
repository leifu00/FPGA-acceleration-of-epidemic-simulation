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

// SystemVerilog created from infect_sweep_bb_B2_stall_region
// SystemVerilog created on Tue Nov 24 22:05:07 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module infect_sweep_bb_B2_stall_region (
    input wire [511:0] in_c_sroa_0_0_copyload228_infect_sweep_avm_readdata,
    input wire [0:0] in_c_sroa_0_0_copyload228_infect_sweep_avm_writeack,
    input wire [0:0] in_c_sroa_0_0_copyload228_infect_sweep_avm_waitrequest,
    input wire [0:0] in_c_sroa_0_0_copyload228_infect_sweep_avm_readdatavalid,
    output wire [30:0] out_c_sroa_0_0_copyload228_infect_sweep_avm_address,
    output wire [0:0] out_c_sroa_0_0_copyload228_infect_sweep_avm_enable,
    output wire [0:0] out_c_sroa_0_0_copyload228_infect_sweep_avm_read,
    output wire [0:0] out_c_sroa_0_0_copyload228_infect_sweep_avm_write,
    output wire [511:0] out_c_sroa_0_0_copyload228_infect_sweep_avm_writedata,
    output wire [63:0] out_c_sroa_0_0_copyload228_infect_sweep_avm_byteenable,
    output wire [4:0] out_c_sroa_0_0_copyload228_infect_sweep_avm_burstcount,
    input wire [63:0] in_CellLookup,
    input wire [63:0] in_Hosts,
    input wire [63:0] in_Households,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_47_0,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked86,
    input wire [0:0] in_valid_in,
    input wire [511:0] in_c_sroa_20_0_copyload246_lm_infect_sweep_avm_readdata,
    input wire [0:0] in_c_sroa_20_0_copyload246_lm_infect_sweep_avm_writeack,
    input wire [0:0] in_c_sroa_20_0_copyload246_lm_infect_sweep_avm_waitrequest,
    input wire [0:0] in_c_sroa_20_0_copyload246_lm_infect_sweep_avm_readdatavalid,
    output wire [30:0] out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_address,
    output wire [0:0] out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_enable,
    output wire [0:0] out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_read,
    output wire [0:0] out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_write,
    output wire [511:0] out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_writedata,
    output wire [63:0] out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_byteenable,
    output wire [4:0] out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [0:0] out_valid_out,
    input wire [511:0] in_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_readdata,
    input wire [0:0] in_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_writeack,
    input wire [0:0] in_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_waitrequest,
    input wire [0:0] in_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_readdatavalid,
    output wire [30:0] out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_address,
    output wire [0:0] out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_enable,
    output wire [0:0] out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_read,
    output wire [0:0] out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_write,
    output wire [511:0] out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_writedata,
    output wire [63:0] out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_byteenable,
    output wire [4:0] out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    input wire [511:0] in_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_readdata,
    input wire [0:0] in_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_writeack,
    input wire [0:0] in_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_readdatavalid,
    output wire [30:0] out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_address,
    output wire [0:0] out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_enable,
    output wire [0:0] out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_read,
    output wire [0:0] out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_write,
    output wire [511:0] out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_writedata,
    output wire [63:0] out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_byteenable,
    output wire [4:0] out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    input wire [511:0] in_lm58_infect_sweep_avm_readdata,
    input wire [0:0] in_lm58_infect_sweep_avm_writeack,
    input wire [0:0] in_lm58_infect_sweep_avm_waitrequest,
    input wire [0:0] in_lm58_infect_sweep_avm_readdatavalid,
    output wire [30:0] out_lm58_infect_sweep_avm_address,
    output wire [0:0] out_lm58_infect_sweep_avm_enable,
    output wire [0:0] out_lm58_infect_sweep_avm_read,
    output wire [0:0] out_lm58_infect_sweep_avm_write,
    output wire [511:0] out_lm58_infect_sweep_avm_writedata,
    output wire [63:0] out_lm58_infect_sweep_avm_byteenable,
    output wire [4:0] out_lm58_infect_sweep_avm_burstcount,
    output wire [0:0] out_intel_reserved_ffwd_5_0,
    output wire [0:0] out_intel_reserved_ffwd_6_0,
    output wire [0:0] out_intel_reserved_ffwd_7_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_042_q;
    wire [32:0] i_add_infect_sweep23_a;
    wire [32:0] i_add_infect_sweep23_b;
    logic [32:0] i_add_infect_sweep23_o;
    wire [32:0] i_add_infect_sweep23_q;
    wire [1:0] i_c_sroa_0_0_sroa_idx227_infect_sweep4_vt_const_1_q;
    wire [63:0] i_c_sroa_0_0_sroa_idx227_infect_sweep4_vt_join_q;
    wire [61:0] i_c_sroa_0_0_sroa_idx227_infect_sweep4_vt_select_63_b;
    wire [63:0] i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_join_q;
    wire [61:0] i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b;
    wire [0:0] i_cmp152183_infect_sweep24_q;
    wire [0:0] i_cmp152183_not_infect_sweep31_q;
    wire [33:0] i_cmp157180_infect_sweep29_a;
    wire [33:0] i_cmp157180_infect_sweep29_b;
    logic [33:0] i_cmp157180_infect_sweep29_o;
    wire [0:0] i_cmp157180_infect_sweep29_c;
    wire [33:0] i_cmp4186_infect_sweep6_a;
    wire [33:0] i_cmp4186_infect_sweep6_b;
    logic [33:0] i_cmp4186_infect_sweep6_o;
    wire [0:0] i_cmp4186_infect_sweep6_c;
    wire [15:0] i_conv_infect_sweep22_vt_const_31_q;
    wire [31:0] i_conv_infect_sweep22_vt_join_q;
    wire [15:0] i_conv_infect_sweep22_vt_select_15_b;
    wire [2:0] i_firstperson_phi_trans_insert_infect_sweep18_vt_const_2_q;
    wire [63:0] i_firstperson_phi_trans_insert_infect_sweep18_vt_join_q;
    wire [60:0] i_firstperson_phi_trans_insert_infect_sweep18_vt_select_63_b;
    wire [63:0] i_idxprom_infect_sweep2_vt_join_q;
    wire [31:0] i_idxprom_infect_sweep2_vt_select_31_b;
    wire [0:0] i_index_0188_replace_phi_infect_sweep1_s;
    reg [31:0] i_index_0188_replace_phi_infect_sweep1_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_out_dest_data_out_47_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_placetypenum46_infect_sweep27_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_placetypenum46_infect_sweep27_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_placetypenum46_infect_sweep27_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep5_infect_sweep39_out_intel_reserved_ffwd_5_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep5_infect_sweep39_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep5_infect_sweep39_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep6_infect_sweep40_out_intel_reserved_ffwd_6_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep6_infect_sweep40_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep6_infect_sweep40_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep7_infect_sweep41_out_intel_reserved_ffwd_7_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep7_infect_sweep41_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep7_infect_sweep41_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep4_infect_sweep38_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep4_infect_sweep38_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep4_infect_sweep38_out_valid_out;
    wire [30:0] i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_c_sroa_0_0_copyload228_infect_sweep_avm_address;
    wire [4:0] i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_c_sroa_0_0_copyload228_infect_sweep_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_c_sroa_0_0_copyload228_infect_sweep_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_c_sroa_0_0_copyload228_infect_sweep_avm_enable;
    wire [0:0] i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_c_sroa_0_0_copyload228_infect_sweep_avm_read;
    wire [0:0] i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_c_sroa_0_0_copyload228_infect_sweep_avm_write;
    wire [511:0] i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_c_sroa_0_0_copyload228_infect_sweep_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_address;
    wire [4:0] i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_enable;
    wire [0:0] i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_read;
    wire [0:0] i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_write;
    wire [511:0] i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm58_infect_sweep28_out_lm58_infect_sweep_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm58_infect_sweep28_out_lm58_infect_sweep_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm58_infect_sweep28_out_lm58_infect_sweep_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm58_infect_sweep28_out_lm58_infect_sweep_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm58_infect_sweep28_out_lm58_infect_sweep_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm58_infect_sweep28_out_lm58_infect_sweep_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm58_infect_sweep28_out_lm58_infect_sweep_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm58_infect_sweep28_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm58_infect_sweep28_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm58_infect_sweep28_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_address;
    wire [4:0] i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_enable;
    wire [0:0] i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_read;
    wire [0:0] i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_write;
    wire [511:0] i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_writedata;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_out_valid_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_vt_select_63_b;
    wire [63:0] i_memcoalesce_bitcast_infect_sweep_fpgaunique_0_infect_sweep19_vt_join_q;
    wire [60:0] i_memcoalesce_bitcast_infect_sweep_fpgaunique_0_infect_sweep19_vt_select_63_b;
    wire [63:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep14_vt_join_q;
    wire [60:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep14_vt_select_63_b;
    wire [0:0] i_unnamed_infect_sweep10_q;
    wire [0:0] i_unnamed_infect_sweep26_q;
    wire [0:0] i_unnamed_infect_sweep32_qi;
    reg [0:0] i_unnamed_infect_sweep32_q;
    wire [0:0] i_unnamed_infect_sweep33_q;
    wire [0:0] i_unnamed_infect_sweep34_q;
    wire [31:0] bgTrunc_i_add_infect_sweep23_sel_x_b;
    wire [64:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_add_x_a;
    wire [64:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_add_x_b;
    logic [64:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_add_x_o;
    wire [64:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_add_x_q;
    wire [127:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_extender_x_q;
    wire [51:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_multconst_x_q;
    wire [63:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_trunc_sel_x_b;
    wire [63:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_add_x_a;
    wire [64:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_add_x_b;
    logic [64:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_add_x_o;
    wire [64:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_add_x_q;
    wire [63:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_c_i64_42_x_q;
    wire [64:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_dupName_0_add_x_a;
    wire [64:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_dupName_0_add_x_b;
    logic [64:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_dupName_0_add_x_o;
    wire [64:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_dupName_0_add_x_q;
    wire [127:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_extender_x_q;
    wire [63:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b;
    wire [63:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_dupName_1_trunc_sel_x_b;
    wire [31:0] i_conv_infect_sweep22_sel_x_b;
    wire [64:0] i_firstperson_phi_trans_insert_infect_sweep0_add_x_a;
    wire [64:0] i_firstperson_phi_trans_insert_infect_sweep0_add_x_b;
    logic [64:0] i_firstperson_phi_trans_insert_infect_sweep0_add_x_o;
    wire [64:0] i_firstperson_phi_trans_insert_infect_sweep0_add_x_q;
    wire [60:0] i_firstperson_phi_trans_insert_infect_sweep0_narrow_x_b;
    wire [63:0] i_firstperson_phi_trans_insert_infect_sweep0_shift_join_x_q;
    wire [63:0] i_firstperson_phi_trans_insert_infect_sweep0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom11_phi_trans_insert_infect_sweep16_sel_x_b;
    wire [63:0] i_idxprom9_phi_trans_insert_infect_sweep12_sel_x_b;
    wire [63:0] i_idxprom_infect_sweep2_sel_x_b;
    wire [30:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_address;
    wire [4:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_read;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_write;
    wire [511:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_o_readdata_0_tpl;
    wire [15:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_o_readdata_1_tpl;
    wire [64:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_add_x_a;
    wire [64:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_add_x_b;
    logic [64:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_add_x_o;
    wire [64:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_add_x_q;
    wire [63:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_c_i64_82_x_q;
    wire [64:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_dupName_0_add_x_a;
    wire [64:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_dupName_0_add_x_b;
    logic [64:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_dupName_0_add_x_o;
    wire [64:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_dupName_0_add_x_q;
    wire [127:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_extender_x_q;
    wire [56:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_multconst_x_q;
    wire [63:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b;
    wire [63:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_dupName_1_trunc_sel_x_b;
    wire [0:0] infect_sweep_B2_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] infect_sweep_B2_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] infect_sweep_B2_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [35:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_align_0_q;
    wire [35:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_align_0_qint;
    wire [65:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_join_1_q;
    wire [47:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_align_2_q;
    wire [47:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_align_2_qint;
    wire [27:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_align_3_q;
    wire [27:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_align_3_qint;
    wire [75:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_join_4_q;
    wire [76:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_result_add_0_0_a;
    wire [76:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_result_add_0_0_b;
    logic [76:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_result_add_0_0_o;
    wire [76:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_align_0_q;
    wire [35:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_align_0_qint;
    wire [65:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_join_1_q;
    wire [47:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_align_2_q;
    wire [47:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_align_2_qint;
    wire [27:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_align_3_q;
    wire [27:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_align_3_qint;
    wire [75:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_join_4_q;
    wire [76:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_result_add_0_0_a;
    wire [76:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_result_add_0_0_b;
    logic [76:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_result_add_0_0_o;
    wire [76:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_align_0_q;
    wire [35:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_align_0_qint;
    wire [60:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_join_1_q;
    wire [42:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_align_2_q;
    wire [42:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_align_2_qint;
    wire [27:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_align_3_q;
    wire [27:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_align_3_qint;
    wire [70:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_join_4_q;
    wire [71:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0_a;
    wire [71:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0_b;
    logic [71:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0_o;
    wire [71:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0_q;
    wire [12:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift0_q;
    wire [12:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift0_qint;
    wire [13:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_1_a;
    wire [13:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_1_b;
    logic [13:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_1_o;
    wire [13:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_1_q;
    wire [14:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift2_q;
    wire [14:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift2_qint;
    wire [15:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_sub_3_a;
    wire [15:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_sub_3_b;
    logic [15:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_sub_3_o;
    wire [15:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_sub_3_q;
    wire [20:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift4_q;
    wire [20:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift4_qint;
    wire [22:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_a;
    wire [22:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_b;
    logic [22:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_o;
    wire [21:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_q;
    wire [23:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift6_q;
    wire [23:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift6_qint;
    wire [20:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift0_q;
    wire [20:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift0_qint;
    wire [21:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_1_a;
    wire [21:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_1_b;
    logic [21:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_1_o;
    wire [21:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_1_q;
    wire [22:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift2_q;
    wire [22:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift2_qint;
    wire [23:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_sub_3_a;
    wire [23:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_sub_3_b;
    logic [23:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_sub_3_o;
    wire [23:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_sub_3_q;
    wire [28:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift4_q;
    wire [28:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift4_qint;
    wire [30:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_5_a;
    wire [30:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_5_b;
    logic [30:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_5_o;
    wire [29:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_5_q;
    wire [31:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift6_q;
    wire [31:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift6_qint;
    wire [20:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift0_q;
    wire [20:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift0_qint;
    wire [21:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_1_a;
    wire [21:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_1_b;
    logic [21:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_1_o;
    wire [21:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_1_q;
    wire [22:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift2_q;
    wire [22:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift2_qint;
    wire [23:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_sub_3_a;
    wire [23:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_sub_3_b;
    logic [23:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_sub_3_o;
    wire [23:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_sub_3_q;
    wire [28:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift4_q;
    wire [28:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift4_qint;
    wire [30:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_5_a;
    wire [30:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_5_b;
    logic [30:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_5_o;
    wire [29:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_5_q;
    wire [31:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift6_q;
    wire [31:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift6_qint;
    wire [20:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift0_q;
    wire [20:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift0_qint;
    wire [21:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_1_a;
    wire [21:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_1_b;
    logic [21:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_1_o;
    wire [21:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_1_q;
    wire [22:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift2_q;
    wire [22:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift2_qint;
    wire [23:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_sub_3_a;
    wire [23:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_sub_3_b;
    logic [23:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_sub_3_o;
    wire [23:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_sub_3_q;
    wire [28:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift4_q;
    wire [28:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift4_qint;
    wire [30:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_5_a;
    wire [30:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_5_b;
    logic [30:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_5_o;
    wire [29:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_5_q;
    wire [31:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift6_q;
    wire [31:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift6_qint;
    wire [12:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift0_q;
    wire [12:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift0_qint;
    wire [13:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_1_a;
    wire [13:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_1_b;
    logic [13:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_1_o;
    wire [13:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_1_q;
    wire [14:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift2_q;
    wire [14:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift2_qint;
    wire [15:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_sub_3_a;
    wire [15:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_sub_3_b;
    logic [15:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_sub_3_o;
    wire [15:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_sub_3_q;
    wire [20:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift4_q;
    wire [20:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift4_qint;
    wire [22:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_5_a;
    wire [22:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_5_b;
    logic [22:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_5_o;
    wire [21:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_5_q;
    wire [23:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift6_q;
    wire [23:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift6_qint;
    wire [20:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift0_q;
    wire [20:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift0_qint;
    wire [21:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_1_a;
    wire [21:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_1_b;
    logic [21:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_1_o;
    wire [21:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_1_q;
    wire [22:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift2_q;
    wire [22:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift2_qint;
    wire [23:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_sub_3_a;
    wire [23:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_sub_3_b;
    logic [23:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_sub_3_o;
    wire [23:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_sub_3_q;
    wire [28:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift4_q;
    wire [28:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift4_qint;
    wire [30:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_5_a;
    wire [30:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_5_b;
    logic [30:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_5_o;
    wire [29:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_5_q;
    wire [31:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift6_q;
    wire [31:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift6_qint;
    wire [20:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift0_q;
    wire [20:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift0_qint;
    wire [21:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_1_a;
    wire [21:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_1_b;
    logic [21:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_1_o;
    wire [21:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_1_q;
    wire [22:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift2_q;
    wire [22:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift2_qint;
    wire [23:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_sub_3_a;
    wire [23:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_sub_3_b;
    logic [23:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_sub_3_o;
    wire [23:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_sub_3_q;
    wire [28:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift4_q;
    wire [28:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift4_qint;
    wire [30:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_5_a;
    wire [30:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_5_b;
    logic [30:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_5_o;
    wire [29:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_5_q;
    wire [31:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift6_q;
    wire [31:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift6_qint;
    wire [20:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift0_q;
    wire [20:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift0_qint;
    wire [21:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_1_a;
    wire [21:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_1_b;
    logic [21:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_1_o;
    wire [21:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_1_q;
    wire [22:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift2_q;
    wire [22:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift2_qint;
    wire [23:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_sub_3_a;
    wire [23:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_sub_3_b;
    logic [23:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_sub_3_o;
    wire [23:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_sub_3_q;
    wire [28:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift4_q;
    wire [28:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift4_qint;
    wire [30:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_5_a;
    wire [30:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_5_b;
    logic [30:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_5_o;
    wire [29:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_5_q;
    wire [31:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift6_q;
    wire [31:0] i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift6_qint;
    wire [11:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_shift0_q;
    wire [11:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_shift0_qint;
    wire [12:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_add_1_a;
    wire [12:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_add_1_b;
    logic [12:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_add_1_o;
    wire [12:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_add_1_q;
    wire [16:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_shift2_q;
    wire [16:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_shift2_qint;
    wire [19:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_shift0_q;
    wire [19:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_shift0_qint;
    wire [20:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_add_1_a;
    wire [20:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_add_1_b;
    logic [20:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_add_1_o;
    wire [20:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_add_1_q;
    wire [24:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_shift2_q;
    wire [24:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_shift2_qint;
    wire [19:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_shift0_q;
    wire [19:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_shift0_qint;
    wire [20:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_add_1_a;
    wire [20:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_add_1_b;
    logic [20:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_add_1_o;
    wire [20:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_add_1_q;
    wire [24:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_shift2_q;
    wire [24:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_shift2_qint;
    wire [19:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_shift0_q;
    wire [19:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_shift0_qint;
    wire [20:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_add_1_a;
    wire [20:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_add_1_b;
    logic [20:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_add_1_o;
    wire [20:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_add_1_q;
    wire [24:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_shift2_q;
    wire [24:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_shift2_qint;
    wire [9:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_e;
    reg [63:0] redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_q;
    reg [63:0] redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_q;
    reg [63:0] redist2_i_c_sroa_0_0_sroa_idx227_infect_sweep0_trunc_sel_x_b_1_0_q;
    reg [0:0] redist3_i_unnamed_infect_sweep32_q_2_0_q;
    reg [0:0] redist4_i_unnamed_infect_sweep10_q_3_0_q;
    reg [0:0] redist4_i_unnamed_infect_sweep10_q_3_1_q;
    reg [0:0] redist4_i_unnamed_infect_sweep10_q_3_2_q;
    reg [0:0] redist5_i_unnamed_infect_sweep10_q_5_0_q;
    reg [0:0] redist5_i_unnamed_infect_sweep10_q_5_1_q;
    reg [0:0] redist6_i_unnamed_infect_sweep10_q_7_0_q;
    reg [0:0] redist6_i_unnamed_infect_sweep10_q_7_1_q;
    reg [0:0] redist7_i_cmp4186_infect_sweep6_c_7_0_q;
    reg [0:0] redist7_i_cmp4186_infect_sweep6_c_7_1_q;
    reg [0:0] redist7_i_cmp4186_infect_sweep6_c_7_2_q;
    reg [0:0] redist7_i_cmp4186_infect_sweep6_c_7_3_q;
    reg [0:0] redist7_i_cmp4186_infect_sweep6_c_7_4_q;
    reg [0:0] redist7_i_cmp4186_infect_sweep6_c_7_5_q;
    reg [0:0] redist7_i_cmp4186_infect_sweep6_c_7_6_q;
    reg [61:0] redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_q;
    reg [61:0] redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_q;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_placetypenum46_infect_sweep27_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_placetypenum46_infect_sweep27_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm58_infect_sweep28_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm58_infect_sweep28_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [47:0] bubble_join_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_b;
    wire [15:0] bubble_select_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_c;
    wire [0:0] bubble_join_infect_sweep_B2_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_infect_sweep_B2_merge_reg_aunroll_x_b;
    wire [0:0] SE_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_join_wireValid;
    wire [0:0] SE_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_join_and0;
    wire [0:0] SE_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_join_backStall;
    wire [0:0] SE_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_join_V0;
    reg [0:0] SE_i_index_0188_replace_phi_infect_sweep1_R_v_0;
    reg [0:0] SE_i_index_0188_replace_phi_infect_sweep1_R_v_1;
    wire [0:0] SE_i_index_0188_replace_phi_infect_sweep1_v_s_0;
    wire [0:0] SE_i_index_0188_replace_phi_infect_sweep1_s_tv_0;
    wire [0:0] SE_i_index_0188_replace_phi_infect_sweep1_s_tv_1;
    wire [0:0] SE_i_index_0188_replace_phi_infect_sweep1_backEN;
    wire [0:0] SE_i_index_0188_replace_phi_infect_sweep1_and0;
    wire [0:0] SE_i_index_0188_replace_phi_infect_sweep1_or0;
    wire [0:0] SE_i_index_0188_replace_phi_infect_sweep1_backStall;
    wire [0:0] SE_i_index_0188_replace_phi_infect_sweep1_V0;
    wire [0:0] SE_i_index_0188_replace_phi_infect_sweep1_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_and1;
    wire [0:0] SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_and1;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_V0;
    wire [0:0] SE_i_unnamed_infect_sweep26_wireValid;
    wire [0:0] SE_i_unnamed_infect_sweep26_and0;
    wire [0:0] SE_i_unnamed_infect_sweep26_and1;
    wire [0:0] SE_i_unnamed_infect_sweep26_backStall;
    wire [0:0] SE_i_unnamed_infect_sweep26_V0;
    reg [0:0] SE_i_unnamed_infect_sweep32_R_v_0;
    wire [0:0] SE_i_unnamed_infect_sweep32_v_s_0;
    wire [0:0] SE_i_unnamed_infect_sweep32_s_tv_0;
    wire [0:0] SE_i_unnamed_infect_sweep32_backEN;
    wire [0:0] SE_i_unnamed_infect_sweep32_and0;
    wire [0:0] SE_i_unnamed_infect_sweep32_backStall;
    wire [0:0] SE_i_unnamed_infect_sweep32_V0;
    wire [0:0] SE_i_unnamed_infect_sweep33_wireValid;
    wire [0:0] SE_i_unnamed_infect_sweep33_wireStall;
    wire [0:0] SE_i_unnamed_infect_sweep33_StallValid;
    wire [0:0] SE_i_unnamed_infect_sweep33_toReg0;
    reg [0:0] SE_i_unnamed_infect_sweep33_fromReg0;
    wire [0:0] SE_i_unnamed_infect_sweep33_consumed0;
    wire [0:0] SE_i_unnamed_infect_sweep33_toReg1;
    reg [0:0] SE_i_unnamed_infect_sweep33_fromReg1;
    wire [0:0] SE_i_unnamed_infect_sweep33_consumed1;
    wire [0:0] SE_i_unnamed_infect_sweep33_and0;
    wire [0:0] SE_i_unnamed_infect_sweep33_or0;
    wire [0:0] SE_i_unnamed_infect_sweep33_backStall;
    wire [0:0] SE_i_unnamed_infect_sweep33_V0;
    wire [0:0] SE_i_unnamed_infect_sweep33_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_or1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_or2;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_V2;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_V3;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_infect_sweep_B2_merge_reg_aunroll_x_V6;
    reg [0:0] SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_R_v_0;
    wire [0:0] SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_v_s_0;
    wire [0:0] SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_s_tv_0;
    wire [0:0] SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_backEN;
    wire [0:0] SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_backStall;
    wire [0:0] SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_V0;
    reg [0:0] SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_V0;
    reg [0:0] SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_R_v_1;
    wire [0:0] SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_or0;
    wire [0:0] SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_V0;
    wire [0:0] SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_V1;
    reg [0:0] SE_redist3_i_unnamed_infect_sweep32_q_2_0_R_v_0;
    reg [0:0] SE_redist3_i_unnamed_infect_sweep32_q_2_0_R_v_1;
    wire [0:0] SE_redist3_i_unnamed_infect_sweep32_q_2_0_v_s_0;
    wire [0:0] SE_redist3_i_unnamed_infect_sweep32_q_2_0_s_tv_0;
    wire [0:0] SE_redist3_i_unnamed_infect_sweep32_q_2_0_s_tv_1;
    wire [0:0] SE_redist3_i_unnamed_infect_sweep32_q_2_0_backEN;
    wire [0:0] SE_redist3_i_unnamed_infect_sweep32_q_2_0_or0;
    wire [0:0] SE_redist3_i_unnamed_infect_sweep32_q_2_0_backStall;
    wire [0:0] SE_redist3_i_unnamed_infect_sweep32_q_2_0_V0;
    wire [0:0] SE_redist3_i_unnamed_infect_sweep32_q_2_0_V1;
    reg [0:0] SE_redist4_i_unnamed_infect_sweep10_q_3_0_R_v_0;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep10_q_3_0_v_s_0;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep10_q_3_0_s_tv_0;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep10_q_3_0_backEN;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep10_q_3_0_backStall;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep10_q_3_0_V0;
    reg [0:0] SE_redist4_i_unnamed_infect_sweep10_q_3_1_R_v_0;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep10_q_3_1_v_s_0;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep10_q_3_1_s_tv_0;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep10_q_3_1_backEN;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep10_q_3_1_backStall;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep10_q_3_1_V0;
    reg [0:0] SE_redist4_i_unnamed_infect_sweep10_q_3_2_R_v_0;
    reg [0:0] SE_redist4_i_unnamed_infect_sweep10_q_3_2_R_v_1;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep10_q_3_2_v_s_0;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep10_q_3_2_s_tv_0;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep10_q_3_2_s_tv_1;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep10_q_3_2_backEN;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep10_q_3_2_or0;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep10_q_3_2_backStall;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep10_q_3_2_V0;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep10_q_3_2_V1;
    reg [0:0] SE_redist5_i_unnamed_infect_sweep10_q_5_0_R_v_0;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep10_q_5_0_v_s_0;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep10_q_5_0_s_tv_0;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep10_q_5_0_backEN;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep10_q_5_0_backStall;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep10_q_5_0_V0;
    reg [0:0] SE_redist5_i_unnamed_infect_sweep10_q_5_1_R_v_0;
    reg [0:0] SE_redist5_i_unnamed_infect_sweep10_q_5_1_R_v_1;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep10_q_5_1_v_s_0;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep10_q_5_1_s_tv_0;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep10_q_5_1_s_tv_1;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep10_q_5_1_backEN;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep10_q_5_1_or0;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep10_q_5_1_backStall;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep10_q_5_1_V0;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep10_q_5_1_V1;
    reg [0:0] SE_redist6_i_unnamed_infect_sweep10_q_7_0_R_v_0;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep10_q_7_0_v_s_0;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep10_q_7_0_s_tv_0;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep10_q_7_0_backEN;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep10_q_7_0_backStall;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep10_q_7_0_V0;
    reg [0:0] SE_redist6_i_unnamed_infect_sweep10_q_7_1_R_v_0;
    reg [0:0] SE_redist6_i_unnamed_infect_sweep10_q_7_1_R_v_1;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep10_q_7_1_v_s_0;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep10_q_7_1_s_tv_0;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep10_q_7_1_s_tv_1;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep10_q_7_1_backEN;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep10_q_7_1_or0;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep10_q_7_1_backStall;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep10_q_7_1_V0;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep10_q_7_1_V1;
    reg [0:0] SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_R_v_0;
    wire [0:0] SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_v_s_0;
    wire [0:0] SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_s_tv_0;
    wire [0:0] SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_backEN;
    wire [0:0] SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_backStall;
    wire [0:0] SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_V0;
    reg [0:0] SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_R_v_0;
    wire [0:0] SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_v_s_0;
    wire [0:0] SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_s_tv_0;
    wire [0:0] SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_backEN;
    wire [0:0] SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_backStall;
    wire [0:0] SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_V0;
    wire [0:0] SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_wireValid;
    wire [0:0] SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_backStall;
    wire [0:0] SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_V0;
    wire [0:0] SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_wireValid;
    wire [0:0] SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_backStall;
    wire [0:0] SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_V0;
    wire [0:0] SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_wireValid;
    wire [0:0] SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_backStall;
    wire [0:0] SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_V0;
    wire [0:0] SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_wireValid;
    wire [0:0] SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_backStall;
    wire [0:0] SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_V0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg_valid_in;
    wire bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg_stall_in;
    wire bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg_valid_out;
    wire bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg_stall_out;
    wire bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg_valid_in;
    wire bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg_stall_in;
    wire bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg_valid_out;
    wire bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg_stall_out;
    wire bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg_valid_in;
    wire bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg_stall_in;
    wire bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg_valid_out;
    wire bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg_stall_out;
    wire bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg_valid_in;
    wire bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg_stall_in;
    wire bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg_valid_out;
    wire bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg_stall_out;
    wire bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_i_valid;
    reg [0:0] SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_r_valid;
    reg [61:0] SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_r_data0;
    wire [0:0] SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_backStall;
    wire [0:0] SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_V;
    wire [61:0] SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_D0;
    wire [0:0] SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_i_valid;
    reg [0:0] SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_r_valid;
    reg [0:0] SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_r_data0;
    reg [0:0] SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_r_data1;
    wire [0:0] SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_backStall;
    wire [0:0] SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_V;
    wire [0:0] SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_D0;
    wire [0:0] SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_D1;


    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_c_i64_42_x(CONSTANT,163)
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_c_i64_42_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000100);

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_multconst_x(CONSTANT,158)
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_multconst_x_q = $unsigned(52'b0000000000000000000000000000000000000000000000000000);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c_i32_042(CONSTANT,5)
    assign c_i32_042_q = $unsigned(32'b00000000000000000000000000000000);

    // SE_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_join(STALLENABLE,415)
    // Valid signal propagation
    assign SE_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_join_V0 = SE_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_join_wireValid;
    // Backward Stall generation
    assign SE_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_join_backStall = i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_o_stall | ~ (SE_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_join_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_join_and0 = SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_V0;
    assign SE_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_join_wireValid = SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_V0 & SE_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_join_and0;

    // bubble_join_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5(BITJOIN,373)
    assign bubble_join_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_q = i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5(BITSELECT,374)
    assign bubble_select_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_b = $unsigned(bubble_join_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_q[31:0]);

    // i_cmp4186_infect_sweep6(COMPARE,20)@6
    assign i_cmp4186_infect_sweep6_a = $unsigned({{2{c_i32_042_q[31]}}, c_i32_042_q});
    assign i_cmp4186_infect_sweep6_b = $unsigned({{2{bubble_select_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_b[31]}}, bubble_select_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_b});
    assign i_cmp4186_infect_sweep6_o = $unsigned($signed(i_cmp4186_infect_sweep6_a) - $signed(i_cmp4186_infect_sweep6_b));
    assign i_cmp4186_infect_sweep6_c[0] = i_cmp4186_infect_sweep6_o[33];

    // i_unnamed_infect_sweep10(LOGICAL,72)@6
    assign i_unnamed_infect_sweep10_q = i_cmp4186_infect_sweep6_c ^ VCC_q;

    // redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1(REG,358)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_q <= $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_backEN == 1'b1)
        begin
            redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_q <= $unsigned(SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_D0);
        end
    end

    // i_c_sroa_0_0_sroa_idx227_infect_sweep4_vt_const_1(CONSTANT,11)
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep4_vt_const_1_q = $unsigned(2'b00);

    // i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_join(BITJOIN,15)@6
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_join_q = {redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_q, i_c_sroa_0_0_sroa_idx227_infect_sweep4_vt_const_1_q};

    // i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11(BLACKBOX,47)@6
    // in in_i_stall@20000000
    // out out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_address@20000000
    // out out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_burstcount@20000000
    // out out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_byteenable@20000000
    // out out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_enable@20000000
    // out out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_read@20000000
    // out out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_write@20000000
    // out out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_writedata@20000000
    // out out_o_readdata@8
    // out out_o_stall@20000000
    // out out_o_valid@8
    infect_sweep_i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_0 thei_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11 (
        .in_c_sroa_20_0_copyload246_lm_infect_sweep_avm_readdata(in_c_sroa_20_0_copyload246_lm_infect_sweep_avm_readdata),
        .in_c_sroa_20_0_copyload246_lm_infect_sweep_avm_readdatavalid(in_c_sroa_20_0_copyload246_lm_infect_sweep_avm_readdatavalid),
        .in_c_sroa_20_0_copyload246_lm_infect_sweep_avm_waitrequest(in_c_sroa_20_0_copyload246_lm_infect_sweep_avm_waitrequest),
        .in_c_sroa_20_0_copyload246_lm_infect_sweep_avm_writeack(in_c_sroa_20_0_copyload246_lm_infect_sweep_avm_writeack),
        .in_flush(in_flush),
        .in_i_address(i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_join_q),
        .in_i_predicate(i_unnamed_infect_sweep10_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_backStall),
        .in_i_valid(SE_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_join_V0),
        .out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_address(i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_address),
        .out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_burstcount(i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_burstcount),
        .out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_byteenable(i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_byteenable),
        .out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_enable(i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_enable),
        .out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_read(i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_read),
        .out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_write(i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_write),
        .out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_writedata(i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11(STALLENABLE,449)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_V0 = SE_out_i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_backStall = SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_wireValid = i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_o_valid;

    // SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0(STALLENABLE,598)
    // Valid signal propagation
    assign SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_V0 = SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_backStall & SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_backEN = ~ (SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_v_s_0 = SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_V0;
    // Backward Stall generation
    assign SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_backStall = ~ (SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_R_v_0 & SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5(STALLENABLE,695)
    // Valid signal propagation
    assign SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_V0 = SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_backStall = i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_out_stall_out | ~ (SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_wireValid = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg_valid_out;

    // i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13(BLACKBOX,62)@9
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_sync_buffer_p100000osts_sync_buffer28_0 thei_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13 (
        .in_buffer_in(in_Hosts),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_backStall),
        .in_valid_in(SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13(STALLENABLE,467)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_V0 = SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_backStall = i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_o_stall | ~ (SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_and0 = i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_and1 = SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_V0 & SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_and0;
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_wireValid = SE_redist4_i_unnamed_infect_sweep10_q_3_2_V0 & SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_and1;

    // SE_redist4_i_unnamed_infect_sweep10_q_3_0(STALLENABLE,602)
    // Valid signal propagation
    assign SE_redist4_i_unnamed_infect_sweep10_q_3_0_V0 = SE_redist4_i_unnamed_infect_sweep10_q_3_0_R_v_0;
    // Stall signal propagation
    assign SE_redist4_i_unnamed_infect_sweep10_q_3_0_s_tv_0 = SE_redist4_i_unnamed_infect_sweep10_q_3_1_backStall & SE_redist4_i_unnamed_infect_sweep10_q_3_0_R_v_0;
    // Backward Enable generation
    assign SE_redist4_i_unnamed_infect_sweep10_q_3_0_backEN = ~ (SE_redist4_i_unnamed_infect_sweep10_q_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_i_unnamed_infect_sweep10_q_3_0_v_s_0 = SE_redist4_i_unnamed_infect_sweep10_q_3_0_backEN & SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_V1;
    // Backward Stall generation
    assign SE_redist4_i_unnamed_infect_sweep10_q_3_0_backStall = ~ (SE_redist4_i_unnamed_infect_sweep10_q_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_i_unnamed_infect_sweep10_q_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_i_unnamed_infect_sweep10_q_3_0_backEN == 1'b0)
            begin
                SE_redist4_i_unnamed_infect_sweep10_q_3_0_R_v_0 <= SE_redist4_i_unnamed_infect_sweep10_q_3_0_R_v_0 & SE_redist4_i_unnamed_infect_sweep10_q_3_0_s_tv_0;
            end
            else
            begin
                SE_redist4_i_unnamed_infect_sweep10_q_3_0_R_v_0 <= SE_redist4_i_unnamed_infect_sweep10_q_3_0_v_s_0;
            end

        end
    end

    // SE_redist4_i_unnamed_infect_sweep10_q_3_1(STALLENABLE,603)
    // Valid signal propagation
    assign SE_redist4_i_unnamed_infect_sweep10_q_3_1_V0 = SE_redist4_i_unnamed_infect_sweep10_q_3_1_R_v_0;
    // Stall signal propagation
    assign SE_redist4_i_unnamed_infect_sweep10_q_3_1_s_tv_0 = SE_redist4_i_unnamed_infect_sweep10_q_3_2_backStall & SE_redist4_i_unnamed_infect_sweep10_q_3_1_R_v_0;
    // Backward Enable generation
    assign SE_redist4_i_unnamed_infect_sweep10_q_3_1_backEN = ~ (SE_redist4_i_unnamed_infect_sweep10_q_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_i_unnamed_infect_sweep10_q_3_1_v_s_0 = SE_redist4_i_unnamed_infect_sweep10_q_3_1_backEN & SE_redist4_i_unnamed_infect_sweep10_q_3_0_V0;
    // Backward Stall generation
    assign SE_redist4_i_unnamed_infect_sweep10_q_3_1_backStall = ~ (SE_redist4_i_unnamed_infect_sweep10_q_3_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_i_unnamed_infect_sweep10_q_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_i_unnamed_infect_sweep10_q_3_1_backEN == 1'b0)
            begin
                SE_redist4_i_unnamed_infect_sweep10_q_3_1_R_v_0 <= SE_redist4_i_unnamed_infect_sweep10_q_3_1_R_v_0 & SE_redist4_i_unnamed_infect_sweep10_q_3_1_s_tv_0;
            end
            else
            begin
                SE_redist4_i_unnamed_infect_sweep10_q_3_1_R_v_0 <= SE_redist4_i_unnamed_infect_sweep10_q_3_1_v_s_0;
            end

        end
    end

    // SE_redist4_i_unnamed_infect_sweep10_q_3_2(STALLENABLE,604)
    // Valid signal propagation
    assign SE_redist4_i_unnamed_infect_sweep10_q_3_2_V0 = SE_redist4_i_unnamed_infect_sweep10_q_3_2_R_v_0;
    assign SE_redist4_i_unnamed_infect_sweep10_q_3_2_V1 = SE_redist4_i_unnamed_infect_sweep10_q_3_2_R_v_1;
    // Stall signal propagation
    assign SE_redist4_i_unnamed_infect_sweep10_q_3_2_s_tv_0 = SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_backStall & SE_redist4_i_unnamed_infect_sweep10_q_3_2_R_v_0;
    assign SE_redist4_i_unnamed_infect_sweep10_q_3_2_s_tv_1 = SE_redist5_i_unnamed_infect_sweep10_q_5_0_backStall & SE_redist4_i_unnamed_infect_sweep10_q_3_2_R_v_1;
    // Backward Enable generation
    assign SE_redist4_i_unnamed_infect_sweep10_q_3_2_or0 = SE_redist4_i_unnamed_infect_sweep10_q_3_2_s_tv_0;
    assign SE_redist4_i_unnamed_infect_sweep10_q_3_2_backEN = ~ (SE_redist4_i_unnamed_infect_sweep10_q_3_2_s_tv_1 | SE_redist4_i_unnamed_infect_sweep10_q_3_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_i_unnamed_infect_sweep10_q_3_2_v_s_0 = SE_redist4_i_unnamed_infect_sweep10_q_3_2_backEN & SE_redist4_i_unnamed_infect_sweep10_q_3_1_V0;
    // Backward Stall generation
    assign SE_redist4_i_unnamed_infect_sweep10_q_3_2_backStall = ~ (SE_redist4_i_unnamed_infect_sweep10_q_3_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_i_unnamed_infect_sweep10_q_3_2_R_v_0 <= 1'b0;
            SE_redist4_i_unnamed_infect_sweep10_q_3_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_i_unnamed_infect_sweep10_q_3_2_backEN == 1'b0)
            begin
                SE_redist4_i_unnamed_infect_sweep10_q_3_2_R_v_0 <= SE_redist4_i_unnamed_infect_sweep10_q_3_2_R_v_0 & SE_redist4_i_unnamed_infect_sweep10_q_3_2_s_tv_0;
            end
            else
            begin
                SE_redist4_i_unnamed_infect_sweep10_q_3_2_R_v_0 <= SE_redist4_i_unnamed_infect_sweep10_q_3_2_v_s_0;
            end

            if (SE_redist4_i_unnamed_infect_sweep10_q_3_2_backEN == 1'b0)
            begin
                SE_redist4_i_unnamed_infect_sweep10_q_3_2_R_v_1 <= SE_redist4_i_unnamed_infect_sweep10_q_3_2_R_v_1 & SE_redist4_i_unnamed_infect_sweep10_q_3_2_s_tv_1;
            end
            else
            begin
                SE_redist4_i_unnamed_infect_sweep10_q_3_2_R_v_1 <= SE_redist4_i_unnamed_infect_sweep10_q_3_2_v_s_0;
            end

        end
    end

    // SE_redist5_i_unnamed_infect_sweep10_q_5_0(STALLENABLE,605)
    // Valid signal propagation
    assign SE_redist5_i_unnamed_infect_sweep10_q_5_0_V0 = SE_redist5_i_unnamed_infect_sweep10_q_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist5_i_unnamed_infect_sweep10_q_5_0_s_tv_0 = SE_redist5_i_unnamed_infect_sweep10_q_5_1_backStall & SE_redist5_i_unnamed_infect_sweep10_q_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist5_i_unnamed_infect_sweep10_q_5_0_backEN = ~ (SE_redist5_i_unnamed_infect_sweep10_q_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_unnamed_infect_sweep10_q_5_0_v_s_0 = SE_redist5_i_unnamed_infect_sweep10_q_5_0_backEN & SE_redist4_i_unnamed_infect_sweep10_q_3_2_V1;
    // Backward Stall generation
    assign SE_redist5_i_unnamed_infect_sweep10_q_5_0_backStall = ~ (SE_redist5_i_unnamed_infect_sweep10_q_5_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_i_unnamed_infect_sweep10_q_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_unnamed_infect_sweep10_q_5_0_backEN == 1'b0)
            begin
                SE_redist5_i_unnamed_infect_sweep10_q_5_0_R_v_0 <= SE_redist5_i_unnamed_infect_sweep10_q_5_0_R_v_0 & SE_redist5_i_unnamed_infect_sweep10_q_5_0_s_tv_0;
            end
            else
            begin
                SE_redist5_i_unnamed_infect_sweep10_q_5_0_R_v_0 <= SE_redist5_i_unnamed_infect_sweep10_q_5_0_v_s_0;
            end

        end
    end

    // redist7_i_cmp4186_infect_sweep6_c_7_0(REG,350)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_cmp4186_infect_sweep6_c_7_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_i_unnamed_infect_sweep10_q_3_0_backEN == 1'b1)
        begin
            redist7_i_cmp4186_infect_sweep6_c_7_0_q <= $unsigned(i_cmp4186_infect_sweep6_c);
        end
    end

    // redist7_i_cmp4186_infect_sweep6_c_7_1(REG,351)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_cmp4186_infect_sweep6_c_7_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_i_unnamed_infect_sweep10_q_3_1_backEN == 1'b1)
        begin
            redist7_i_cmp4186_infect_sweep6_c_7_1_q <= $unsigned(redist7_i_cmp4186_infect_sweep6_c_7_0_q);
        end
    end

    // redist7_i_cmp4186_infect_sweep6_c_7_2(REG,352)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_cmp4186_infect_sweep6_c_7_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_i_unnamed_infect_sweep10_q_3_2_backEN == 1'b1)
        begin
            redist7_i_cmp4186_infect_sweep6_c_7_2_q <= $unsigned(redist7_i_cmp4186_infect_sweep6_c_7_1_q);
        end
    end

    // redist7_i_cmp4186_infect_sweep6_c_7_3(REG,353)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_cmp4186_infect_sweep6_c_7_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_i_unnamed_infect_sweep10_q_5_0_backEN == 1'b1)
        begin
            redist7_i_cmp4186_infect_sweep6_c_7_3_q <= $unsigned(redist7_i_cmp4186_infect_sweep6_c_7_2_q);
        end
    end

    // redist7_i_cmp4186_infect_sweep6_c_7_4(REG,354)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_cmp4186_infect_sweep6_c_7_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_i_unnamed_infect_sweep10_q_5_1_backEN == 1'b1)
        begin
            redist7_i_cmp4186_infect_sweep6_c_7_4_q <= $unsigned(redist7_i_cmp4186_infect_sweep6_c_7_3_q);
        end
    end

    // SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0(STALLREG,707)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_r_valid <= 1'b0;
            SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_r_data0 <= 1'bx;
            SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_r_valid <= SE_redist6_i_unnamed_infect_sweep10_q_7_0_backStall & (SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_r_valid | SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_i_valid);

            if (SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_r_data0 <= $unsigned(redist5_i_unnamed_infect_sweep10_q_5_1_q);
                SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_r_data1 <= $unsigned(redist7_i_cmp4186_infect_sweep6_c_7_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_i_valid = SE_redist5_i_unnamed_infect_sweep10_q_5_1_V1;
    // Stall signal propagation
    assign SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_backStall = SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_r_valid | ~ (SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_i_valid);

    // Valid
    assign SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_V = SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_r_valid == 1'b1 ? SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_r_valid : SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_i_valid;

    // Data0
    assign SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_D0 = SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_r_valid == 1'b1 ? SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_r_data0 : redist5_i_unnamed_infect_sweep10_q_5_1_q;
    // Data1
    assign SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_D1 = SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_r_valid == 1'b1 ? SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_r_data1 : redist7_i_cmp4186_infect_sweep6_c_7_4_q;

    // SE_redist6_i_unnamed_infect_sweep10_q_7_0(STALLENABLE,607)
    // Valid signal propagation
    assign SE_redist6_i_unnamed_infect_sweep10_q_7_0_V0 = SE_redist6_i_unnamed_infect_sweep10_q_7_0_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_unnamed_infect_sweep10_q_7_0_s_tv_0 = SE_redist6_i_unnamed_infect_sweep10_q_7_1_backStall & SE_redist6_i_unnamed_infect_sweep10_q_7_0_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_unnamed_infect_sweep10_q_7_0_backEN = ~ (SE_redist6_i_unnamed_infect_sweep10_q_7_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_unnamed_infect_sweep10_q_7_0_v_s_0 = SE_redist6_i_unnamed_infect_sweep10_q_7_0_backEN & SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_V;
    // Backward Stall generation
    assign SE_redist6_i_unnamed_infect_sweep10_q_7_0_backStall = ~ (SE_redist6_i_unnamed_infect_sweep10_q_7_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_unnamed_infect_sweep10_q_7_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_unnamed_infect_sweep10_q_7_0_backEN == 1'b0)
            begin
                SE_redist6_i_unnamed_infect_sweep10_q_7_0_R_v_0 <= SE_redist6_i_unnamed_infect_sweep10_q_7_0_R_v_0 & SE_redist6_i_unnamed_infect_sweep10_q_7_0_s_tv_0;
            end
            else
            begin
                SE_redist6_i_unnamed_infect_sweep10_q_7_0_R_v_0 <= SE_redist6_i_unnamed_infect_sweep10_q_7_0_v_s_0;
            end

        end
    end

    // SE_redist6_i_unnamed_infect_sweep10_q_7_1(STALLENABLE,608)
    // Valid signal propagation
    assign SE_redist6_i_unnamed_infect_sweep10_q_7_1_V0 = SE_redist6_i_unnamed_infect_sweep10_q_7_1_R_v_0;
    assign SE_redist6_i_unnamed_infect_sweep10_q_7_1_V1 = SE_redist6_i_unnamed_infect_sweep10_q_7_1_R_v_1;
    // Stall signal propagation
    assign SE_redist6_i_unnamed_infect_sweep10_q_7_1_s_tv_0 = SE_i_unnamed_infect_sweep26_backStall & SE_redist6_i_unnamed_infect_sweep10_q_7_1_R_v_0;
    assign SE_redist6_i_unnamed_infect_sweep10_q_7_1_s_tv_1 = SE_i_unnamed_infect_sweep32_backStall & SE_redist6_i_unnamed_infect_sweep10_q_7_1_R_v_1;
    // Backward Enable generation
    assign SE_redist6_i_unnamed_infect_sweep10_q_7_1_or0 = SE_redist6_i_unnamed_infect_sweep10_q_7_1_s_tv_0;
    assign SE_redist6_i_unnamed_infect_sweep10_q_7_1_backEN = ~ (SE_redist6_i_unnamed_infect_sweep10_q_7_1_s_tv_1 | SE_redist6_i_unnamed_infect_sweep10_q_7_1_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_unnamed_infect_sweep10_q_7_1_v_s_0 = SE_redist6_i_unnamed_infect_sweep10_q_7_1_backEN & SE_redist6_i_unnamed_infect_sweep10_q_7_0_V0;
    // Backward Stall generation
    assign SE_redist6_i_unnamed_infect_sweep10_q_7_1_backStall = ~ (SE_redist6_i_unnamed_infect_sweep10_q_7_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_unnamed_infect_sweep10_q_7_1_R_v_0 <= 1'b0;
            SE_redist6_i_unnamed_infect_sweep10_q_7_1_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_unnamed_infect_sweep10_q_7_1_backEN == 1'b0)
            begin
                SE_redist6_i_unnamed_infect_sweep10_q_7_1_R_v_0 <= SE_redist6_i_unnamed_infect_sweep10_q_7_1_R_v_0 & SE_redist6_i_unnamed_infect_sweep10_q_7_1_s_tv_0;
            end
            else
            begin
                SE_redist6_i_unnamed_infect_sweep10_q_7_1_R_v_0 <= SE_redist6_i_unnamed_infect_sweep10_q_7_1_v_s_0;
            end

            if (SE_redist6_i_unnamed_infect_sweep10_q_7_1_backEN == 1'b0)
            begin
                SE_redist6_i_unnamed_infect_sweep10_q_7_1_R_v_1 <= SE_redist6_i_unnamed_infect_sweep10_q_7_1_R_v_1 & SE_redist6_i_unnamed_infect_sweep10_q_7_1_s_tv_1;
            end
            else
            begin
                SE_redist6_i_unnamed_infect_sweep10_q_7_1_R_v_1 <= SE_redist6_i_unnamed_infect_sweep10_q_7_1_v_s_0;
            end

        end
    end

    // redist6_i_unnamed_infect_sweep10_q_7_0(REG,348)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_unnamed_infect_sweep10_q_7_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_unnamed_infect_sweep10_q_7_0_backEN == 1'b1)
        begin
            redist6_i_unnamed_infect_sweep10_q_7_0_q <= $unsigned(SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_D0);
        end
    end

    // redist6_i_unnamed_infect_sweep10_q_7_1(REG,349)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_unnamed_infect_sweep10_q_7_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_unnamed_infect_sweep10_q_7_1_backEN == 1'b1)
        begin
            redist6_i_unnamed_infect_sweep10_q_7_1_q <= $unsigned(redist6_i_unnamed_infect_sweep10_q_7_0_q);
        end
    end

    // i_conv_infect_sweep22_vt_const_31(CONSTANT,22)
    assign i_conv_infect_sweep22_vt_const_31_q = $unsigned(16'b0000000000000000);

    // bubble_join_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x(BITJOIN,401)
    assign bubble_join_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_q = {i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_o_readdata_1_tpl, i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_o_readdata_0_tpl};

    // bubble_select_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x(BITSELECT,402)
    assign bubble_select_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_q[31:0]);
    assign bubble_select_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_c = $unsigned(bubble_join_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_q[47:32]);

    // i_cmp152183_infect_sweep24(LOGICAL,17)@13
    assign i_cmp152183_infect_sweep24_q = $unsigned(bubble_select_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_c == i_conv_infect_sweep22_vt_const_31_q ? 1'b1 : 1'b0);

    // i_unnamed_infect_sweep26(LOGICAL,73)@13
    assign i_unnamed_infect_sweep26_q = i_cmp152183_infect_sweep24_q | redist6_i_unnamed_infect_sweep10_q_7_1_q;

    // SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2(STALLENABLE,689)
    // Valid signal propagation
    assign SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_p1024i32_placetypenum46_infect_sweep27_out_stall_out | ~ (SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_wireValid = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024i32_placetypenum46_infect_sweep27(BLACKBOX,38)@13
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_dest_p1024i32_placetypenum46_0 thei_llvm_fpga_ffwd_dest_p1024i32_placetypenum46_infect_sweep27 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_i_unnamed_infect_sweep26_backStall),
        .in_valid_in(SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_placetypenum46_infect_sweep27_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_placetypenum46_infect_sweep27_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_placetypenum46_infect_sweep27_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_placetypenum46_infect_sweep27(BITJOIN,363)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_placetypenum46_infect_sweep27_q = i_llvm_fpga_ffwd_dest_p1024i32_placetypenum46_infect_sweep27_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_placetypenum46_infect_sweep27(BITSELECT,364)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_placetypenum46_infect_sweep27_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_placetypenum46_infect_sweep27_q[63:0]);

    // i_llvm_fpga_mem_lm58_infect_sweep28(BLACKBOX,48)@13
    // in in_i_stall@20000000
    // out out_lm58_infect_sweep_avm_address@20000000
    // out out_lm58_infect_sweep_avm_burstcount@20000000
    // out out_lm58_infect_sweep_avm_byteenable@20000000
    // out out_lm58_infect_sweep_avm_enable@20000000
    // out out_lm58_infect_sweep_avm_read@20000000
    // out out_lm58_infect_sweep_avm_write@20000000
    // out out_lm58_infect_sweep_avm_writedata@20000000
    // out out_o_readdata@15
    // out out_o_stall@20000000
    // out out_o_valid@15
    infect_sweep_i_llvm_fpga_mem_lm58_0 thei_llvm_fpga_mem_lm58_infect_sweep28 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_placetypenum46_infect_sweep27_b),
        .in_i_predicate(i_unnamed_infect_sweep26_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_backStall),
        .in_i_valid(SE_i_unnamed_infect_sweep26_V0),
        .in_lm58_infect_sweep_avm_readdata(in_lm58_infect_sweep_avm_readdata),
        .in_lm58_infect_sweep_avm_readdatavalid(in_lm58_infect_sweep_avm_readdatavalid),
        .in_lm58_infect_sweep_avm_waitrequest(in_lm58_infect_sweep_avm_waitrequest),
        .in_lm58_infect_sweep_avm_writeack(in_lm58_infect_sweep_avm_writeack),
        .out_lm58_infect_sweep_avm_address(i_llvm_fpga_mem_lm58_infect_sweep28_out_lm58_infect_sweep_avm_address),
        .out_lm58_infect_sweep_avm_burstcount(i_llvm_fpga_mem_lm58_infect_sweep28_out_lm58_infect_sweep_avm_burstcount),
        .out_lm58_infect_sweep_avm_byteenable(i_llvm_fpga_mem_lm58_infect_sweep28_out_lm58_infect_sweep_avm_byteenable),
        .out_lm58_infect_sweep_avm_enable(i_llvm_fpga_mem_lm58_infect_sweep28_out_lm58_infect_sweep_avm_enable),
        .out_lm58_infect_sweep_avm_read(i_llvm_fpga_mem_lm58_infect_sweep28_out_lm58_infect_sweep_avm_read),
        .out_lm58_infect_sweep_avm_write(i_llvm_fpga_mem_lm58_infect_sweep28_out_lm58_infect_sweep_avm_write),
        .out_lm58_infect_sweep_avm_writedata(i_llvm_fpga_mem_lm58_infect_sweep28_out_lm58_infect_sweep_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm58_infect_sweep28_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm58_infect_sweep28_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm58_infect_sweep28_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_lm58_infect_sweep28(STALLENABLE,451)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_fromReg0 <= SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_fromReg1 <= SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_consumed0 = (~ (SE_i_unnamed_infect_sweep33_backStall) & SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_wireValid) | SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep4_infect_sweep38_out_stall_out) & SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_wireValid) | SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_StallValid = SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_backStall & SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_toReg0 = SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_StallValid & SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_toReg1 = SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_StallValid & SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_or0 = SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_consumed1 & SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_or0);
    assign SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_backStall = SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_V0 = SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_V1 = SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_wireValid = i_llvm_fpga_mem_lm58_infect_sweep28_out_o_valid;

    // SE_i_unnamed_infect_sweep33(STALLENABLE,477)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_infect_sweep33_fromReg0 <= '0;
            SE_i_unnamed_infect_sweep33_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_unnamed_infect_sweep33_fromReg0 <= SE_i_unnamed_infect_sweep33_toReg0;
            // Successor 1
            SE_i_unnamed_infect_sweep33_fromReg1 <= SE_i_unnamed_infect_sweep33_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_unnamed_infect_sweep33_consumed0 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep6_infect_sweep40_out_stall_out) & SE_i_unnamed_infect_sweep33_wireValid) | SE_i_unnamed_infect_sweep33_fromReg0;
    assign SE_i_unnamed_infect_sweep33_consumed1 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep7_infect_sweep41_out_stall_out) & SE_i_unnamed_infect_sweep33_wireValid) | SE_i_unnamed_infect_sweep33_fromReg1;
    // Consuming
    assign SE_i_unnamed_infect_sweep33_StallValid = SE_i_unnamed_infect_sweep33_backStall & SE_i_unnamed_infect_sweep33_wireValid;
    assign SE_i_unnamed_infect_sweep33_toReg0 = SE_i_unnamed_infect_sweep33_StallValid & SE_i_unnamed_infect_sweep33_consumed0;
    assign SE_i_unnamed_infect_sweep33_toReg1 = SE_i_unnamed_infect_sweep33_StallValid & SE_i_unnamed_infect_sweep33_consumed1;
    // Backward Stall generation
    assign SE_i_unnamed_infect_sweep33_or0 = SE_i_unnamed_infect_sweep33_consumed0;
    assign SE_i_unnamed_infect_sweep33_wireStall = ~ (SE_i_unnamed_infect_sweep33_consumed1 & SE_i_unnamed_infect_sweep33_or0);
    assign SE_i_unnamed_infect_sweep33_backStall = SE_i_unnamed_infect_sweep33_wireStall;
    // Valid signal propagation
    assign SE_i_unnamed_infect_sweep33_V0 = SE_i_unnamed_infect_sweep33_wireValid & ~ (SE_i_unnamed_infect_sweep33_fromReg0);
    assign SE_i_unnamed_infect_sweep33_V1 = SE_i_unnamed_infect_sweep33_wireValid & ~ (SE_i_unnamed_infect_sweep33_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_infect_sweep33_and0 = SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_V0;
    assign SE_i_unnamed_infect_sweep33_wireValid = SE_redist3_i_unnamed_infect_sweep32_q_2_0_V0 & SE_i_unnamed_infect_sweep33_and0;

    // SE_redist3_i_unnamed_infect_sweep32_q_2_0(STALLENABLE,601)
    // Valid signal propagation
    assign SE_redist3_i_unnamed_infect_sweep32_q_2_0_V0 = SE_redist3_i_unnamed_infect_sweep32_q_2_0_R_v_0;
    assign SE_redist3_i_unnamed_infect_sweep32_q_2_0_V1 = SE_redist3_i_unnamed_infect_sweep32_q_2_0_R_v_1;
    // Stall signal propagation
    assign SE_redist3_i_unnamed_infect_sweep32_q_2_0_s_tv_0 = SE_i_unnamed_infect_sweep33_backStall & SE_redist3_i_unnamed_infect_sweep32_q_2_0_R_v_0;
    assign SE_redist3_i_unnamed_infect_sweep32_q_2_0_s_tv_1 = i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep5_infect_sweep39_out_stall_out & SE_redist3_i_unnamed_infect_sweep32_q_2_0_R_v_1;
    // Backward Enable generation
    assign SE_redist3_i_unnamed_infect_sweep32_q_2_0_or0 = SE_redist3_i_unnamed_infect_sweep32_q_2_0_s_tv_0;
    assign SE_redist3_i_unnamed_infect_sweep32_q_2_0_backEN = ~ (SE_redist3_i_unnamed_infect_sweep32_q_2_0_s_tv_1 | SE_redist3_i_unnamed_infect_sweep32_q_2_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_i_unnamed_infect_sweep32_q_2_0_v_s_0 = SE_redist3_i_unnamed_infect_sweep32_q_2_0_backEN & SE_i_unnamed_infect_sweep32_V0;
    // Backward Stall generation
    assign SE_redist3_i_unnamed_infect_sweep32_q_2_0_backStall = ~ (SE_redist3_i_unnamed_infect_sweep32_q_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist3_i_unnamed_infect_sweep32_q_2_0_R_v_0 <= 1'b0;
            SE_redist3_i_unnamed_infect_sweep32_q_2_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_i_unnamed_infect_sweep32_q_2_0_backEN == 1'b0)
            begin
                SE_redist3_i_unnamed_infect_sweep32_q_2_0_R_v_0 <= SE_redist3_i_unnamed_infect_sweep32_q_2_0_R_v_0 & SE_redist3_i_unnamed_infect_sweep32_q_2_0_s_tv_0;
            end
            else
            begin
                SE_redist3_i_unnamed_infect_sweep32_q_2_0_R_v_0 <= SE_redist3_i_unnamed_infect_sweep32_q_2_0_v_s_0;
            end

            if (SE_redist3_i_unnamed_infect_sweep32_q_2_0_backEN == 1'b0)
            begin
                SE_redist3_i_unnamed_infect_sweep32_q_2_0_R_v_1 <= SE_redist3_i_unnamed_infect_sweep32_q_2_0_R_v_1 & SE_redist3_i_unnamed_infect_sweep32_q_2_0_s_tv_1;
            end
            else
            begin
                SE_redist3_i_unnamed_infect_sweep32_q_2_0_R_v_1 <= SE_redist3_i_unnamed_infect_sweep32_q_2_0_v_s_0;
            end

        end
    end

    // i_cmp152183_not_infect_sweep31(LOGICAL,18)@13
    assign i_cmp152183_not_infect_sweep31_q = i_cmp152183_infect_sweep24_q ^ VCC_q;

    // redist7_i_cmp4186_infect_sweep6_c_7_5(REG,355)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_cmp4186_infect_sweep6_c_7_5_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_unnamed_infect_sweep10_q_7_0_backEN == 1'b1)
        begin
            redist7_i_cmp4186_infect_sweep6_c_7_5_q <= $unsigned(SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_D1);
        end
    end

    // redist7_i_cmp4186_infect_sweep6_c_7_6(REG,356)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_cmp4186_infect_sweep6_c_7_6_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_unnamed_infect_sweep10_q_7_1_backEN == 1'b1)
        begin
            redist7_i_cmp4186_infect_sweep6_c_7_6_q <= $unsigned(redist7_i_cmp4186_infect_sweep6_c_7_5_q);
        end
    end

    // i_unnamed_infect_sweep32(LOGICAL,74)@13 + 1
    assign i_unnamed_infect_sweep32_qi = redist7_i_cmp4186_infect_sweep6_c_7_6_q & i_cmp152183_not_infect_sweep31_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_infect_sweep32_delay ( .xin(i_unnamed_infect_sweep32_qi), .xout(i_unnamed_infect_sweep32_q), .ena(SE_i_unnamed_infect_sweep32_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist3_i_unnamed_infect_sweep32_q_2_0(REG,342)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_unnamed_infect_sweep32_q_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist3_i_unnamed_infect_sweep32_q_2_0_backEN == 1'b1)
        begin
            redist3_i_unnamed_infect_sweep32_q_2_0_q <= $unsigned(i_unnamed_infect_sweep32_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep5_infect_sweep39(BLACKBOX,39)@15
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_source_i1_unnamed_5_infect_sweep0 thei_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep5_infect_sweep39 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(redist3_i_unnamed_infect_sweep32_q_2_0_q),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_backStall),
        .in_valid_in(SE_redist3_i_unnamed_infect_sweep32_q_2_0_V1),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep5_infect_sweep39_out_intel_reserved_ffwd_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep5_infect_sweep39_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep5_infect_sweep39_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm58_infect_sweep28(BITJOIN,379)
    assign bubble_join_i_llvm_fpga_mem_lm58_infect_sweep28_q = i_llvm_fpga_mem_lm58_infect_sweep28_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm58_infect_sweep28(BITSELECT,380)
    assign bubble_select_i_llvm_fpga_mem_lm58_infect_sweep28_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm58_infect_sweep28_q[31:0]);

    // i_cmp157180_infect_sweep29(COMPARE,19)@15
    assign i_cmp157180_infect_sweep29_a = $unsigned({{2{c_i32_042_q[31]}}, c_i32_042_q});
    assign i_cmp157180_infect_sweep29_b = $unsigned({{2{bubble_select_i_llvm_fpga_mem_lm58_infect_sweep28_b[31]}}, bubble_select_i_llvm_fpga_mem_lm58_infect_sweep28_b});
    assign i_cmp157180_infect_sweep29_o = $unsigned($signed(i_cmp157180_infect_sweep29_a) - $signed(i_cmp157180_infect_sweep29_b));
    assign i_cmp157180_infect_sweep29_c[0] = i_cmp157180_infect_sweep29_o[33];

    // i_unnamed_infect_sweep33(LOGICAL,75)@15
    assign i_unnamed_infect_sweep33_q = i_cmp157180_infect_sweep29_c & redist3_i_unnamed_infect_sweep32_q_2_0_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep6_infect_sweep40(BLACKBOX,40)@15
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_source_i1_unnamed_6_infect_sweep0 thei_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep6_infect_sweep40 (
        .in_predicate_in(GND_q),
        .in_src_data_in_6_0(i_unnamed_infect_sweep33_q),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_backStall),
        .in_valid_in(SE_i_unnamed_infect_sweep33_V0),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep6_infect_sweep40_out_intel_reserved_ffwd_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep6_infect_sweep40_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep6_infect_sweep40_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_infect_sweep34(LOGICAL,76)@15
    assign i_unnamed_infect_sweep34_q = i_unnamed_infect_sweep33_q ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep7_infect_sweep41(BLACKBOX,41)@15
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_source_i1_unnamed_7_infect_sweep0 thei_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep7_infect_sweep41 (
        .in_predicate_in(GND_q),
        .in_src_data_in_7_0(i_unnamed_infect_sweep34_q),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_backStall),
        .in_valid_in(SE_i_unnamed_infect_sweep33_V1),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep7_infect_sweep41_out_intel_reserved_ffwd_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep7_infect_sweep41_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep7_infect_sweep41_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep4_infect_sweep38(BLACKBOX,45)@15
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_source_i32_unnamed_4_infect_sweep0 thei_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep4_infect_sweep38 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(bubble_select_i_llvm_fpga_mem_lm58_infect_sweep28_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_lm58_infect_sweep28_V1),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep4_infect_sweep38_out_intel_reserved_ffwd_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep4_infect_sweep38_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep4_infect_sweep38_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35(BLACKBOX,42)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_source_i32_unnamed_1_infect_sweep0 thei_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(i_index_0188_replace_phi_infect_sweep1_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_backStall),
        .in_valid_in(SE_i_index_0188_replace_phi_infect_sweep1_V0),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35(STALLENABLE,439)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg(STALLFIFO,698)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(14),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36(STALLENABLE,441)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg(STALLFIFO,699)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1(STALLENABLE,637)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_V0 = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_and0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_and1 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_and2 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_and3 = i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep4_infect_sweep38_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_and4 = i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep7_infect_sweep41_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_and5 = i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep6_infect_sweep40_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep5_infect_sweep39_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_and5;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg(STALLFIFO,700)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37(STALLENABLE,443)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_out_valid_out;

    // i_conv_infect_sweep22_sel_x(BITSELECT,175)@13
    assign i_conv_infect_sweep22_sel_x_b = {16'b0000000000000000, bubble_select_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_c[15:0]};

    // i_conv_infect_sweep22_vt_select_15(BITSELECT,24)@13
    assign i_conv_infect_sweep22_vt_select_15_b = i_conv_infect_sweep22_sel_x_b[15:0];

    // i_conv_infect_sweep22_vt_join(BITJOIN,23)@13
    assign i_conv_infect_sweep22_vt_join_q = {i_conv_infect_sweep22_vt_const_31_q, i_conv_infect_sweep22_vt_select_15_b};

    // i_add_infect_sweep23(ADD,10)@13
    assign i_add_infect_sweep23_a = {1'b0, bubble_select_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_b};
    assign i_add_infect_sweep23_b = {1'b0, i_conv_infect_sweep22_vt_join_q};
    assign i_add_infect_sweep23_o = $unsigned(i_add_infect_sweep23_a) + $unsigned(i_add_infect_sweep23_b);
    assign i_add_infect_sweep23_q = i_add_infect_sweep23_o[32:0];

    // bgTrunc_i_add_infect_sweep23_sel_x(BITSELECT,131)@13
    assign bgTrunc_i_add_infect_sweep23_sel_x_b = i_add_infect_sweep23_q[31:0];

    // i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37(BLACKBOX,44)@13
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_source_i32_unnamed_3_infect_sweep0 thei_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(bgTrunc_i_add_infect_sweep23_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_V3),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_out_intel_reserved_ffwd_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_unnamed_infect_sweep32(STALLENABLE,476)
    // Valid signal propagation
    assign SE_i_unnamed_infect_sweep32_V0 = SE_i_unnamed_infect_sweep32_R_v_0;
    // Stall signal propagation
    assign SE_i_unnamed_infect_sweep32_s_tv_0 = SE_redist3_i_unnamed_infect_sweep32_q_2_0_backStall & SE_i_unnamed_infect_sweep32_R_v_0;
    // Backward Enable generation
    assign SE_i_unnamed_infect_sweep32_backEN = ~ (SE_i_unnamed_infect_sweep32_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_infect_sweep32_and0 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_V2 & SE_i_unnamed_infect_sweep32_backEN;
    assign SE_i_unnamed_infect_sweep32_v_s_0 = SE_redist6_i_unnamed_infect_sweep10_q_7_1_V1 & SE_i_unnamed_infect_sweep32_and0;
    // Backward Stall generation
    assign SE_i_unnamed_infect_sweep32_backStall = ~ (SE_i_unnamed_infect_sweep32_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_infect_sweep32_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_infect_sweep32_backEN == 1'b0)
            begin
                SE_i_unnamed_infect_sweep32_R_v_0 <= SE_i_unnamed_infect_sweep32_R_v_0 & SE_i_unnamed_infect_sweep32_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_infect_sweep32_R_v_0 <= SE_i_unnamed_infect_sweep32_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36(BLACKBOX,43)@13
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_source_i32_unnamed_2_infect_sweep0 thei_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(bubble_select_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_V1),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_unnamed_infect_sweep26(STALLENABLE,475)
    // Valid signal propagation
    assign SE_i_unnamed_infect_sweep26_V0 = SE_i_unnamed_infect_sweep26_wireValid;
    // Backward Stall generation
    assign SE_i_unnamed_infect_sweep26_backStall = i_llvm_fpga_mem_lm58_infect_sweep28_out_o_stall | ~ (SE_i_unnamed_infect_sweep26_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_infect_sweep26_and0 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_V0;
    assign SE_i_unnamed_infect_sweep26_and1 = SE_redist6_i_unnamed_infect_sweep10_q_7_1_V0 & SE_i_unnamed_infect_sweep26_and0;
    assign SE_i_unnamed_infect_sweep26_wireValid = i_llvm_fpga_ffwd_dest_p1024i32_placetypenum46_infect_sweep27_out_valid_out & SE_i_unnamed_infect_sweep26_and1;

    // SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x(STALLENABLE,501)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_fromReg1 <= '0;
            SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_fromReg2 <= '0;
            SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_fromReg0 <= SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_fromReg1 <= SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_fromReg2 <= SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_fromReg3 <= SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_consumed0 = (~ (SE_i_unnamed_infect_sweep26_backStall) & SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_out_stall_out) & SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_fromReg1;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_consumed2 = (~ (SE_i_unnamed_infect_sweep32_backStall) & SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_fromReg2;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_consumed3 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_out_stall_out) & SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_StallValid = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_backStall & SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_wireValid;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_toReg0 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_StallValid & SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_toReg1 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_StallValid & SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_consumed1;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_toReg2 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_StallValid & SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_consumed2;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_toReg3 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_StallValid & SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_or0 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_or1 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_consumed1 & SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_or0;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_or2 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_consumed2 & SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_or1;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_wireStall = ~ (SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_consumed3 & SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_or2);
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_backStall = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_V0 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_V1 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_fromReg1);
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_V2 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_fromReg2);
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_V3 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_wireValid = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_o_valid;

    // redist4_i_unnamed_infect_sweep10_q_3_0(REG,343)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_unnamed_infect_sweep10_q_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_i_unnamed_infect_sweep10_q_3_0_backEN == 1'b1)
        begin
            redist4_i_unnamed_infect_sweep10_q_3_0_q <= $unsigned(i_unnamed_infect_sweep10_q);
        end
    end

    // redist4_i_unnamed_infect_sweep10_q_3_1(REG,344)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_unnamed_infect_sweep10_q_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_i_unnamed_infect_sweep10_q_3_1_backEN == 1'b1)
        begin
            redist4_i_unnamed_infect_sweep10_q_3_1_q <= $unsigned(redist4_i_unnamed_infect_sweep10_q_3_0_q);
        end
    end

    // redist4_i_unnamed_infect_sweep10_q_3_2(REG,345)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_unnamed_infect_sweep10_q_3_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_i_unnamed_infect_sweep10_q_3_2_backEN == 1'b1)
        begin
            redist4_i_unnamed_infect_sweep10_q_3_2_q <= $unsigned(redist4_i_unnamed_infect_sweep10_q_3_1_q);
        end
    end

    // redist5_i_unnamed_infect_sweep10_q_5_0(REG,346)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_unnamed_infect_sweep10_q_5_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_i_unnamed_infect_sweep10_q_5_0_backEN == 1'b1)
        begin
            redist5_i_unnamed_infect_sweep10_q_5_0_q <= $unsigned(redist4_i_unnamed_infect_sweep10_q_3_2_q);
        end
    end

    // redist5_i_unnamed_infect_sweep10_q_5_1(REG,347)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_unnamed_infect_sweep10_q_5_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_i_unnamed_infect_sweep10_q_5_1_backEN == 1'b1)
        begin
            redist5_i_unnamed_infect_sweep10_q_5_1_q <= $unsigned(redist5_i_unnamed_infect_sweep10_q_5_0_q);
        end
    end

    // bubble_join_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15(BITJOIN,382)
    assign bubble_join_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_q = i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15(BITSELECT,383)
    assign bubble_select_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_b = $unsigned(bubble_join_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_q[31:0]);

    // i_idxprom11_phi_trans_insert_infect_sweep16_sel_x(BITSELECT,182)@11
    assign i_idxprom11_phi_trans_insert_infect_sweep16_sel_x_b = $unsigned({{32{bubble_select_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_b[31]}}, bubble_select_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_b[31:0]});

    // i_firstperson_phi_trans_insert_infect_sweep0_narrow_x(BITSELECT,178)@11
    assign i_firstperson_phi_trans_insert_infect_sweep0_narrow_x_b = i_idxprom11_phi_trans_insert_infect_sweep16_sel_x_b[60:0];

    // i_firstperson_phi_trans_insert_infect_sweep0_shift_join_x(BITJOIN,179)@11
    assign i_firstperson_phi_trans_insert_infect_sweep0_shift_join_x_q = {i_firstperson_phi_trans_insert_infect_sweep0_narrow_x_b, i_firstperson_phi_trans_insert_infect_sweep18_vt_const_2_q};

    // bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17(BITJOIN,391)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17_q = i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17(BITSELECT,392)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17_vt_select_63(BITSELECT,61)@11
    assign i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_vt_const_9(CONSTANT,51)
    assign i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17_vt_join(BITJOIN,60)@11
    assign i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17_vt_join_q = {i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_vt_const_9_q};

    // i_firstperson_phi_trans_insert_infect_sweep0_add_x(ADD,176)@11
    assign i_firstperson_phi_trans_insert_infect_sweep0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17_vt_join_q};
    assign i_firstperson_phi_trans_insert_infect_sweep0_add_x_b = {1'b0, i_firstperson_phi_trans_insert_infect_sweep0_shift_join_x_q};
    assign i_firstperson_phi_trans_insert_infect_sweep0_add_x_o = $unsigned(i_firstperson_phi_trans_insert_infect_sweep0_add_x_a) + $unsigned(i_firstperson_phi_trans_insert_infect_sweep0_add_x_b);
    assign i_firstperson_phi_trans_insert_infect_sweep0_add_x_q = i_firstperson_phi_trans_insert_infect_sweep0_add_x_o[64:0];

    // i_firstperson_phi_trans_insert_infect_sweep0_dupName_0_trunc_sel_x(BITSELECT,181)@11
    assign i_firstperson_phi_trans_insert_infect_sweep0_dupName_0_trunc_sel_x_b = i_firstperson_phi_trans_insert_infect_sweep0_add_x_q[63:0];

    // i_firstperson_phi_trans_insert_infect_sweep18_vt_select_63(BITSELECT,27)@11
    assign i_firstperson_phi_trans_insert_infect_sweep18_vt_select_63_b = i_firstperson_phi_trans_insert_infect_sweep0_dupName_0_trunc_sel_x_b[63:3];

    // i_firstperson_phi_trans_insert_infect_sweep18_vt_join(BITJOIN,26)@11
    assign i_firstperson_phi_trans_insert_infect_sweep18_vt_join_q = {i_firstperson_phi_trans_insert_infect_sweep18_vt_select_63_b, i_firstperson_phi_trans_insert_infect_sweep18_vt_const_2_q};

    // i_memcoalesce_bitcast_infect_sweep_fpgaunique_0_infect_sweep19_vt_select_63(BITSELECT,68)@11
    assign i_memcoalesce_bitcast_infect_sweep_fpgaunique_0_infect_sweep19_vt_select_63_b = i_firstperson_phi_trans_insert_infect_sweep18_vt_join_q[63:3];

    // i_firstperson_phi_trans_insert_infect_sweep18_vt_const_2(CONSTANT,25)
    assign i_firstperson_phi_trans_insert_infect_sweep18_vt_const_2_q = $unsigned(3'b000);

    // i_memcoalesce_bitcast_infect_sweep_fpgaunique_0_infect_sweep19_vt_join(BITJOIN,67)@11
    assign i_memcoalesce_bitcast_infect_sweep_fpgaunique_0_infect_sweep19_vt_join_q = {i_memcoalesce_bitcast_infect_sweep_fpgaunique_0_infect_sweep19_vt_select_63_b, i_firstperson_phi_trans_insert_infect_sweep18_vt_const_2_q};

    // i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x(BLACKBOX,185)@11
    // in in_i_stall@20000000
    // out out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_address@20000000
    // out out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_burstcount@20000000
    // out out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_byteenable@20000000
    // out out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_enable@20000000
    // out out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_read@20000000
    // out out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_write@20000000
    // out out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@13
    // out out_o_readdata_0_tpl@13
    // out out_o_readdata_1_tpl@13
    // out out_o_readdata_2_tpl@13
    infect_sweep_i_llvm_fpga_mem_memcoalesce0000ique_0_infect_sweep0 thei_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x (
        .in_flush(in_flush),
        .in_i_address(i_memcoalesce_bitcast_infect_sweep_fpgaunique_0_infect_sweep19_vt_join_q),
        .in_i_predicate(redist5_i_unnamed_infect_sweep10_q_5_1_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_V0),
        .in_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_readdata(in_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_readdata),
        .in_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_readdatavalid(in_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_readdatavalid),
        .in_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_waitrequest(in_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_waitrequest),
        .in_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_writeack(in_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_writeack),
        .out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_address(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_address),
        .out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_burstcount(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_burstcount),
        .out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_byteenable(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_byteenable),
        .out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_enable(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_enable),
        .out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_read(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_read),
        .out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_write(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_write),
        .out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_writedata(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_o_valid),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_o_readdata_0_tpl),
        .out_o_readdata_1_tpl(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_o_readdata_1_tpl),
        .out_o_readdata_2_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist5_i_unnamed_infect_sweep10_q_5_1(STALLENABLE,606)
    // Valid signal propagation
    assign SE_redist5_i_unnamed_infect_sweep10_q_5_1_V0 = SE_redist5_i_unnamed_infect_sweep10_q_5_1_R_v_0;
    assign SE_redist5_i_unnamed_infect_sweep10_q_5_1_V1 = SE_redist5_i_unnamed_infect_sweep10_q_5_1_R_v_1;
    // Stall signal propagation
    assign SE_redist5_i_unnamed_infect_sweep10_q_5_1_s_tv_0 = SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_backStall & SE_redist5_i_unnamed_infect_sweep10_q_5_1_R_v_0;
    assign SE_redist5_i_unnamed_infect_sweep10_q_5_1_s_tv_1 = SR_SE_redist6_i_unnamed_infect_sweep10_q_7_0_backStall & SE_redist5_i_unnamed_infect_sweep10_q_5_1_R_v_1;
    // Backward Enable generation
    assign SE_redist5_i_unnamed_infect_sweep10_q_5_1_or0 = SE_redist5_i_unnamed_infect_sweep10_q_5_1_s_tv_0;
    assign SE_redist5_i_unnamed_infect_sweep10_q_5_1_backEN = ~ (SE_redist5_i_unnamed_infect_sweep10_q_5_1_s_tv_1 | SE_redist5_i_unnamed_infect_sweep10_q_5_1_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_unnamed_infect_sweep10_q_5_1_v_s_0 = SE_redist5_i_unnamed_infect_sweep10_q_5_1_backEN & SE_redist5_i_unnamed_infect_sweep10_q_5_0_V0;
    // Backward Stall generation
    assign SE_redist5_i_unnamed_infect_sweep10_q_5_1_backStall = ~ (SE_redist5_i_unnamed_infect_sweep10_q_5_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_i_unnamed_infect_sweep10_q_5_1_R_v_0 <= 1'b0;
            SE_redist5_i_unnamed_infect_sweep10_q_5_1_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_unnamed_infect_sweep10_q_5_1_backEN == 1'b0)
            begin
                SE_redist5_i_unnamed_infect_sweep10_q_5_1_R_v_0 <= SE_redist5_i_unnamed_infect_sweep10_q_5_1_R_v_0 & SE_redist5_i_unnamed_infect_sweep10_q_5_1_s_tv_0;
            end
            else
            begin
                SE_redist5_i_unnamed_infect_sweep10_q_5_1_R_v_0 <= SE_redist5_i_unnamed_infect_sweep10_q_5_1_v_s_0;
            end

            if (SE_redist5_i_unnamed_infect_sweep10_q_5_1_backEN == 1'b0)
            begin
                SE_redist5_i_unnamed_infect_sweep10_q_5_1_R_v_1 <= SE_redist5_i_unnamed_infect_sweep10_q_5_1_R_v_1 & SE_redist5_i_unnamed_infect_sweep10_q_5_1_s_tv_1;
            end
            else
            begin
                SE_redist5_i_unnamed_infect_sweep10_q_5_1_R_v_1 <= SE_redist5_i_unnamed_infect_sweep10_q_5_1_v_s_0;
            end

        end
    end

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_c_i64_82_x(CONSTANT,188)
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_c_i64_82_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000001000);

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_multconst_x(CONSTANT,196)
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_multconst_x_q = $unsigned(57'b000000000000000000000000000000000000000000000000000000000);

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_shift0(BITSHIFT,316)@8
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_shift0_qint = { i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_shift0_q = i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_shift0_qint[11:0];

    // bubble_join_i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11(BITJOIN,376)
    assign bubble_join_i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_q = i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11(BITSELECT,377)
    assign bubble_select_i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_b = $unsigned(bubble_join_i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_q[31:0]);

    // i_idxprom9_phi_trans_insert_infect_sweep12_sel_x(BITSELECT,183)@8
    assign i_idxprom9_phi_trans_insert_infect_sweep12_sel_x_b = $unsigned({{32{bubble_select_i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_b[31]}}, bubble_select_i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_b[31:0]});

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select(BITSELECT,329)@8
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_b = i_idxprom9_phi_trans_insert_infect_sweep12_sel_x_b[63:54];
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_c = i_idxprom9_phi_trans_insert_infect_sweep12_sel_x_b[53:36];
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_d = i_idxprom9_phi_trans_insert_infect_sweep12_sel_x_b[35:18];
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_e = i_idxprom9_phi_trans_insert_infect_sweep12_sel_x_b[17:0];

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_add_1(ADD,317)@8
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_add_1_a = {3'b000, i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_b};
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_add_1_b = {1'b0, i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_shift0_q};
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_add_1_o = $unsigned(i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_add_1_a) + $unsigned(i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_add_1_b);
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_add_1_q = i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_add_1_o[12:0];

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_shift2(BITSHIFT,318)@8
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_shift2_qint = { i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_add_1_q, 4'b0000 };
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_shift2_q = i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_shift2_qint[16:0];

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_align_3(BITSHIFT,257)@8
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_align_3_qint = { i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im0_shift2_q, 11'b00000000000 };
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_align_3_q = i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_align_3_qint[27:0];

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_shift0(BITSHIFT,322)@8
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_shift0_qint = { i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_shift0_q = i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_shift0_qint[19:0];

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_add_1(ADD,323)@8
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_add_1_a = {3'b000, i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_d};
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_add_1_b = {1'b0, i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_shift0_q};
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_add_1_o = $unsigned(i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_add_1_a) + $unsigned(i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_add_1_b);
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_add_1_q = i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_add_1_o[20:0];

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_shift2(BITSHIFT,324)@8
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_shift2_qint = { i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_add_1_q, 4'b0000 };
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_shift2_q = i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_shift2_qint[24:0];

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_align_2(BITSHIFT,256)@8
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_align_2_qint = { i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im6_shift2_q, 18'b000000000000000000 };
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_align_2_q = i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_align_2_qint[42:0];

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_join_4(BITJOIN,258)@8
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_join_4_q = {i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_align_3_q, i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_align_2_q};

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_shift0(BITSHIFT,319)@8
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_shift0_qint = { i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_shift0_q = i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_shift0_qint[19:0];

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_add_1(ADD,320)@8
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_add_1_a = {3'b000, i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_c};
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_add_1_b = {1'b0, i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_shift0_q};
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_add_1_o = $unsigned(i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_add_1_a) + $unsigned(i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_add_1_b);
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_add_1_q = i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_add_1_o[20:0];

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_shift2(BITSHIFT,321)@8
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_shift2_qint = { i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_add_1_q, 4'b0000 };
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_shift2_q = i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_shift2_qint[24:0];

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_align_0(BITSHIFT,254)@8
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_align_0_qint = { i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im3_shift2_q, 11'b00000000000 };
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_align_0_q = i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_align_0_qint[35:0];

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_shift0(BITSHIFT,325)@8
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_shift0_qint = { i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_shift0_q = i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_shift0_qint[19:0];

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_add_1(ADD,326)@8
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_add_1_a = {3'b000, i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_e};
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_add_1_b = {1'b0, i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_shift0_q};
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_add_1_o = $unsigned(i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_add_1_a) + $unsigned(i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_add_1_b);
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_add_1_q = i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_add_1_o[20:0];

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_shift2(BITSHIFT,327)@8
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_shift2_qint = { i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_add_1_q, 4'b0000 };
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_shift2_q = i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_shift2_qint[24:0];

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_join_1(BITJOIN,255)@8
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_join_1_q = {i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_align_0_q, i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_im9_shift2_q};

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0(ADD,259)@8
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_join_1_q};
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0_b = {1'b0, i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_join_4_q};
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0_o = $unsigned(i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0_a) + $unsigned(i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0_b);
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0_q = i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0_o[71:0];

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_extender_x(BITJOIN,195)@8
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_extender_x_q = {i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_multconst_x_q, i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0_q[70:0]};

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x(BITSELECT,197)@8
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b = i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_mult_extender_x_q[63:0];

    // redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0(REG,339)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_q <= $unsigned(i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b);
        end
    end

    // bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13(BITJOIN,394)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_q = i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13(BITSELECT,395)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_vt_select_63(BITSELECT,65)@9
    assign i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_vt_join(BITJOIN,64)@9
    assign i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_vt_join_q = {i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_vt_const_9_q};

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_add_x(ADD,186)@9
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_vt_join_q};
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_add_x_b = {1'b0, redist0_i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_q};
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_add_x_o = $unsigned(i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_add_x_a) + $unsigned(i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_add_x_b);
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_add_x_q = i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_add_x_o[64:0];

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_dupName_0_trunc_sel_x(BITSELECT,198)@9
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_dupName_0_trunc_sel_x_b = i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_add_x_q[63:0];

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_dupName_0_add_x(ADD,192)@9
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_dupName_0_add_x_a = {1'b0, i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_dupName_0_trunc_sel_x_b};
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_dupName_0_add_x_b = {1'b0, i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_c_i64_82_x_q};
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_dupName_0_add_x_o = $unsigned(i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_dupName_0_add_x_a) + $unsigned(i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_dupName_0_add_x_b);
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_dupName_0_add_x_q = i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_dupName_0_add_x_o[64:0];

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_dupName_1_trunc_sel_x(BITSELECT,199)@9
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_dupName_1_trunc_sel_x_b = i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_dupName_0_add_x_q[63:0];

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep14_vt_select_63(BITSELECT,71)@9
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep14_vt_select_63_b = i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep0_dupName_1_trunc_sel_x_b[63:3];

    // i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep14_vt_join(BITJOIN,70)@9
    assign i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep14_vt_join_q = {i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep14_vt_select_63_b, i_firstperson_phi_trans_insert_infect_sweep18_vt_const_2_q};

    // i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15(BLACKBOX,49)@9
    // in in_i_stall@20000000
    // out out_o_readdata@11
    // out out_o_stall@20000000
    // out out_o_valid@11
    // out out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_address@20000000
    // out out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_burstcount@20000000
    // out out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_byteenable@20000000
    // out out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_enable@20000000
    // out out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_read@20000000
    // out out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_write@20000000
    // out out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_writedata@20000000
    infect_sweep_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_0 thei_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15 (
        .in_flush(in_flush),
        .in_i_address(i_si_sroa_3_0_sroa_idx48_phi_trans_insert_infect_sweep14_vt_join_q),
        .in_i_predicate(redist4_i_unnamed_infect_sweep10_q_3_2_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer28_infect_sweep13_V0),
        .in_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_readdata(in_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_readdata),
        .in_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_readdatavalid(in_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_readdatavalid),
        .in_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_waitrequest(in_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_waitrequest),
        .in_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_writeack(in_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_o_valid),
        .out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_address(i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_address),
        .out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_burstcount(i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_burstcount),
        .out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_byteenable(i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_byteenable),
        .out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_enable(i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_enable),
        .out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_read(i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_read),
        .out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_write(i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_write),
        .out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_writedata(i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15(STALLENABLE,453)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_V0 = SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_backStall = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_and0 = i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_and1 = i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17_out_valid_out & SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_and0;
    assign SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_wireValid = SE_redist5_i_unnamed_infect_sweep10_q_5_1_V0 & SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_and1;

    // i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17(BLACKBOX,58)@11
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_sync_buffer_p100000olds_sync_buffer32_0 thei_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17 (
        .in_buffer_in(in_Households),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_backStall),
        .in_valid_in(SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6(STALLENABLE,697)
    // Valid signal propagation
    assign SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_V0 = SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_backStall = i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer32_infect_sweep17_out_stall_out | ~ (SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_wireValid = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg_valid_out;

    // bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg(STALLFIFO,705)
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg_valid_in = SE_out_infect_sweep_B2_merge_reg_aunroll_x_V5;
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg_stall_in = SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_backStall;
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg_valid_in[0];
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg_stall_in[0];
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg_valid_out[0] = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp;
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg_stall_out[0] = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(11),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg (
        .valid_in(bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg(STALLFIFO,704)
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg_valid_in = SE_out_infect_sweep_B2_merge_reg_aunroll_x_V4;
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg_stall_in = SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_backStall;
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg_valid_in[0];
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg_stall_in[0];
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg_valid_out[0] = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp;
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg_stall_out[0] = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg (
        .valid_in(bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4(STALLENABLE,693)
    // Valid signal propagation
    assign SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_V0 = SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_backStall = i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_out_stall_out | ~ (SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_wireValid = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg_valid_out;

    // bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg(STALLFIFO,703)
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg_valid_in = SE_out_infect_sweep_B2_merge_reg_aunroll_x_V3;
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg_stall_in = SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_backStall;
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg_valid_in[0];
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg_stall_in[0];
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg_valid_out[0] = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg_stall_out[0] = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg (
        .valid_in(bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3(STALLENABLE,691)
    // Valid signal propagation
    assign SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_V0 = SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_backStall = i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_out_stall_out | ~ (SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_wireValid = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg_valid_out;

    // bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg(STALLFIFO,702)
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg_valid_in = SE_out_infect_sweep_B2_merge_reg_aunroll_x_V2;
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg_stall_in = SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_backStall;
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg_valid_in[0];
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg_stall_in[0];
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg_valid_out[0] = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg_stall_out[0] = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg (
        .valid_in(bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg(STALLFIFO,701)
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg_valid_in = SE_out_infect_sweep_B2_merge_reg_aunroll_x_V1;
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(13),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,397)
    assign bubble_join_stall_entry_q = in_forked86;

    // bubble_select_stall_entry(BITSELECT,398)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,479)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = infect_sweep_B2_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // infect_sweep_B2_merge_reg_aunroll_x(BLACKBOX,200)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    infect_sweep_B2_merge_reg theinfect_sweep_B2_merge_reg_aunroll_x (
        .in_stall_in(SE_out_infect_sweep_B2_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(infect_sweep_B2_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(infect_sweep_B2_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(infect_sweep_B2_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_infect_sweep_B2_merge_reg_aunroll_x(STALLENABLE,509)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg0 <= SE_out_infect_sweep_B2_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg1 <= SE_out_infect_sweep_B2_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg2 <= SE_out_infect_sweep_B2_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg3 <= SE_out_infect_sweep_B2_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg4 <= SE_out_infect_sweep_B2_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg5 <= SE_out_infect_sweep_B2_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg6 <= SE_out_infect_sweep_B2_merge_reg_aunroll_x_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_out_stall_out) & SE_out_infect_sweep_B2_merge_reg_aunroll_x_wireValid) | SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg0;
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_infect_sweep_B2_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_infect_sweep_B2_merge_reg_aunroll_x_wireValid) | SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg1;
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed2 = (~ (bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_reg_stall_out) & SE_out_infect_sweep_B2_merge_reg_aunroll_x_wireValid) | SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg2;
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed3 = (~ (bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_reg_stall_out) & SE_out_infect_sweep_B2_merge_reg_aunroll_x_wireValid) | SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg3;
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed4 = (~ (bubble_out_infect_sweep_B2_merge_reg_aunroll_x_5_reg_stall_out) & SE_out_infect_sweep_B2_merge_reg_aunroll_x_wireValid) | SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg4;
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed5 = (~ (bubble_out_infect_sweep_B2_merge_reg_aunroll_x_6_reg_stall_out) & SE_out_infect_sweep_B2_merge_reg_aunroll_x_wireValid) | SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg5;
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed6 = (~ (SE_i_index_0188_replace_phi_infect_sweep1_backStall) & SE_out_infect_sweep_B2_merge_reg_aunroll_x_wireValid) | SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg6;
    // Consuming
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_StallValid = SE_out_infect_sweep_B2_merge_reg_aunroll_x_backStall & SE_out_infect_sweep_B2_merge_reg_aunroll_x_wireValid;
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_toReg0 = SE_out_infect_sweep_B2_merge_reg_aunroll_x_StallValid & SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed0;
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_toReg1 = SE_out_infect_sweep_B2_merge_reg_aunroll_x_StallValid & SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed1;
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_toReg2 = SE_out_infect_sweep_B2_merge_reg_aunroll_x_StallValid & SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed2;
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_toReg3 = SE_out_infect_sweep_B2_merge_reg_aunroll_x_StallValid & SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed3;
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_toReg4 = SE_out_infect_sweep_B2_merge_reg_aunroll_x_StallValid & SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed4;
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_toReg5 = SE_out_infect_sweep_B2_merge_reg_aunroll_x_StallValid & SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed5;
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_toReg6 = SE_out_infect_sweep_B2_merge_reg_aunroll_x_StallValid & SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed6;
    // Backward Stall generation
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_or0 = SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed0;
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_or1 = SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed1 & SE_out_infect_sweep_B2_merge_reg_aunroll_x_or0;
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_or2 = SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed2 & SE_out_infect_sweep_B2_merge_reg_aunroll_x_or1;
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_or3 = SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed3 & SE_out_infect_sweep_B2_merge_reg_aunroll_x_or2;
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_or4 = SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed4 & SE_out_infect_sweep_B2_merge_reg_aunroll_x_or3;
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_or5 = SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed5 & SE_out_infect_sweep_B2_merge_reg_aunroll_x_or4;
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_wireStall = ~ (SE_out_infect_sweep_B2_merge_reg_aunroll_x_consumed6 & SE_out_infect_sweep_B2_merge_reg_aunroll_x_or5);
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_backStall = SE_out_infect_sweep_B2_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_V0 = SE_out_infect_sweep_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg0);
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_V1 = SE_out_infect_sweep_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg1);
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_V2 = SE_out_infect_sweep_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg2);
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_V3 = SE_out_infect_sweep_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg3);
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_V4 = SE_out_infect_sweep_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg4);
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_V5 = SE_out_infect_sweep_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg5);
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_V6 = SE_out_infect_sweep_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_infect_sweep_B2_merge_reg_aunroll_x_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_infect_sweep_B2_merge_reg_aunroll_x_wireValid = infect_sweep_B2_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0(STALLENABLE,429)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_backStall = SE_i_index_0188_replace_phi_infect_sweep1_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_wireValid = i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0(BLACKBOX,37)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_dest_i32_inc360_487_0 thei_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0 (
        .in_intel_reserved_ffwd_47_0(in_intel_reserved_ffwd_47_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_backStall),
        .in_valid_in(SE_out_infect_sweep_B2_merge_reg_aunroll_x_V0),
        .out_dest_data_out_47_0(i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_out_dest_data_out_47_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0(BITJOIN,360)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_q = i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_out_dest_data_out_47_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0(BITSELECT,361)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_q[31:0]);

    // bubble_join_infect_sweep_B2_merge_reg_aunroll_x(BITJOIN,404)
    assign bubble_join_infect_sweep_B2_merge_reg_aunroll_x_q = infect_sweep_B2_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_infect_sweep_B2_merge_reg_aunroll_x(BITSELECT,405)
    assign bubble_select_infect_sweep_B2_merge_reg_aunroll_x_b = $unsigned(bubble_join_infect_sweep_B2_merge_reg_aunroll_x_q[0:0]);

    // SE_i_index_0188_replace_phi_infect_sweep1(STALLENABLE,427)
    // Valid signal propagation
    assign SE_i_index_0188_replace_phi_infect_sweep1_V0 = SE_i_index_0188_replace_phi_infect_sweep1_R_v_0;
    assign SE_i_index_0188_replace_phi_infect_sweep1_V1 = SE_i_index_0188_replace_phi_infect_sweep1_R_v_1;
    // Stall signal propagation
    assign SE_i_index_0188_replace_phi_infect_sweep1_s_tv_0 = i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_out_stall_out & SE_i_index_0188_replace_phi_infect_sweep1_R_v_0;
    assign SE_i_index_0188_replace_phi_infect_sweep1_s_tv_1 = SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_backStall & SE_i_index_0188_replace_phi_infect_sweep1_R_v_1;
    // Backward Enable generation
    assign SE_i_index_0188_replace_phi_infect_sweep1_or0 = SE_i_index_0188_replace_phi_infect_sweep1_s_tv_0;
    assign SE_i_index_0188_replace_phi_infect_sweep1_backEN = ~ (SE_i_index_0188_replace_phi_infect_sweep1_s_tv_1 | SE_i_index_0188_replace_phi_infect_sweep1_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_index_0188_replace_phi_infect_sweep1_and0 = SE_out_i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_V0 & SE_i_index_0188_replace_phi_infect_sweep1_backEN;
    assign SE_i_index_0188_replace_phi_infect_sweep1_v_s_0 = SE_out_infect_sweep_B2_merge_reg_aunroll_x_V6 & SE_i_index_0188_replace_phi_infect_sweep1_and0;
    // Backward Stall generation
    assign SE_i_index_0188_replace_phi_infect_sweep1_backStall = ~ (SE_i_index_0188_replace_phi_infect_sweep1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_index_0188_replace_phi_infect_sweep1_R_v_0 <= 1'b0;
            SE_i_index_0188_replace_phi_infect_sweep1_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_index_0188_replace_phi_infect_sweep1_backEN == 1'b0)
            begin
                SE_i_index_0188_replace_phi_infect_sweep1_R_v_0 <= SE_i_index_0188_replace_phi_infect_sweep1_R_v_0 & SE_i_index_0188_replace_phi_infect_sweep1_s_tv_0;
            end
            else
            begin
                SE_i_index_0188_replace_phi_infect_sweep1_R_v_0 <= SE_i_index_0188_replace_phi_infect_sweep1_v_s_0;
            end

            if (SE_i_index_0188_replace_phi_infect_sweep1_backEN == 1'b0)
            begin
                SE_i_index_0188_replace_phi_infect_sweep1_R_v_1 <= SE_i_index_0188_replace_phi_infect_sweep1_R_v_1 & SE_i_index_0188_replace_phi_infect_sweep1_s_tv_1;
            end
            else
            begin
                SE_i_index_0188_replace_phi_infect_sweep1_R_v_1 <= SE_i_index_0188_replace_phi_infect_sweep1_v_s_0;
            end

        end
    end

    // i_index_0188_replace_phi_infect_sweep1(MUX,36)@1 + 1
    assign i_index_0188_replace_phi_infect_sweep1_s = bubble_select_infect_sweep_B2_merge_reg_aunroll_x_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_index_0188_replace_phi_infect_sweep1_q <= 32'b0;
        end
        else if (SE_i_index_0188_replace_phi_infect_sweep1_backEN == 1'b1)
        begin
            unique case (i_index_0188_replace_phi_infect_sweep1_s)
                1'b0 : i_index_0188_replace_phi_infect_sweep1_q <= bubble_select_i_llvm_fpga_ffwd_dest_i32_inc360_487_infect_sweep0_b;
                1'b1 : i_index_0188_replace_phi_infect_sweep1_q <= c_i32_042_q;
                default : i_index_0188_replace_phi_infect_sweep1_q <= 32'b0;
            endcase
        end
    end

    // i_idxprom_infect_sweep2_sel_x(BITSELECT,184)@2
    assign i_idxprom_infect_sweep2_sel_x_b = {32'b00000000000000000000000000000000, i_index_0188_replace_phi_infect_sweep1_q[31:0]};

    // i_idxprom_infect_sweep2_vt_select_31(BITSELECT,35)@2
    assign i_idxprom_infect_sweep2_vt_select_31_b = i_idxprom_infect_sweep2_sel_x_b[31:0];

    // i_idxprom_infect_sweep2_vt_join(BITJOIN,34)@2
    assign i_idxprom_infect_sweep2_vt_join_q = {c_i32_042_q, i_idxprom_infect_sweep2_vt_select_31_b};

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select(BITSELECT,328)@2
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_b = i_idxprom_infect_sweep2_vt_join_q[63:54];
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_c = i_idxprom_infect_sweep2_vt_join_q[53:36];
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_d = i_idxprom_infect_sweep2_vt_join_q[35:18];
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_e = i_idxprom_infect_sweep2_vt_join_q[17:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift2(BITSHIFT,290)@2
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift2_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_b, 5'b00000 };
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift2_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift2_qint[14:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_sub_3(SUB,291)@2
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_sub_3_a = {1'b0, i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift2_q};
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_sub_3_b = {6'b000000, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_b};
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_sub_3_o = $unsigned(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_sub_3_a) - $unsigned(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_sub_3_b);
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_sub_3_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_sub_3_o[15:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift4(BITSHIFT,292)@2
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift4_qint = { i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_sub_3_q, 5'b00000 };
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift4_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift4_qint[20:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift0(BITSHIFT,288)@2
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift0_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_b, 3'b000 };
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift0_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift0_qint[12:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_1(ADD,289)@2
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_1_a = {4'b0000, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_b};
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_1_b = {1'b0, i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift0_q};
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_1_o = $unsigned(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_1_a) + $unsigned(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_1_b);
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_1_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_1_o[13:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_5(ADD,293)@2 + 1
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_5_a = $unsigned({9'b000000000, i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_1_q});
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_5_b = $unsigned({{2{i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift4_q[20]}}, i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift4_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_5_o <= 23'b0;
        end
        else if (SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_backEN == 1'b1)
        begin
            i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_5_o <= $unsigned($signed(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_5_a) + $signed(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_5_b));
        end
    end
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_5_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_5_o[21:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift6(BITSHIFT,294)@3
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift6_qint = { i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_add_5_q, 2'b00 };
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift6_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift6_qint[23:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_align_3(BITSHIFT,239)@3
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_align_3_qint = { i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im0_shift6_q[21:0], 6'b000000 };
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_align_3_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_align_3_qint[27:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift2(BITSHIFT,304)@2
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift2_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_d, 5'b00000 };
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift2_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift2_qint[22:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_sub_3(SUB,305)@2
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_sub_3_a = {1'b0, i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift2_q};
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_sub_3_b = {6'b000000, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_d};
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_sub_3_o = $unsigned(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_sub_3_a) - $unsigned(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_sub_3_b);
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_sub_3_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_sub_3_o[23:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift4(BITSHIFT,306)@2
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift4_qint = { i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_sub_3_q, 5'b00000 };
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift4_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift4_qint[28:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift0(BITSHIFT,302)@2
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift0_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_d, 3'b000 };
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift0_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift0_qint[20:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_1(ADD,303)@2
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_1_a = {4'b0000, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_d};
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_1_b = {1'b0, i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift0_q};
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_1_o = $unsigned(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_1_a) + $unsigned(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_1_b);
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_1_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_1_o[21:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_5(ADD,307)@2 + 1
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_5_a = $unsigned({9'b000000000, i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_1_q});
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_5_b = $unsigned({{2{i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift4_q[28]}}, i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift4_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_5_o <= 31'b0;
        end
        else if (SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_backEN == 1'b1)
        begin
            i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_5_o <= $unsigned($signed(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_5_a) + $signed(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_5_b));
        end
    end
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_5_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_5_o[29:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift6(BITSHIFT,308)@3
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift6_qint = { i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_add_5_q, 2'b00 };
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift6_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift6_qint[31:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_align_2(BITSHIFT,238)@3
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_align_2_qint = { i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im6_shift6_q[29:0], 18'b000000000000000000 };
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_align_2_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_align_2_qint[47:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_join_4(BITJOIN,240)@3
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_join_4_q = {i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_align_3_q, i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_align_2_q};

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift2(BITSHIFT,297)@2
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift2_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_c, 5'b00000 };
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift2_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift2_qint[22:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_sub_3(SUB,298)@2
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_sub_3_a = {1'b0, i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift2_q};
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_sub_3_b = {6'b000000, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_c};
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_sub_3_o = $unsigned(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_sub_3_a) - $unsigned(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_sub_3_b);
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_sub_3_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_sub_3_o[23:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift4(BITSHIFT,299)@2
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift4_qint = { i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_sub_3_q, 5'b00000 };
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift4_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift4_qint[28:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift0(BITSHIFT,295)@2
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift0_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_c, 3'b000 };
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift0_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift0_qint[20:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_1(ADD,296)@2
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_1_a = {4'b0000, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_c};
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_1_b = {1'b0, i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift0_q};
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_1_o = $unsigned(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_1_a) + $unsigned(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_1_b);
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_1_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_1_o[21:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_5(ADD,300)@2 + 1
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_5_a = $unsigned({9'b000000000, i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_1_q});
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_5_b = $unsigned({{2{i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift4_q[28]}}, i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift4_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_5_o <= 31'b0;
        end
        else if (SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_backEN == 1'b1)
        begin
            i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_5_o <= $unsigned($signed(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_5_a) + $signed(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_5_b));
        end
    end
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_5_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_5_o[29:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift6(BITSHIFT,301)@3
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift6_qint = { i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_add_5_q, 2'b00 };
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift6_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift6_qint[31:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_align_0(BITSHIFT,236)@3
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_align_0_qint = { i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im3_shift6_q[29:0], 6'b000000 };
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_align_0_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_align_0_qint[35:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift2(BITSHIFT,311)@2
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift2_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_e, 5'b00000 };
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift2_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift2_qint[22:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_sub_3(SUB,312)@2
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_sub_3_a = {1'b0, i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift2_q};
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_sub_3_b = {6'b000000, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_e};
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_sub_3_o = $unsigned(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_sub_3_a) - $unsigned(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_sub_3_b);
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_sub_3_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_sub_3_o[23:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift4(BITSHIFT,313)@2
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift4_qint = { i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_sub_3_q, 5'b00000 };
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift4_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift4_qint[28:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift0(BITSHIFT,309)@2
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift0_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_e, 3'b000 };
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift0_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift0_qint[20:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_1(ADD,310)@2
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_1_a = {4'b0000, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_e};
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_1_b = {1'b0, i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift0_q};
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_1_o = $unsigned(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_1_a) + $unsigned(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_1_b);
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_1_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_1_o[21:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_5(ADD,314)@2 + 1
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_5_a = $unsigned({9'b000000000, i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_1_q});
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_5_b = $unsigned({{2{i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift4_q[28]}}, i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift4_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_5_o <= 31'b0;
        end
        else if (SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_backEN == 1'b1)
        begin
            i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_5_o <= $unsigned($signed(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_5_a) + $signed(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_5_b));
        end
    end
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_5_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_5_o[29:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift6(BITSHIFT,315)@3
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift6_qint = { i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_add_5_q, 2'b00 };
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift6_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift6_qint[31:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_join_1(BITJOIN,237)@3
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_join_1_q = {i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_align_0_q, i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_im9_shift6_q[29:0]};

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_result_add_0_0(ADD,241)@3
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_join_1_q};
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_result_add_0_0_b = {1'b0, i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_join_4_q};
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_result_add_0_0_o = $unsigned(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_result_add_0_0_a) + $unsigned(i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_result_add_0_0_b);
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_result_add_0_0_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_result_add_0_0_o[76:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_extender_x(BITJOIN,170)@3
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_extender_x_q = {i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_multconst_x_q, i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_x_sums_result_add_0_0_q[75:0]};

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x(BITSELECT,172)@3
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b = i_c_sroa_20_0_sroa_idx245_infect_sweep0_mult_extender_x_q[63:0];

    // redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0(REG,340)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_q <= $unsigned(i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b);
        end
    end

    // bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8(BITJOIN,385)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_q = i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8(BITSELECT,386)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_vt_select_63(BITSELECT,53)@4
    assign i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_vt_join(BITJOIN,52)@4
    assign i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_vt_join_q = {i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_vt_const_9_q};

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_add_x(ADD,161)@4
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_vt_join_q};
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_add_x_b = {1'b0, redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_q};
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_add_x_o = $unsigned(i_c_sroa_20_0_sroa_idx245_infect_sweep0_add_x_a) + $unsigned(i_c_sroa_20_0_sroa_idx245_infect_sweep0_add_x_b);
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_add_x_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_add_x_o[64:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_dupName_0_trunc_sel_x(BITSELECT,173)@4
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_dupName_0_trunc_sel_x_b = i_c_sroa_20_0_sroa_idx245_infect_sweep0_add_x_q[63:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_dupName_0_add_x(ADD,167)@4
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_dupName_0_add_x_a = {1'b0, i_c_sroa_20_0_sroa_idx245_infect_sweep0_dupName_0_trunc_sel_x_b};
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_dupName_0_add_x_b = {1'b0, i_c_sroa_20_0_sroa_idx245_infect_sweep0_c_i64_42_x_q};
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_dupName_0_add_x_o = $unsigned(i_c_sroa_20_0_sroa_idx245_infect_sweep0_dupName_0_add_x_a) + $unsigned(i_c_sroa_20_0_sroa_idx245_infect_sweep0_dupName_0_add_x_b);
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_dupName_0_add_x_q = i_c_sroa_20_0_sroa_idx245_infect_sweep0_dupName_0_add_x_o[64:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep0_dupName_1_trunc_sel_x(BITSELECT,174)@4
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep0_dupName_1_trunc_sel_x_b = i_c_sroa_20_0_sroa_idx245_infect_sweep0_dupName_0_add_x_q[63:0];

    // i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63(BITSELECT,16)@4
    assign i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b = i_c_sroa_20_0_sroa_idx245_infect_sweep0_dupName_1_trunc_sel_x_b[63:2];

    // redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0(REG,357)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_q <= $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_backEN == 1'b1)
        begin
            redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_q <= $unsigned(i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b);
        end
    end

    // SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1(STALLENABLE,617)
    // Valid signal propagation
    assign SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_V0 = SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_R_v_0;
    // Stall signal propagation
    assign SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_s_tv_0 = SE_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_join_backStall & SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_R_v_0;
    // Backward Enable generation
    assign SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_backEN = ~ (SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_v_s_0 = SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_backEN & SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_V;
    // Backward Stall generation
    assign SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_backStall = ~ (SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_backEN == 1'b0)
            begin
                SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_R_v_0 <= SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_R_v_0 & SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_s_tv_0;
            end
            else
            begin
                SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_R_v_0 <= SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_v_s_0;
            end

        end
    end

    // SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1(STALLREG,706)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_r_valid <= 1'b0;
            SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_r_data0 <= 62'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_r_valid <= SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_backStall & (SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_r_valid | SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_i_valid);

            if (SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_r_data0 <= $unsigned(redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_i_valid = SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_V0;
    // Stall signal propagation
    assign SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_backStall = SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_r_valid | ~ (SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_i_valid);

    // Valid
    assign SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_V = SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_r_valid == 1'b1 ? SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_r_valid : SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_i_valid;

    assign SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_D0 = SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_r_valid == 1'b1 ? SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_r_data0 : redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_q;

    // SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0(STALLENABLE,616)
    // Valid signal propagation
    assign SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_V0 = SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_s_tv_0 = SR_SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_1_backStall & SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_backEN = ~ (SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_v_s_0 = SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_backEN & SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_V0;
    // Backward Stall generation
    assign SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_backStall = ~ (SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_backEN == 1'b0)
            begin
                SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_R_v_0 <= SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_R_v_0 & SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_s_tv_0;
            end
            else
            begin
                SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_R_v_0 <= SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8(BLACKBOX,50)@4
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_sync_buffer_p100000okup_sync_buffer17_0 thei_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8 (
        .in_buffer_in(in_CellLookup),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_backStall),
        .in_valid_in(SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_4_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8(STALLENABLE,455)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_V0 = SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_backStall = SE_redist8_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_select_63_b_2_0_backStall | ~ (SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_and0 = i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_wireValid = SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_V0 & SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_and0;

    // SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5(STALLENABLE,533)
    // Valid signal propagation
    assign SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_V0 = SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_R_v_0;
    // Stall signal propagation
    assign SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_s_tv_0 = SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_backStall & SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_R_v_0;
    // Backward Enable generation
    assign SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_backEN = ~ (SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_v_s_0 = SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_backEN & SE_i_index_0188_replace_phi_infect_sweep1_V1;
    // Backward Stall generation
    assign SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_backStall = ~ (SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_backEN == 1'b0)
            begin
                SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_R_v_0 <= SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_R_v_0 & SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_s_tv_0;
            end
            else
            begin
                SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_R_v_0 <= SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_v_s_0;
            end

        end
    end

    // SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0(STALLENABLE,599)
    // Valid signal propagation
    assign SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_V0 = SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_R_v_0;
    assign SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_V1 = SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_backStall & SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_R_v_0;
    assign SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_s_tv_1 = SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_backStall & SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_or0 = SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_s_tv_0;
    assign SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_backEN = ~ (SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_s_tv_1 | SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_v_s_0 = SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_backEN & SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_V0;
    // Backward Stall generation
    assign SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_backStall = ~ (SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_R_v_0 & SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_R_v_1 <= SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_R_v_1 & SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_R_v_1 <= SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3(BLACKBOX,54)@4
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_sync_buffer_p100000okup_sync_buffer19_0 thei_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3 (
        .in_buffer_in(in_CellLookup),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_backStall),
        .in_valid_in(SE_out_bubble_out_infect_sweep_B2_merge_reg_aunroll_x_3_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3(STALLENABLE,459)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_V0 = SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_backStall = i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_o_stall | ~ (SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_and0 = i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_wireValid = SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_V1 & SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_and0;

    // SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5(STALLENABLE,447)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_fromReg0 <= SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_fromReg1 <= SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_consumed0 = (~ (SE_i_c_sroa_20_0_sroa_idx245_infect_sweep9_vt_join_backStall) & SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_wireValid) | SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_fromReg0;
    assign SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_consumed1 = (~ (SE_redist4_i_unnamed_infect_sweep10_q_3_0_backStall) & SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_wireValid) | SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_StallValid = SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_backStall & SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_wireValid;
    assign SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_toReg0 = SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_StallValid & SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_consumed0;
    assign SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_toReg1 = SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_StallValid & SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_or0 = SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_consumed0;
    assign SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_wireStall = ~ (SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_consumed1 & SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_or0);
    assign SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_backStall = SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_V0 = SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_wireValid & ~ (SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_fromReg0);
    assign SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_V1 = SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_wireValid & ~ (SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_wireValid = i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift2(BITSHIFT,262)@2
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift2_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_b, 5'b00000 };
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift2_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift2_qint[14:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_sub_3(SUB,263)@2
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_sub_3_a = {1'b0, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift2_q};
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_sub_3_b = {6'b000000, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_b};
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_sub_3_o = $unsigned(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_sub_3_a) - $unsigned(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_sub_3_b);
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_sub_3_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_sub_3_o[15:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift4(BITSHIFT,264)@2
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift4_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_sub_3_q, 5'b00000 };
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift4_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift4_qint[20:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift0(BITSHIFT,260)@2
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift0_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_b, 3'b000 };
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift0_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift0_qint[12:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_1(ADD,261)@2
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_1_a = {4'b0000, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_b};
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_1_b = {1'b0, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift0_q};
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_1_o = $unsigned(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_1_a) + $unsigned(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_1_b);
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_1_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_1_o[13:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5(ADD,265)@2 + 1
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_a = $unsigned({9'b000000000, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_1_q});
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_b = $unsigned({{2{i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift4_q[20]}}, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift4_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_o <= 23'b0;
        end
        else if (SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_backEN == 1'b1)
        begin
            i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_o <= $unsigned($signed(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_a) + $signed(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_b));
        end
    end
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_o[21:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift6(BITSHIFT,266)@3
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift6_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_q, 2'b00 };
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift6_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift6_qint[23:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_align_3(BITSHIFT,221)@3
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_align_3_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_shift6_q[21:0], 6'b000000 };
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_align_3_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_align_3_qint[27:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift2(BITSHIFT,276)@2
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift2_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_d, 5'b00000 };
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift2_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift2_qint[22:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_sub_3(SUB,277)@2
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_sub_3_a = {1'b0, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift2_q};
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_sub_3_b = {6'b000000, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_d};
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_sub_3_o = $unsigned(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_sub_3_a) - $unsigned(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_sub_3_b);
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_sub_3_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_sub_3_o[23:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift4(BITSHIFT,278)@2
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift4_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_sub_3_q, 5'b00000 };
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift4_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift4_qint[28:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift0(BITSHIFT,274)@2
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift0_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_d, 3'b000 };
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift0_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift0_qint[20:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_1(ADD,275)@2
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_1_a = {4'b0000, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_d};
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_1_b = {1'b0, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift0_q};
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_1_o = $unsigned(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_1_a) + $unsigned(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_1_b);
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_1_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_1_o[21:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_5(ADD,279)@2 + 1
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_5_a = $unsigned({9'b000000000, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_1_q});
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_5_b = $unsigned({{2{i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift4_q[28]}}, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift4_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_5_o <= 31'b0;
        end
        else if (SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_backEN == 1'b1)
        begin
            i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_5_o <= $unsigned($signed(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_5_a) + $signed(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_5_b));
        end
    end
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_5_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_5_o[29:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift6(BITSHIFT,280)@3
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift6_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_add_5_q, 2'b00 };
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift6_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift6_qint[31:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_align_2(BITSHIFT,220)@3
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_align_2_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im6_shift6_q[29:0], 18'b000000000000000000 };
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_align_2_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_align_2_qint[47:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_join_4(BITJOIN,222)@3
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_join_4_q = {i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_align_3_q, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_align_2_q};

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift2(BITSHIFT,269)@2
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift2_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_c, 5'b00000 };
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift2_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift2_qint[22:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_sub_3(SUB,270)@2
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_sub_3_a = {1'b0, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift2_q};
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_sub_3_b = {6'b000000, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_c};
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_sub_3_o = $unsigned(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_sub_3_a) - $unsigned(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_sub_3_b);
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_sub_3_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_sub_3_o[23:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift4(BITSHIFT,271)@2
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift4_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_sub_3_q, 5'b00000 };
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift4_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift4_qint[28:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift0(BITSHIFT,267)@2
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift0_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_c, 3'b000 };
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift0_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift0_qint[20:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_1(ADD,268)@2
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_1_a = {4'b0000, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_c};
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_1_b = {1'b0, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift0_q};
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_1_o = $unsigned(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_1_a) + $unsigned(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_1_b);
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_1_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_1_o[21:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_5(ADD,272)@2 + 1
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_5_a = $unsigned({9'b000000000, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_1_q});
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_5_b = $unsigned({{2{i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift4_q[28]}}, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift4_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_5_o <= 31'b0;
        end
        else if (SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_backEN == 1'b1)
        begin
            i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_5_o <= $unsigned($signed(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_5_a) + $signed(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_5_b));
        end
    end
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_5_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_5_o[29:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift6(BITSHIFT,273)@3
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift6_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_add_5_q, 2'b00 };
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift6_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift6_qint[31:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_align_0(BITSHIFT,218)@3
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_align_0_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im3_shift6_q[29:0], 6'b000000 };
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_align_0_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_align_0_qint[35:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift2(BITSHIFT,283)@2
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift2_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_e, 5'b00000 };
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift2_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift2_qint[22:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_sub_3(SUB,284)@2
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_sub_3_a = {1'b0, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift2_q};
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_sub_3_b = {6'b000000, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_e};
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_sub_3_o = $unsigned(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_sub_3_a) - $unsigned(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_sub_3_b);
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_sub_3_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_sub_3_o[23:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift4(BITSHIFT,285)@2
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift4_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_sub_3_q, 5'b00000 };
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift4_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift4_qint[28:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift0(BITSHIFT,281)@2
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift0_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_e, 3'b000 };
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift0_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift0_qint[20:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_1(ADD,282)@2
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_1_a = {4'b0000, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_bs1_merged_bit_select_e};
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_1_b = {1'b0, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift0_q};
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_1_o = $unsigned(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_1_a) + $unsigned(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_1_b);
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_1_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_1_o[21:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_5(ADD,286)@2 + 1
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_5_a = $unsigned({9'b000000000, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_1_q});
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_5_b = $unsigned({{2{i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift4_q[28]}}, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift4_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_5_o <= 31'b0;
        end
        else if (SE_i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im0_add_5_backEN == 1'b1)
        begin
            i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_5_o <= $unsigned($signed(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_5_a) + $signed(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_5_b));
        end
    end
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_5_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_5_o[29:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift6(BITSHIFT,287)@3
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift6_qint = { i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_add_5_q, 2'b00 };
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift6_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift6_qint[31:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_join_1(BITJOIN,219)@3
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_join_1_q = {i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_align_0_q, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_im9_shift6_q[29:0]};

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_result_add_0_0(ADD,223)@3
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_join_1_q};
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_result_add_0_0_b = {1'b0, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_join_4_q};
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_result_add_0_0_o = $unsigned(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_result_add_0_0_a) + $unsigned(i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_result_add_0_0_b);
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_result_add_0_0_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_result_add_0_0_o[76:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_extender_x(BITJOIN,157)@3
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_extender_x_q = {i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_multconst_x_q, i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_x_sums_result_add_0_0_q[75:0]};

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_trunc_sel_x(BITSELECT,159)@3
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_trunc_sel_x_b = i_c_sroa_0_0_sroa_idx227_infect_sweep0_mult_extender_x_q[63:0];

    // redist2_i_c_sroa_0_0_sroa_idx227_infect_sweep0_trunc_sel_x_b_1_0(REG,341)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_c_sroa_0_0_sroa_idx227_infect_sweep0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist1_i_c_sroa_20_0_sroa_idx245_infect_sweep0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist2_i_c_sroa_0_0_sroa_idx227_infect_sweep0_trunc_sel_x_b_1_0_q <= $unsigned(i_c_sroa_0_0_sroa_idx227_infect_sweep0_trunc_sel_x_b);
        end
    end

    // bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3(BITJOIN,388)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_q = i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3(BITSELECT,389)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_vt_select_63(BITSELECT,57)@4
    assign i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_vt_join(BITJOIN,56)@4
    assign i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_vt_join_q = {i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer17_infect_sweep8_vt_const_9_q};

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_add_x(ADD,151)@4
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_vt_join_q};
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_add_x_b = {1'b0, redist2_i_c_sroa_0_0_sroa_idx227_infect_sweep0_trunc_sel_x_b_1_0_q};
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_add_x_o = $unsigned(i_c_sroa_0_0_sroa_idx227_infect_sweep0_add_x_a) + $unsigned(i_c_sroa_0_0_sroa_idx227_infect_sweep0_add_x_b);
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_add_x_q = i_c_sroa_0_0_sroa_idx227_infect_sweep0_add_x_o[64:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep0_dupName_0_trunc_sel_x(BITSELECT,160)@4
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep0_dupName_0_trunc_sel_x_b = i_c_sroa_0_0_sroa_idx227_infect_sweep0_add_x_q[63:0];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep4_vt_select_63(BITSELECT,13)@4
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep4_vt_select_63_b = i_c_sroa_0_0_sroa_idx227_infect_sweep0_dupName_0_trunc_sel_x_b[63:2];

    // i_c_sroa_0_0_sroa_idx227_infect_sweep4_vt_join(BITJOIN,12)@4
    assign i_c_sroa_0_0_sroa_idx227_infect_sweep4_vt_join_q = {i_c_sroa_0_0_sroa_idx227_infect_sweep4_vt_select_63_b, i_c_sroa_0_0_sroa_idx227_infect_sweep4_vt_const_1_q};

    // i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5(BLACKBOX,46)@4
    // in in_i_stall@20000000
    // out out_c_sroa_0_0_copyload228_infect_sweep_avm_address@20000000
    // out out_c_sroa_0_0_copyload228_infect_sweep_avm_burstcount@20000000
    // out out_c_sroa_0_0_copyload228_infect_sweep_avm_byteenable@20000000
    // out out_c_sroa_0_0_copyload228_infect_sweep_avm_enable@20000000
    // out out_c_sroa_0_0_copyload228_infect_sweep_avm_read@20000000
    // out out_c_sroa_0_0_copyload228_infect_sweep_avm_write@20000000
    // out out_c_sroa_0_0_copyload228_infect_sweep_avm_writedata@20000000
    // out out_o_readdata@6
    // out out_o_stall@20000000
    // out out_o_valid@6
    infect_sweep_i_llvm_fpga_mem_c_sroa_0_0_copyload228_0 thei_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5 (
        .in_c_sroa_0_0_copyload228_infect_sweep_avm_readdata(in_c_sroa_0_0_copyload228_infect_sweep_avm_readdata),
        .in_c_sroa_0_0_copyload228_infect_sweep_avm_readdatavalid(in_c_sroa_0_0_copyload228_infect_sweep_avm_readdatavalid),
        .in_c_sroa_0_0_copyload228_infect_sweep_avm_waitrequest(in_c_sroa_0_0_copyload228_infect_sweep_avm_waitrequest),
        .in_c_sroa_0_0_copyload228_infect_sweep_avm_writeack(in_c_sroa_0_0_copyload228_infect_sweep_avm_writeack),
        .in_flush(in_flush),
        .in_i_address(i_c_sroa_0_0_sroa_idx227_infect_sweep4_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer19_infect_sweep3_V0),
        .out_c_sroa_0_0_copyload228_infect_sweep_avm_address(i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_c_sroa_0_0_copyload228_infect_sweep_avm_address),
        .out_c_sroa_0_0_copyload228_infect_sweep_avm_burstcount(i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_c_sroa_0_0_copyload228_infect_sweep_avm_burstcount),
        .out_c_sroa_0_0_copyload228_infect_sweep_avm_byteenable(i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_c_sroa_0_0_copyload228_infect_sweep_avm_byteenable),
        .out_c_sroa_0_0_copyload228_infect_sweep_avm_enable(i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_c_sroa_0_0_copyload228_infect_sweep_avm_enable),
        .out_c_sroa_0_0_copyload228_infect_sweep_avm_read(i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_c_sroa_0_0_copyload228_infect_sweep_avm_read),
        .out_c_sroa_0_0_copyload228_infect_sweep_avm_write(i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_c_sroa_0_0_copyload228_infect_sweep_avm_write),
        .out_c_sroa_0_0_copyload228_infect_sweep_avm_writedata(i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_c_sroa_0_0_copyload228_infect_sweep_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,9)
    assign out_c_sroa_0_0_copyload228_infect_sweep_avm_address = i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_c_sroa_0_0_copyload228_infect_sweep_avm_address;
    assign out_c_sroa_0_0_copyload228_infect_sweep_avm_enable = i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_c_sroa_0_0_copyload228_infect_sweep_avm_enable;
    assign out_c_sroa_0_0_copyload228_infect_sweep_avm_read = i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_c_sroa_0_0_copyload228_infect_sweep_avm_read;
    assign out_c_sroa_0_0_copyload228_infect_sweep_avm_write = i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_c_sroa_0_0_copyload228_infect_sweep_avm_write;
    assign out_c_sroa_0_0_copyload228_infect_sweep_avm_writedata = i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_c_sroa_0_0_copyload228_infect_sweep_avm_writedata;
    assign out_c_sroa_0_0_copyload228_infect_sweep_avm_byteenable = i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_c_sroa_0_0_copyload228_infect_sweep_avm_byteenable;
    assign out_c_sroa_0_0_copyload228_infect_sweep_avm_burstcount = i_llvm_fpga_mem_c_sroa_0_0_copyload228_infect_sweep5_out_c_sroa_0_0_copyload228_infect_sweep_avm_burstcount;

    // regfree_osync(GPOUT,125)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep1_infect_sweep35_out_intel_reserved_ffwd_1_0;

    // sync_out(GPOUT,129)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,135)
    assign out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_address = i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_address;
    assign out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_enable = i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_enable;
    assign out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_read = i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_read;
    assign out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_write = i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_write;
    assign out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_writedata = i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_writedata;
    assign out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_byteenable = i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_byteenable;
    assign out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_burstcount = i_llvm_fpga_mem_c_sroa_20_0_copyload246_lm_infect_sweep11_out_c_sroa_20_0_copyload246_lm_infect_sweep_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,137)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep2_infect_sweep36_out_intel_reserved_ffwd_2_0;

    // dupName_0_sync_out_x(GPOUT,138)@15
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,141)
    assign out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_address = i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_address;
    assign out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_enable = i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_enable;
    assign out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_read = i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_read;
    assign out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_write = i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_write;
    assign out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_writedata = i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_writedata;
    assign out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_byteenable = i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_byteenable;
    assign out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_burstcount = i_llvm_fpga_mem_si_sroa_3_0_copyload_pre_lm_infect_sweep15_out_si_sroa_3_0_copyload_pre_lm_infect_sweep_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,142)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep3_infect_sweep37_out_intel_reserved_ffwd_3_0;

    // dupName_2_ext_sig_sync_out_x(GPOUT,144)
    assign out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_address = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_address;
    assign out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_enable = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_enable;
    assign out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_read = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_read;
    assign out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_write = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_write;
    assign out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_writedata = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_writedata;
    assign out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_byteenable = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_byteenable;
    assign out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_burstcount = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep20_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_0_infect_sweep_avm_burstcount;

    // dupName_2_regfree_osync_x(GPOUT,145)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep4_infect_sweep38_out_intel_reserved_ffwd_4_0;

    // dupName_3_ext_sig_sync_out_x(GPOUT,147)
    assign out_lm58_infect_sweep_avm_address = i_llvm_fpga_mem_lm58_infect_sweep28_out_lm58_infect_sweep_avm_address;
    assign out_lm58_infect_sweep_avm_enable = i_llvm_fpga_mem_lm58_infect_sweep28_out_lm58_infect_sweep_avm_enable;
    assign out_lm58_infect_sweep_avm_read = i_llvm_fpga_mem_lm58_infect_sweep28_out_lm58_infect_sweep_avm_read;
    assign out_lm58_infect_sweep_avm_write = i_llvm_fpga_mem_lm58_infect_sweep28_out_lm58_infect_sweep_avm_write;
    assign out_lm58_infect_sweep_avm_writedata = i_llvm_fpga_mem_lm58_infect_sweep28_out_lm58_infect_sweep_avm_writedata;
    assign out_lm58_infect_sweep_avm_byteenable = i_llvm_fpga_mem_lm58_infect_sweep28_out_lm58_infect_sweep_avm_byteenable;
    assign out_lm58_infect_sweep_avm_burstcount = i_llvm_fpga_mem_lm58_infect_sweep28_out_lm58_infect_sweep_avm_burstcount;

    // dupName_3_regfree_osync_x(GPOUT,148)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep5_infect_sweep39_out_intel_reserved_ffwd_5_0;

    // dupName_4_regfree_osync_x(GPOUT,149)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep6_infect_sweep40_out_intel_reserved_ffwd_6_0;

    // dupName_5_regfree_osync_x(GPOUT,150)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep7_infect_sweep41_out_intel_reserved_ffwd_7_0;

endmodule
