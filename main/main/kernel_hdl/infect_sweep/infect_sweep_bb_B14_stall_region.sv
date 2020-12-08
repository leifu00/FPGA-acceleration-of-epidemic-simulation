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

// SystemVerilog created from infect_sweep_bb_B14_stall_region
// SystemVerilog created on Tue Nov 24 22:05:06 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module infect_sweep_bb_B14_stall_region (
    input wire [511:0] in_unmaskedload185_infect_sweep_avm_readdata,
    input wire [0:0] in_unmaskedload185_infect_sweep_avm_writeack,
    input wire [0:0] in_unmaskedload185_infect_sweep_avm_waitrequest,
    input wire [0:0] in_unmaskedload185_infect_sweep_avm_readdatavalid,
    output wire [30:0] out_unmaskedload185_infect_sweep_avm_address,
    output wire [0:0] out_unmaskedload185_infect_sweep_avm_enable,
    output wire [0:0] out_unmaskedload185_infect_sweep_avm_read,
    output wire [0:0] out_unmaskedload185_infect_sweep_avm_write,
    output wire [511:0] out_unmaskedload185_infect_sweep_avm_writedata,
    output wire [63:0] out_unmaskedload185_infect_sweep_avm_byteenable,
    output wire [4:0] out_unmaskedload185_infect_sweep_avm_burstcount,
    input wire [63:0] in_CellLookup,
    input wire [63:0] in_Hosts,
    input wire [63:0] in_Households,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_29_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire [511:0] in_c_sroa_20_0_copyload240_lm_infect_sweep_avm_readdata,
    input wire [0:0] in_c_sroa_20_0_copyload240_lm_infect_sweep_avm_writeack,
    input wire [0:0] in_c_sroa_20_0_copyload240_lm_infect_sweep_avm_waitrequest,
    input wire [0:0] in_c_sroa_20_0_copyload240_lm_infect_sweep_avm_readdatavalid,
    output wire [30:0] out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_address,
    output wire [0:0] out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_enable,
    output wire [0:0] out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_read,
    output wire [0:0] out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_write,
    output wire [511:0] out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_writedata,
    output wire [63:0] out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_byteenable,
    output wire [4:0] out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_30_0,
    output wire [0:0] out_valid_out,
    input wire [511:0] in_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_readdata,
    input wire [0:0] in_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_writeack,
    input wire [0:0] in_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_waitrequest,
    input wire [0:0] in_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_readdatavalid,
    output wire [30:0] out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_address,
    output wire [0:0] out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_enable,
    output wire [0:0] out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_read,
    output wire [0:0] out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_write,
    output wire [511:0] out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_writedata,
    output wire [63:0] out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_byteenable,
    output wire [4:0] out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_31_0,
    input wire [511:0] in_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_readdata,
    input wire [0:0] in_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_writeack,
    input wire [0:0] in_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_readdatavalid,
    output wire [30:0] out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_address,
    output wire [0:0] out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_enable,
    output wire [0:0] out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_read,
    output wire [0:0] out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_write,
    output wire [511:0] out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_writedata,
    output wire [63:0] out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_byteenable,
    output wire [4:0] out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_burstcount,
    output wire [0:0] out_intel_reserved_ffwd_32_0,
    input wire [511:0] in_lm132_infect_sweep_avm_readdata,
    input wire [0:0] in_lm132_infect_sweep_avm_writeack,
    input wire [0:0] in_lm132_infect_sweep_avm_waitrequest,
    input wire [0:0] in_lm132_infect_sweep_avm_readdatavalid,
    output wire [30:0] out_lm132_infect_sweep_avm_address,
    output wire [0:0] out_lm132_infect_sweep_avm_enable,
    output wire [0:0] out_lm132_infect_sweep_avm_read,
    output wire [0:0] out_lm132_infect_sweep_avm_write,
    output wire [511:0] out_lm132_infect_sweep_avm_writedata,
    output wire [63:0] out_lm132_infect_sweep_avm_byteenable,
    output wire [4:0] out_lm132_infect_sweep_avm_burstcount,
    output wire [0:0] out_intel_reserved_ffwd_33_0,
    output wire [0:0] out_intel_reserved_ffwd_34_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_343_q;
    wire [32:0] i_add_3_infect_sweep25_a;
    wire [32:0] i_add_3_infect_sweep25_b;
    logic [32:0] i_add_3_infect_sweep25_o;
    wire [32:0] i_add_3_infect_sweep25_q;
    wire [1:0] i_c_sroa_0_0_sroa_idx221_infect_sweep4_vt_const_1_q;
    wire [63:0] i_c_sroa_0_0_sroa_idx221_infect_sweep4_vt_join_q;
    wire [61:0] i_c_sroa_0_0_sroa_idx221_infect_sweep4_vt_select_63_b;
    wire [63:0] i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_join_q;
    wire [61:0] i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b;
    wire [0:0] i_cmp152183_3_infect_sweep26_q;
    wire [0:0] i_cmp152183_3_not_infect_sweep33_q;
    wire [33:0] i_cmp157180_3_infect_sweep31_a;
    wire [33:0] i_cmp157180_3_infect_sweep31_b;
    logic [33:0] i_cmp157180_3_infect_sweep31_o;
    wire [0:0] i_cmp157180_3_infect_sweep31_c;
    wire [33:0] i_cmp4186_3_infect_sweep8_a;
    wire [33:0] i_cmp4186_3_infect_sweep8_b;
    logic [33:0] i_cmp4186_3_infect_sweep8_o;
    wire [0:0] i_cmp4186_3_infect_sweep8_c;
    wire [15:0] i_conv_3_infect_sweep24_vt_const_31_q;
    wire [31:0] i_conv_3_infect_sweep24_vt_join_q;
    wire [15:0] i_conv_3_infect_sweep24_vt_select_15_b;
    wire [2:0] i_firstperson_3_phi_trans_insert_infect_sweep20_vt_const_2_q;
    wire [63:0] i_firstperson_3_phi_trans_insert_infect_sweep20_vt_join_q;
    wire [60:0] i_firstperson_3_phi_trans_insert_infect_sweep20_vt_select_63_b;
    wire [31:0] i_idxprom_3_infect_sweep2_vt_const_63_q;
    wire [63:0] i_idxprom_3_infect_sweep2_vt_join_q;
    wire [31:0] i_idxprom_3_infect_sweep2_vt_select_31_b;
    wire [32:0] i_inc360_2_infect_sweep1_a;
    wire [32:0] i_inc360_2_infect_sweep1_b;
    logic [32:0] i_inc360_2_infect_sweep1_o;
    wire [32:0] i_inc360_2_infect_sweep1_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_placetypenum43_infect_sweep29_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_placetypenum43_infect_sweep29_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_placetypenum43_infect_sweep29_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep54_infect_sweep40_out_intel_reserved_ffwd_32_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep54_infect_sweep40_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep54_infect_sweep40_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep55_infect_sweep41_out_intel_reserved_ffwd_33_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep55_infect_sweep41_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep55_infect_sweep41_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep56_infect_sweep42_out_intel_reserved_ffwd_34_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep56_infect_sweep42_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep56_infect_sweep42_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_out_intel_reserved_ffwd_29_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_out_intel_reserved_ffwd_30_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep53_infect_sweep39_out_intel_reserved_ffwd_31_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep53_infect_sweep39_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep53_infect_sweep39_out_valid_out;
    wire [30:0] i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_address;
    wire [4:0] i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_enable;
    wire [0:0] i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_read;
    wire [0:0] i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_write;
    wire [511:0] i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm132_infect_sweep30_out_lm132_infect_sweep_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm132_infect_sweep30_out_lm132_infect_sweep_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm132_infect_sweep30_out_lm132_infect_sweep_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm132_infect_sweep30_out_lm132_infect_sweep_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm132_infect_sweep30_out_lm132_infect_sweep_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm132_infect_sweep30_out_lm132_infect_sweep_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm132_infect_sweep30_out_lm132_infect_sweep_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm132_infect_sweep30_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm132_infect_sweep30_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm132_infect_sweep30_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_address;
    wire [4:0] i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_enable;
    wire [0:0] i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_read;
    wire [0:0] i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_write;
    wire [511:0] i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_writedata;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_out_valid_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_vt_select_63_b;
    wire [63:0] i_memcoalesce_bitcast_infect_sweep_fpgaunique_3_infect_sweep21_vt_join_q;
    wire [60:0] i_memcoalesce_bitcast_infect_sweep_fpgaunique_3_infect_sweep21_vt_select_63_b;
    wire [63:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep16_vt_join_q;
    wire [60:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep16_vt_select_63_b;
    wire [0:0] i_unnamed_infect_sweep12_q;
    wire [0:0] i_unnamed_infect_sweep28_q;
    wire [0:0] i_unnamed_infect_sweep34_qi;
    reg [0:0] i_unnamed_infect_sweep34_q;
    wire [0:0] i_unnamed_infect_sweep35_q;
    wire [0:0] i_unnamed_infect_sweep36_q;
    wire [63:0] i_unnamed_infect_sweep5_vt_join_q;
    wire [61:0] i_unnamed_infect_sweep5_vt_select_63_b;
    wire [31:0] bgTrunc_i_add_3_infect_sweep25_sel_x_b;
    wire [31:0] bgTrunc_i_inc360_2_infect_sweep1_sel_x_b;
    wire [64:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_add_x_a;
    wire [64:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_add_x_b;
    logic [64:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_add_x_o;
    wire [64:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_add_x_q;
    wire [127:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_extender_x_q;
    wire [51:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_multconst_x_q;
    wire [63:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_trunc_sel_x_b;
    wire [63:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_add_x_a;
    wire [64:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_add_x_b;
    logic [64:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_add_x_o;
    wire [64:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_add_x_q;
    wire [63:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_c_i64_42_x_q;
    wire [64:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_dupName_0_add_x_a;
    wire [64:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_dupName_0_add_x_b;
    logic [64:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_dupName_0_add_x_o;
    wire [64:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_dupName_0_add_x_q;
    wire [127:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_extender_x_q;
    wire [63:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b;
    wire [63:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_dupName_1_trunc_sel_x_b;
    wire [31:0] i_conv_3_infect_sweep24_sel_x_b;
    wire [64:0] i_firstperson_3_phi_trans_insert_infect_sweep0_add_x_a;
    wire [64:0] i_firstperson_3_phi_trans_insert_infect_sweep0_add_x_b;
    logic [64:0] i_firstperson_3_phi_trans_insert_infect_sweep0_add_x_o;
    wire [64:0] i_firstperson_3_phi_trans_insert_infect_sweep0_add_x_q;
    wire [60:0] i_firstperson_3_phi_trans_insert_infect_sweep0_narrow_x_b;
    wire [63:0] i_firstperson_3_phi_trans_insert_infect_sweep0_shift_join_x_q;
    wire [63:0] i_firstperson_3_phi_trans_insert_infect_sweep0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_idxprom11_3_phi_trans_insert_infect_sweep18_sel_x_b;
    wire [63:0] i_idxprom9_3_phi_trans_insert_infect_sweep14_sel_x_b;
    wire [63:0] i_idxprom_3_infect_sweep2_sel_x_b;
    wire [30:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_address;
    wire [4:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_read;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_write;
    wire [511:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_o_readdata_0_tpl;
    wire [15:0] i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_o_readdata_1_tpl;
    wire [0:0] i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_unmaskedload185_infect_sweep_avm_address;
    wire [4:0] i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_unmaskedload185_infect_sweep_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_unmaskedload185_infect_sweep_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_unmaskedload185_infect_sweep_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_unmaskedload185_infect_sweep_avm_read;
    wire [0:0] i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_unmaskedload185_infect_sweep_avm_write;
    wire [511:0] i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_unmaskedload185_infect_sweep_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_o_readdata_0_tpl;
    wire [64:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_add_x_a;
    wire [64:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_add_x_b;
    logic [64:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_add_x_o;
    wire [64:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_add_x_q;
    wire [63:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_c_i64_82_x_q;
    wire [64:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_dupName_0_add_x_a;
    wire [64:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_dupName_0_add_x_b;
    logic [64:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_dupName_0_add_x_o;
    wire [64:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_dupName_0_add_x_q;
    wire [127:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_extender_x_q;
    wire [56:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_multconst_x_q;
    wire [63:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b;
    wire [63:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_dupName_1_trunc_sel_x_b;
    wire [35:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_align_0_q;
    wire [35:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_align_0_qint;
    wire [65:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_join_1_q;
    wire [47:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_align_2_q;
    wire [47:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_align_2_qint;
    wire [27:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_align_3_q;
    wire [27:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_align_3_qint;
    wire [75:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_join_4_q;
    wire [76:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_result_add_0_0_a;
    wire [76:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_result_add_0_0_b;
    logic [76:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_result_add_0_0_o;
    wire [76:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_align_0_q;
    wire [35:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_align_0_qint;
    wire [65:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_join_1_q;
    wire [47:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_align_2_q;
    wire [47:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_align_2_qint;
    wire [27:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_align_3_q;
    wire [27:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_align_3_qint;
    wire [75:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_join_4_q;
    wire [76:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_result_add_0_0_a;
    wire [76:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_result_add_0_0_b;
    logic [76:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_result_add_0_0_o;
    wire [76:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_align_0_q;
    wire [35:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_align_0_qint;
    wire [60:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_join_1_q;
    wire [42:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_align_2_q;
    wire [42:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_align_2_qint;
    wire [27:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_align_3_q;
    wire [27:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_align_3_qint;
    wire [70:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_join_4_q;
    wire [71:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0_a;
    wire [71:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0_b;
    logic [71:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0_o;
    wire [71:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0_q;
    wire [12:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift0_q;
    wire [12:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift0_qint;
    wire [13:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_1_a;
    wire [13:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_1_b;
    logic [13:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_1_o;
    wire [13:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_1_q;
    wire [14:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift2_q;
    wire [14:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift2_qint;
    wire [15:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_sub_3_a;
    wire [15:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_sub_3_b;
    logic [15:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_sub_3_o;
    wire [15:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_sub_3_q;
    wire [20:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift4_q;
    wire [20:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift4_qint;
    wire [22:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_a;
    wire [22:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_b;
    logic [22:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_o;
    wire [21:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_q;
    wire [23:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift6_q;
    wire [23:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift6_qint;
    wire [20:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift0_q;
    wire [20:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift0_qint;
    wire [21:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_1_a;
    wire [21:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_1_b;
    logic [21:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_1_o;
    wire [21:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_1_q;
    wire [22:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift2_q;
    wire [22:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift2_qint;
    wire [23:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_sub_3_a;
    wire [23:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_sub_3_b;
    logic [23:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_sub_3_o;
    wire [23:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_sub_3_q;
    wire [28:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift4_q;
    wire [28:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift4_qint;
    wire [30:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_5_a;
    wire [30:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_5_b;
    logic [30:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_5_o;
    wire [29:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_5_q;
    wire [31:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift6_q;
    wire [31:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift6_qint;
    wire [20:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift0_q;
    wire [20:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift0_qint;
    wire [21:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_1_a;
    wire [21:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_1_b;
    logic [21:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_1_o;
    wire [21:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_1_q;
    wire [22:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift2_q;
    wire [22:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift2_qint;
    wire [23:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_sub_3_a;
    wire [23:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_sub_3_b;
    logic [23:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_sub_3_o;
    wire [23:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_sub_3_q;
    wire [28:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift4_q;
    wire [28:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift4_qint;
    wire [30:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_5_a;
    wire [30:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_5_b;
    logic [30:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_5_o;
    wire [29:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_5_q;
    wire [31:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift6_q;
    wire [31:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift6_qint;
    wire [20:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift0_q;
    wire [20:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift0_qint;
    wire [21:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_1_a;
    wire [21:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_1_b;
    logic [21:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_1_o;
    wire [21:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_1_q;
    wire [22:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift2_q;
    wire [22:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift2_qint;
    wire [23:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_sub_3_a;
    wire [23:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_sub_3_b;
    logic [23:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_sub_3_o;
    wire [23:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_sub_3_q;
    wire [28:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift4_q;
    wire [28:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift4_qint;
    wire [30:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_5_a;
    wire [30:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_5_b;
    logic [30:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_5_o;
    wire [29:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_5_q;
    wire [31:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift6_q;
    wire [31:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift6_qint;
    wire [12:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift0_q;
    wire [12:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift0_qint;
    wire [13:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_1_a;
    wire [13:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_1_b;
    logic [13:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_1_o;
    wire [13:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_1_q;
    wire [14:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift2_q;
    wire [14:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift2_qint;
    wire [15:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_sub_3_a;
    wire [15:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_sub_3_b;
    logic [15:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_sub_3_o;
    wire [15:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_sub_3_q;
    wire [20:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift4_q;
    wire [20:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift4_qint;
    wire [22:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_5_a;
    wire [22:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_5_b;
    logic [22:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_5_o;
    wire [21:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_5_q;
    wire [23:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift6_q;
    wire [23:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift6_qint;
    wire [20:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift0_q;
    wire [20:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift0_qint;
    wire [21:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_1_a;
    wire [21:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_1_b;
    logic [21:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_1_o;
    wire [21:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_1_q;
    wire [22:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift2_q;
    wire [22:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift2_qint;
    wire [23:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_sub_3_a;
    wire [23:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_sub_3_b;
    logic [23:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_sub_3_o;
    wire [23:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_sub_3_q;
    wire [28:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift4_q;
    wire [28:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift4_qint;
    wire [30:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_5_a;
    wire [30:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_5_b;
    logic [30:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_5_o;
    wire [29:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_5_q;
    wire [31:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift6_q;
    wire [31:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift6_qint;
    wire [20:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift0_q;
    wire [20:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift0_qint;
    wire [21:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_1_a;
    wire [21:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_1_b;
    logic [21:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_1_o;
    wire [21:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_1_q;
    wire [22:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift2_q;
    wire [22:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift2_qint;
    wire [23:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_sub_3_a;
    wire [23:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_sub_3_b;
    logic [23:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_sub_3_o;
    wire [23:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_sub_3_q;
    wire [28:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift4_q;
    wire [28:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift4_qint;
    wire [30:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_5_a;
    wire [30:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_5_b;
    logic [30:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_5_o;
    wire [29:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_5_q;
    wire [31:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift6_q;
    wire [31:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift6_qint;
    wire [20:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift0_q;
    wire [20:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift0_qint;
    wire [21:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_1_a;
    wire [21:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_1_b;
    logic [21:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_1_o;
    wire [21:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_1_q;
    wire [22:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift2_q;
    wire [22:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift2_qint;
    wire [23:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_sub_3_a;
    wire [23:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_sub_3_b;
    logic [23:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_sub_3_o;
    wire [23:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_sub_3_q;
    wire [28:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift4_q;
    wire [28:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift4_qint;
    wire [30:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_5_a;
    wire [30:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_5_b;
    logic [30:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_5_o;
    wire [29:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_5_q;
    wire [31:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift6_q;
    wire [31:0] i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift6_qint;
    wire [11:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_shift0_q;
    wire [11:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_shift0_qint;
    wire [12:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_add_1_a;
    wire [12:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_add_1_b;
    logic [12:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_add_1_o;
    wire [12:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_add_1_q;
    wire [16:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_shift2_q;
    wire [16:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_shift2_qint;
    wire [19:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_shift0_q;
    wire [19:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_shift0_qint;
    wire [20:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_add_1_a;
    wire [20:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_add_1_b;
    logic [20:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_add_1_o;
    wire [20:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_add_1_q;
    wire [24:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_shift2_q;
    wire [24:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_shift2_qint;
    wire [19:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_shift0_q;
    wire [19:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_shift0_qint;
    wire [20:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_add_1_a;
    wire [20:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_add_1_b;
    logic [20:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_add_1_o;
    wire [20:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_add_1_q;
    wire [24:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_shift2_q;
    wire [24:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_shift2_qint;
    wire [19:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_shift0_q;
    wire [19:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_shift0_qint;
    wire [20:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_add_1_a;
    wire [20:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_add_1_b;
    logic [20:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_add_1_o;
    wire [20:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_add_1_q;
    wire [24:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_shift2_q;
    wire [24:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_shift2_qint;
    wire [9:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_e;
    reg [63:0] redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_q;
    reg [63:0] redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_q;
    reg [63:0] redist2_i_c_sroa_0_0_sroa_idx221_infect_sweep0_trunc_sel_x_b_1_0_q;
    reg [31:0] redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_q;
    reg [0:0] redist4_i_unnamed_infect_sweep34_q_2_0_q;
    reg [0:0] redist5_i_unnamed_infect_sweep12_q_3_0_q;
    reg [0:0] redist5_i_unnamed_infect_sweep12_q_3_1_q;
    reg [0:0] redist5_i_unnamed_infect_sweep12_q_3_2_q;
    reg [0:0] redist6_i_unnamed_infect_sweep12_q_5_0_q;
    reg [0:0] redist6_i_unnamed_infect_sweep12_q_5_1_q;
    reg [0:0] redist7_i_unnamed_infect_sweep12_q_7_0_q;
    reg [0:0] redist7_i_unnamed_infect_sweep12_q_7_1_q;
    reg [0:0] redist8_i_cmp4186_3_infect_sweep8_c_7_0_q;
    reg [0:0] redist8_i_cmp4186_3_infect_sweep8_c_7_1_q;
    reg [0:0] redist8_i_cmp4186_3_infect_sweep8_c_7_2_q;
    reg [0:0] redist8_i_cmp4186_3_infect_sweep8_c_7_3_q;
    reg [0:0] redist8_i_cmp4186_3_infect_sweep8_c_7_4_q;
    reg [0:0] redist8_i_cmp4186_3_infect_sweep8_c_7_5_q;
    reg [0:0] redist8_i_cmp4186_3_infect_sweep8_c_7_6_q;
    reg [61:0] redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_q;
    reg [61:0] redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_q;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_placetypenum43_infect_sweep29_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_placetypenum43_infect_sweep29_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm132_infect_sweep30_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm132_infect_sweep30_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_b;
    wire [47:0] bubble_join_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_b;
    wire [15:0] bubble_select_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_c;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_b;
    wire [0:0] SE_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_join_wireValid;
    wire [0:0] SE_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_join_and0;
    wire [0:0] SE_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_join_backStall;
    wire [0:0] SE_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_join_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_and1;
    wire [0:0] SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_and1;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_V0;
    wire [0:0] SE_i_unnamed_infect_sweep28_wireValid;
    wire [0:0] SE_i_unnamed_infect_sweep28_and0;
    wire [0:0] SE_i_unnamed_infect_sweep28_and1;
    wire [0:0] SE_i_unnamed_infect_sweep28_backStall;
    wire [0:0] SE_i_unnamed_infect_sweep28_V0;
    reg [0:0] SE_i_unnamed_infect_sweep34_R_v_0;
    wire [0:0] SE_i_unnamed_infect_sweep34_v_s_0;
    wire [0:0] SE_i_unnamed_infect_sweep34_s_tv_0;
    wire [0:0] SE_i_unnamed_infect_sweep34_backEN;
    wire [0:0] SE_i_unnamed_infect_sweep34_and0;
    wire [0:0] SE_i_unnamed_infect_sweep34_backStall;
    wire [0:0] SE_i_unnamed_infect_sweep34_V0;
    wire [0:0] SE_i_unnamed_infect_sweep35_wireValid;
    wire [0:0] SE_i_unnamed_infect_sweep35_wireStall;
    wire [0:0] SE_i_unnamed_infect_sweep35_StallValid;
    wire [0:0] SE_i_unnamed_infect_sweep35_toReg0;
    reg [0:0] SE_i_unnamed_infect_sweep35_fromReg0;
    wire [0:0] SE_i_unnamed_infect_sweep35_consumed0;
    wire [0:0] SE_i_unnamed_infect_sweep35_toReg1;
    reg [0:0] SE_i_unnamed_infect_sweep35_fromReg1;
    wire [0:0] SE_i_unnamed_infect_sweep35_consumed1;
    wire [0:0] SE_i_unnamed_infect_sweep35_and0;
    wire [0:0] SE_i_unnamed_infect_sweep35_or0;
    wire [0:0] SE_i_unnamed_infect_sweep35_backStall;
    wire [0:0] SE_i_unnamed_infect_sweep35_V0;
    wire [0:0] SE_i_unnamed_infect_sweep35_V1;
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
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_or1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_or2;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_V2;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_V3;
    wire [0:0] SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_V1;
    reg [0:0] SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_R_v_0;
    wire [0:0] SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_v_s_0;
    wire [0:0] SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_s_tv_0;
    wire [0:0] SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_backEN;
    wire [0:0] SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_backStall;
    wire [0:0] SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_V0;
    reg [0:0] SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_V0;
    reg [0:0] SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_R_v_1;
    wire [0:0] SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_or0;
    wire [0:0] SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_V0;
    wire [0:0] SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_V1;
    reg [0:0] SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_V0;
    reg [0:0] SE_redist4_i_unnamed_infect_sweep34_q_2_0_R_v_0;
    reg [0:0] SE_redist4_i_unnamed_infect_sweep34_q_2_0_R_v_1;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep34_q_2_0_v_s_0;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep34_q_2_0_s_tv_0;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep34_q_2_0_s_tv_1;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep34_q_2_0_backEN;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep34_q_2_0_or0;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep34_q_2_0_backStall;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep34_q_2_0_V0;
    wire [0:0] SE_redist4_i_unnamed_infect_sweep34_q_2_0_V1;
    reg [0:0] SE_redist5_i_unnamed_infect_sweep12_q_3_0_R_v_0;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep12_q_3_0_v_s_0;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep12_q_3_0_s_tv_0;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep12_q_3_0_backEN;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep12_q_3_0_backStall;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep12_q_3_0_V0;
    reg [0:0] SE_redist5_i_unnamed_infect_sweep12_q_3_1_R_v_0;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep12_q_3_1_v_s_0;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep12_q_3_1_s_tv_0;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep12_q_3_1_backEN;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep12_q_3_1_backStall;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep12_q_3_1_V0;
    reg [0:0] SE_redist5_i_unnamed_infect_sweep12_q_3_2_R_v_0;
    reg [0:0] SE_redist5_i_unnamed_infect_sweep12_q_3_2_R_v_1;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep12_q_3_2_v_s_0;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep12_q_3_2_s_tv_0;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep12_q_3_2_s_tv_1;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep12_q_3_2_backEN;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep12_q_3_2_or0;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep12_q_3_2_backStall;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep12_q_3_2_V0;
    wire [0:0] SE_redist5_i_unnamed_infect_sweep12_q_3_2_V1;
    reg [0:0] SE_redist6_i_unnamed_infect_sweep12_q_5_0_R_v_0;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep12_q_5_0_v_s_0;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep12_q_5_0_s_tv_0;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep12_q_5_0_backEN;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep12_q_5_0_backStall;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep12_q_5_0_V0;
    reg [0:0] SE_redist6_i_unnamed_infect_sweep12_q_5_1_R_v_0;
    reg [0:0] SE_redist6_i_unnamed_infect_sweep12_q_5_1_R_v_1;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep12_q_5_1_v_s_0;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep12_q_5_1_s_tv_0;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep12_q_5_1_s_tv_1;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep12_q_5_1_backEN;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep12_q_5_1_or0;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep12_q_5_1_backStall;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep12_q_5_1_V0;
    wire [0:0] SE_redist6_i_unnamed_infect_sweep12_q_5_1_V1;
    reg [0:0] SE_redist7_i_unnamed_infect_sweep12_q_7_0_R_v_0;
    wire [0:0] SE_redist7_i_unnamed_infect_sweep12_q_7_0_v_s_0;
    wire [0:0] SE_redist7_i_unnamed_infect_sweep12_q_7_0_s_tv_0;
    wire [0:0] SE_redist7_i_unnamed_infect_sweep12_q_7_0_backEN;
    wire [0:0] SE_redist7_i_unnamed_infect_sweep12_q_7_0_backStall;
    wire [0:0] SE_redist7_i_unnamed_infect_sweep12_q_7_0_V0;
    reg [0:0] SE_redist7_i_unnamed_infect_sweep12_q_7_1_R_v_0;
    reg [0:0] SE_redist7_i_unnamed_infect_sweep12_q_7_1_R_v_1;
    wire [0:0] SE_redist7_i_unnamed_infect_sweep12_q_7_1_v_s_0;
    wire [0:0] SE_redist7_i_unnamed_infect_sweep12_q_7_1_s_tv_0;
    wire [0:0] SE_redist7_i_unnamed_infect_sweep12_q_7_1_s_tv_1;
    wire [0:0] SE_redist7_i_unnamed_infect_sweep12_q_7_1_backEN;
    wire [0:0] SE_redist7_i_unnamed_infect_sweep12_q_7_1_or0;
    wire [0:0] SE_redist7_i_unnamed_infect_sweep12_q_7_1_backStall;
    wire [0:0] SE_redist7_i_unnamed_infect_sweep12_q_7_1_V0;
    wire [0:0] SE_redist7_i_unnamed_infect_sweep12_q_7_1_V1;
    reg [0:0] SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_R_v_0;
    wire [0:0] SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_v_s_0;
    wire [0:0] SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_s_tv_0;
    wire [0:0] SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_backEN;
    wire [0:0] SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_backStall;
    wire [0:0] SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_V0;
    reg [0:0] SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_R_v_0;
    wire [0:0] SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_v_s_0;
    wire [0:0] SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_s_tv_0;
    wire [0:0] SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_backEN;
    wire [0:0] SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_backStall;
    wire [0:0] SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_2_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_2_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_2_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_3_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_3_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_3_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_4_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_4_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_4_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_5_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_5_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_5_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_6_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_6_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_6_V0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_2_reg_valid_in;
    wire bubble_out_stall_entry_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_2_reg_stall_in;
    wire bubble_out_stall_entry_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_2_reg_valid_out;
    wire bubble_out_stall_entry_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_2_reg_stall_out;
    wire bubble_out_stall_entry_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_3_reg_valid_in;
    wire bubble_out_stall_entry_3_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_3_reg_stall_in;
    wire bubble_out_stall_entry_3_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_3_reg_valid_out;
    wire bubble_out_stall_entry_3_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_3_reg_stall_out;
    wire bubble_out_stall_entry_3_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_4_reg_valid_in;
    wire bubble_out_stall_entry_4_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_4_reg_stall_in;
    wire bubble_out_stall_entry_4_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_4_reg_valid_out;
    wire bubble_out_stall_entry_4_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_4_reg_stall_out;
    wire bubble_out_stall_entry_4_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_5_reg_valid_in;
    wire bubble_out_stall_entry_5_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_5_reg_stall_in;
    wire bubble_out_stall_entry_5_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_5_reg_valid_out;
    wire bubble_out_stall_entry_5_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_5_reg_stall_out;
    wire bubble_out_stall_entry_5_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_6_reg_valid_in;
    wire bubble_out_stall_entry_6_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_6_reg_stall_in;
    wire bubble_out_stall_entry_6_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_6_reg_valid_out;
    wire bubble_out_stall_entry_6_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_6_reg_stall_out;
    wire bubble_out_stall_entry_6_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_i_valid;
    reg [0:0] SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_r_valid;
    reg [61:0] SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_r_data0;
    wire [0:0] SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_backStall;
    wire [0:0] SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_V;
    wire [61:0] SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_D0;
    wire [0:0] SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_i_valid;
    reg [0:0] SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_r_valid;
    reg [0:0] SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_r_data0;
    reg [0:0] SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_r_data1;
    wire [0:0] SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_backStall;
    wire [0:0] SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_V;
    wire [0:0] SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_D0;
    wire [0:0] SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_D1;


    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_c_i64_42_x(CONSTANT,161)
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_c_i64_42_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000100);

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_multconst_x(CONSTANT,156)
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_multconst_x_q = $unsigned(52'b0000000000000000000000000000000000000000000000000000);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_idxprom_3_infect_sweep2_vt_const_63(CONSTANT,34)
    assign i_idxprom_3_infect_sweep2_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // SE_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_join(STALLENABLE,408)
    // Valid signal propagation
    assign SE_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_join_V0 = SE_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_join_wireValid;
    // Backward Stall generation
    assign SE_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_join_backStall = i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_o_stall | ~ (SE_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_join_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_join_and0 = SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_V0;
    assign SE_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_join_wireValid = SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_V0 & SE_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_join_and0;

    // bubble_join_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x(BITJOIN,403)
    assign bubble_join_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_q = i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_o_readdata_0_tpl;

    // bubble_select_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x(BITSELECT,404)
    assign bubble_select_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_q[31:0]);

    // i_cmp4186_3_infect_sweep8(COMPARE,21)@5
    assign i_cmp4186_3_infect_sweep8_a = $unsigned({{2{i_idxprom_3_infect_sweep2_vt_const_63_q[31]}}, i_idxprom_3_infect_sweep2_vt_const_63_q});
    assign i_cmp4186_3_infect_sweep8_b = $unsigned({{2{bubble_select_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_b[31]}}, bubble_select_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_b});
    assign i_cmp4186_3_infect_sweep8_o = $unsigned($signed(i_cmp4186_3_infect_sweep8_a) - $signed(i_cmp4186_3_infect_sweep8_b));
    assign i_cmp4186_3_infect_sweep8_c[0] = i_cmp4186_3_infect_sweep8_o[33];

    // i_unnamed_infect_sweep12(LOGICAL,71)@5
    assign i_unnamed_infect_sweep12_q = i_cmp4186_3_infect_sweep8_c ^ VCC_q;

    // redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1(REG,359)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_q <= $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_backEN == 1'b1)
        begin
            redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_q <= $unsigned(SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_D0);
        end
    end

    // i_c_sroa_0_0_sroa_idx221_infect_sweep4_vt_const_1(CONSTANT,12)
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep4_vt_const_1_q = $unsigned(2'b00);

    // i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_join(BITJOIN,16)@5
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_join_q = {redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_q, i_c_sroa_0_0_sroa_idx221_infect_sweep4_vt_const_1_q};

    // i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13(BLACKBOX,46)@5
    // in in_i_stall@20000000
    // out out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_address@20000000
    // out out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_burstcount@20000000
    // out out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_byteenable@20000000
    // out out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_enable@20000000
    // out out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_read@20000000
    // out out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_write@20000000
    // out out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_writedata@20000000
    // out out_o_readdata@7
    // out out_o_stall@20000000
    // out out_o_valid@7
    infect_sweep_i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_0 thei_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13 (
        .in_c_sroa_20_0_copyload240_lm_infect_sweep_avm_readdata(in_c_sroa_20_0_copyload240_lm_infect_sweep_avm_readdata),
        .in_c_sroa_20_0_copyload240_lm_infect_sweep_avm_readdatavalid(in_c_sroa_20_0_copyload240_lm_infect_sweep_avm_readdatavalid),
        .in_c_sroa_20_0_copyload240_lm_infect_sweep_avm_waitrequest(in_c_sroa_20_0_copyload240_lm_infect_sweep_avm_waitrequest),
        .in_c_sroa_20_0_copyload240_lm_infect_sweep_avm_writeack(in_c_sroa_20_0_copyload240_lm_infect_sweep_avm_writeack),
        .in_flush(in_flush),
        .in_i_address(i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_join_q),
        .in_i_predicate(i_unnamed_infect_sweep12_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_backStall),
        .in_i_valid(SE_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_join_V0),
        .out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_address(i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_address),
        .out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_burstcount(i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_burstcount),
        .out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_byteenable(i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_byteenable),
        .out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_enable(i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_enable),
        .out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_read(i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_read),
        .out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_write(i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_write),
        .out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_writedata(i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13(STALLENABLE,438)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_V0 = SE_out_i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_backStall = SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_wireValid = i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_o_valid;

    // SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0(STALLENABLE,590)
    // Valid signal propagation
    assign SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_V0 = SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_backStall & SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_backEN = ~ (SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_v_s_0 = SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_V0;
    // Backward Stall generation
    assign SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_backStall = ~ (SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_R_v_0 & SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_stall_entry_5(STALLENABLE,668)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_5_V0 = SE_out_bubble_out_stall_entry_5_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_5_backStall = i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_out_stall_out | ~ (SE_out_bubble_out_stall_entry_5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_5_wireValid = bubble_out_stall_entry_5_reg_valid_out;

    // i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15(BLACKBOX,61)@8
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_sync_buffer_p100000osts_sync_buffer22_0 thei_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15 (
        .in_buffer_in(in_Hosts),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_5_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15(STALLENABLE,456)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_V0 = SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_backStall = i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_o_stall | ~ (SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_and0 = i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_and1 = SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_V0 & SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_and0;
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_wireValid = SE_redist5_i_unnamed_infect_sweep12_q_3_2_V0 & SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_and1;

    // SE_redist5_i_unnamed_infect_sweep12_q_3_0(STALLENABLE,595)
    // Valid signal propagation
    assign SE_redist5_i_unnamed_infect_sweep12_q_3_0_V0 = SE_redist5_i_unnamed_infect_sweep12_q_3_0_R_v_0;
    // Stall signal propagation
    assign SE_redist5_i_unnamed_infect_sweep12_q_3_0_s_tv_0 = SE_redist5_i_unnamed_infect_sweep12_q_3_1_backStall & SE_redist5_i_unnamed_infect_sweep12_q_3_0_R_v_0;
    // Backward Enable generation
    assign SE_redist5_i_unnamed_infect_sweep12_q_3_0_backEN = ~ (SE_redist5_i_unnamed_infect_sweep12_q_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_unnamed_infect_sweep12_q_3_0_v_s_0 = SE_redist5_i_unnamed_infect_sweep12_q_3_0_backEN & SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_V1;
    // Backward Stall generation
    assign SE_redist5_i_unnamed_infect_sweep12_q_3_0_backStall = ~ (SE_redist5_i_unnamed_infect_sweep12_q_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_i_unnamed_infect_sweep12_q_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_unnamed_infect_sweep12_q_3_0_backEN == 1'b0)
            begin
                SE_redist5_i_unnamed_infect_sweep12_q_3_0_R_v_0 <= SE_redist5_i_unnamed_infect_sweep12_q_3_0_R_v_0 & SE_redist5_i_unnamed_infect_sweep12_q_3_0_s_tv_0;
            end
            else
            begin
                SE_redist5_i_unnamed_infect_sweep12_q_3_0_R_v_0 <= SE_redist5_i_unnamed_infect_sweep12_q_3_0_v_s_0;
            end

        end
    end

    // SE_redist5_i_unnamed_infect_sweep12_q_3_1(STALLENABLE,596)
    // Valid signal propagation
    assign SE_redist5_i_unnamed_infect_sweep12_q_3_1_V0 = SE_redist5_i_unnamed_infect_sweep12_q_3_1_R_v_0;
    // Stall signal propagation
    assign SE_redist5_i_unnamed_infect_sweep12_q_3_1_s_tv_0 = SE_redist5_i_unnamed_infect_sweep12_q_3_2_backStall & SE_redist5_i_unnamed_infect_sweep12_q_3_1_R_v_0;
    // Backward Enable generation
    assign SE_redist5_i_unnamed_infect_sweep12_q_3_1_backEN = ~ (SE_redist5_i_unnamed_infect_sweep12_q_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_unnamed_infect_sweep12_q_3_1_v_s_0 = SE_redist5_i_unnamed_infect_sweep12_q_3_1_backEN & SE_redist5_i_unnamed_infect_sweep12_q_3_0_V0;
    // Backward Stall generation
    assign SE_redist5_i_unnamed_infect_sweep12_q_3_1_backStall = ~ (SE_redist5_i_unnamed_infect_sweep12_q_3_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_i_unnamed_infect_sweep12_q_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_unnamed_infect_sweep12_q_3_1_backEN == 1'b0)
            begin
                SE_redist5_i_unnamed_infect_sweep12_q_3_1_R_v_0 <= SE_redist5_i_unnamed_infect_sweep12_q_3_1_R_v_0 & SE_redist5_i_unnamed_infect_sweep12_q_3_1_s_tv_0;
            end
            else
            begin
                SE_redist5_i_unnamed_infect_sweep12_q_3_1_R_v_0 <= SE_redist5_i_unnamed_infect_sweep12_q_3_1_v_s_0;
            end

        end
    end

    // SE_redist5_i_unnamed_infect_sweep12_q_3_2(STALLENABLE,597)
    // Valid signal propagation
    assign SE_redist5_i_unnamed_infect_sweep12_q_3_2_V0 = SE_redist5_i_unnamed_infect_sweep12_q_3_2_R_v_0;
    assign SE_redist5_i_unnamed_infect_sweep12_q_3_2_V1 = SE_redist5_i_unnamed_infect_sweep12_q_3_2_R_v_1;
    // Stall signal propagation
    assign SE_redist5_i_unnamed_infect_sweep12_q_3_2_s_tv_0 = SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_backStall & SE_redist5_i_unnamed_infect_sweep12_q_3_2_R_v_0;
    assign SE_redist5_i_unnamed_infect_sweep12_q_3_2_s_tv_1 = SE_redist6_i_unnamed_infect_sweep12_q_5_0_backStall & SE_redist5_i_unnamed_infect_sweep12_q_3_2_R_v_1;
    // Backward Enable generation
    assign SE_redist5_i_unnamed_infect_sweep12_q_3_2_or0 = SE_redist5_i_unnamed_infect_sweep12_q_3_2_s_tv_0;
    assign SE_redist5_i_unnamed_infect_sweep12_q_3_2_backEN = ~ (SE_redist5_i_unnamed_infect_sweep12_q_3_2_s_tv_1 | SE_redist5_i_unnamed_infect_sweep12_q_3_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_unnamed_infect_sweep12_q_3_2_v_s_0 = SE_redist5_i_unnamed_infect_sweep12_q_3_2_backEN & SE_redist5_i_unnamed_infect_sweep12_q_3_1_V0;
    // Backward Stall generation
    assign SE_redist5_i_unnamed_infect_sweep12_q_3_2_backStall = ~ (SE_redist5_i_unnamed_infect_sweep12_q_3_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_i_unnamed_infect_sweep12_q_3_2_R_v_0 <= 1'b0;
            SE_redist5_i_unnamed_infect_sweep12_q_3_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_unnamed_infect_sweep12_q_3_2_backEN == 1'b0)
            begin
                SE_redist5_i_unnamed_infect_sweep12_q_3_2_R_v_0 <= SE_redist5_i_unnamed_infect_sweep12_q_3_2_R_v_0 & SE_redist5_i_unnamed_infect_sweep12_q_3_2_s_tv_0;
            end
            else
            begin
                SE_redist5_i_unnamed_infect_sweep12_q_3_2_R_v_0 <= SE_redist5_i_unnamed_infect_sweep12_q_3_2_v_s_0;
            end

            if (SE_redist5_i_unnamed_infect_sweep12_q_3_2_backEN == 1'b0)
            begin
                SE_redist5_i_unnamed_infect_sweep12_q_3_2_R_v_1 <= SE_redist5_i_unnamed_infect_sweep12_q_3_2_R_v_1 & SE_redist5_i_unnamed_infect_sweep12_q_3_2_s_tv_1;
            end
            else
            begin
                SE_redist5_i_unnamed_infect_sweep12_q_3_2_R_v_1 <= SE_redist5_i_unnamed_infect_sweep12_q_3_2_v_s_0;
            end

        end
    end

    // SE_redist6_i_unnamed_infect_sweep12_q_5_0(STALLENABLE,598)
    // Valid signal propagation
    assign SE_redist6_i_unnamed_infect_sweep12_q_5_0_V0 = SE_redist6_i_unnamed_infect_sweep12_q_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_unnamed_infect_sweep12_q_5_0_s_tv_0 = SE_redist6_i_unnamed_infect_sweep12_q_5_1_backStall & SE_redist6_i_unnamed_infect_sweep12_q_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_unnamed_infect_sweep12_q_5_0_backEN = ~ (SE_redist6_i_unnamed_infect_sweep12_q_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_unnamed_infect_sweep12_q_5_0_v_s_0 = SE_redist6_i_unnamed_infect_sweep12_q_5_0_backEN & SE_redist5_i_unnamed_infect_sweep12_q_3_2_V1;
    // Backward Stall generation
    assign SE_redist6_i_unnamed_infect_sweep12_q_5_0_backStall = ~ (SE_redist6_i_unnamed_infect_sweep12_q_5_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_unnamed_infect_sweep12_q_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_unnamed_infect_sweep12_q_5_0_backEN == 1'b0)
            begin
                SE_redist6_i_unnamed_infect_sweep12_q_5_0_R_v_0 <= SE_redist6_i_unnamed_infect_sweep12_q_5_0_R_v_0 & SE_redist6_i_unnamed_infect_sweep12_q_5_0_s_tv_0;
            end
            else
            begin
                SE_redist6_i_unnamed_infect_sweep12_q_5_0_R_v_0 <= SE_redist6_i_unnamed_infect_sweep12_q_5_0_v_s_0;
            end

        end
    end

    // redist8_i_cmp4186_3_infect_sweep8_c_7_0(REG,351)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_cmp4186_3_infect_sweep8_c_7_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_i_unnamed_infect_sweep12_q_3_0_backEN == 1'b1)
        begin
            redist8_i_cmp4186_3_infect_sweep8_c_7_0_q <= $unsigned(i_cmp4186_3_infect_sweep8_c);
        end
    end

    // redist8_i_cmp4186_3_infect_sweep8_c_7_1(REG,352)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_cmp4186_3_infect_sweep8_c_7_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_i_unnamed_infect_sweep12_q_3_1_backEN == 1'b1)
        begin
            redist8_i_cmp4186_3_infect_sweep8_c_7_1_q <= $unsigned(redist8_i_cmp4186_3_infect_sweep8_c_7_0_q);
        end
    end

    // redist8_i_cmp4186_3_infect_sweep8_c_7_2(REG,353)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_cmp4186_3_infect_sweep8_c_7_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_i_unnamed_infect_sweep12_q_3_2_backEN == 1'b1)
        begin
            redist8_i_cmp4186_3_infect_sweep8_c_7_2_q <= $unsigned(redist8_i_cmp4186_3_infect_sweep8_c_7_1_q);
        end
    end

    // redist8_i_cmp4186_3_infect_sweep8_c_7_3(REG,354)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_cmp4186_3_infect_sweep8_c_7_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_unnamed_infect_sweep12_q_5_0_backEN == 1'b1)
        begin
            redist8_i_cmp4186_3_infect_sweep8_c_7_3_q <= $unsigned(redist8_i_cmp4186_3_infect_sweep8_c_7_2_q);
        end
    end

    // redist8_i_cmp4186_3_infect_sweep8_c_7_4(REG,355)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_cmp4186_3_infect_sweep8_c_7_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_unnamed_infect_sweep12_q_5_1_backEN == 1'b1)
        begin
            redist8_i_cmp4186_3_infect_sweep8_c_7_4_q <= $unsigned(redist8_i_cmp4186_3_infect_sweep8_c_7_3_q);
        end
    end

    // SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0(STALLREG,687)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_r_valid <= 1'b0;
            SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_r_data0 <= 1'bx;
            SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_r_valid <= SE_redist7_i_unnamed_infect_sweep12_q_7_0_backStall & (SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_r_valid | SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_i_valid);

            if (SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_r_data0 <= $unsigned(redist6_i_unnamed_infect_sweep12_q_5_1_q);
                SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_r_data1 <= $unsigned(redist8_i_cmp4186_3_infect_sweep8_c_7_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_i_valid = SE_redist6_i_unnamed_infect_sweep12_q_5_1_V1;
    // Stall signal propagation
    assign SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_backStall = SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_r_valid | ~ (SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_i_valid);

    // Valid
    assign SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_V = SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_r_valid == 1'b1 ? SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_r_valid : SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_i_valid;

    // Data0
    assign SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_D0 = SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_r_valid == 1'b1 ? SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_r_data0 : redist6_i_unnamed_infect_sweep12_q_5_1_q;
    // Data1
    assign SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_D1 = SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_r_valid == 1'b1 ? SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_r_data1 : redist8_i_cmp4186_3_infect_sweep8_c_7_4_q;

    // SE_redist7_i_unnamed_infect_sweep12_q_7_0(STALLENABLE,600)
    // Valid signal propagation
    assign SE_redist7_i_unnamed_infect_sweep12_q_7_0_V0 = SE_redist7_i_unnamed_infect_sweep12_q_7_0_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_unnamed_infect_sweep12_q_7_0_s_tv_0 = SE_redist7_i_unnamed_infect_sweep12_q_7_1_backStall & SE_redist7_i_unnamed_infect_sweep12_q_7_0_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_unnamed_infect_sweep12_q_7_0_backEN = ~ (SE_redist7_i_unnamed_infect_sweep12_q_7_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_unnamed_infect_sweep12_q_7_0_v_s_0 = SE_redist7_i_unnamed_infect_sweep12_q_7_0_backEN & SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_V;
    // Backward Stall generation
    assign SE_redist7_i_unnamed_infect_sweep12_q_7_0_backStall = ~ (SE_redist7_i_unnamed_infect_sweep12_q_7_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_unnamed_infect_sweep12_q_7_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_unnamed_infect_sweep12_q_7_0_backEN == 1'b0)
            begin
                SE_redist7_i_unnamed_infect_sweep12_q_7_0_R_v_0 <= SE_redist7_i_unnamed_infect_sweep12_q_7_0_R_v_0 & SE_redist7_i_unnamed_infect_sweep12_q_7_0_s_tv_0;
            end
            else
            begin
                SE_redist7_i_unnamed_infect_sweep12_q_7_0_R_v_0 <= SE_redist7_i_unnamed_infect_sweep12_q_7_0_v_s_0;
            end

        end
    end

    // SE_redist7_i_unnamed_infect_sweep12_q_7_1(STALLENABLE,601)
    // Valid signal propagation
    assign SE_redist7_i_unnamed_infect_sweep12_q_7_1_V0 = SE_redist7_i_unnamed_infect_sweep12_q_7_1_R_v_0;
    assign SE_redist7_i_unnamed_infect_sweep12_q_7_1_V1 = SE_redist7_i_unnamed_infect_sweep12_q_7_1_R_v_1;
    // Stall signal propagation
    assign SE_redist7_i_unnamed_infect_sweep12_q_7_1_s_tv_0 = SE_i_unnamed_infect_sweep28_backStall & SE_redist7_i_unnamed_infect_sweep12_q_7_1_R_v_0;
    assign SE_redist7_i_unnamed_infect_sweep12_q_7_1_s_tv_1 = SE_i_unnamed_infect_sweep34_backStall & SE_redist7_i_unnamed_infect_sweep12_q_7_1_R_v_1;
    // Backward Enable generation
    assign SE_redist7_i_unnamed_infect_sweep12_q_7_1_or0 = SE_redist7_i_unnamed_infect_sweep12_q_7_1_s_tv_0;
    assign SE_redist7_i_unnamed_infect_sweep12_q_7_1_backEN = ~ (SE_redist7_i_unnamed_infect_sweep12_q_7_1_s_tv_1 | SE_redist7_i_unnamed_infect_sweep12_q_7_1_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_unnamed_infect_sweep12_q_7_1_v_s_0 = SE_redist7_i_unnamed_infect_sweep12_q_7_1_backEN & SE_redist7_i_unnamed_infect_sweep12_q_7_0_V0;
    // Backward Stall generation
    assign SE_redist7_i_unnamed_infect_sweep12_q_7_1_backStall = ~ (SE_redist7_i_unnamed_infect_sweep12_q_7_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_unnamed_infect_sweep12_q_7_1_R_v_0 <= 1'b0;
            SE_redist7_i_unnamed_infect_sweep12_q_7_1_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_unnamed_infect_sweep12_q_7_1_backEN == 1'b0)
            begin
                SE_redist7_i_unnamed_infect_sweep12_q_7_1_R_v_0 <= SE_redist7_i_unnamed_infect_sweep12_q_7_1_R_v_0 & SE_redist7_i_unnamed_infect_sweep12_q_7_1_s_tv_0;
            end
            else
            begin
                SE_redist7_i_unnamed_infect_sweep12_q_7_1_R_v_0 <= SE_redist7_i_unnamed_infect_sweep12_q_7_1_v_s_0;
            end

            if (SE_redist7_i_unnamed_infect_sweep12_q_7_1_backEN == 1'b0)
            begin
                SE_redist7_i_unnamed_infect_sweep12_q_7_1_R_v_1 <= SE_redist7_i_unnamed_infect_sweep12_q_7_1_R_v_1 & SE_redist7_i_unnamed_infect_sweep12_q_7_1_s_tv_1;
            end
            else
            begin
                SE_redist7_i_unnamed_infect_sweep12_q_7_1_R_v_1 <= SE_redist7_i_unnamed_infect_sweep12_q_7_1_v_s_0;
            end

        end
    end

    // redist7_i_unnamed_infect_sweep12_q_7_0(REG,349)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_unnamed_infect_sweep12_q_7_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_unnamed_infect_sweep12_q_7_0_backEN == 1'b1)
        begin
            redist7_i_unnamed_infect_sweep12_q_7_0_q <= $unsigned(SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_D0);
        end
    end

    // redist7_i_unnamed_infect_sweep12_q_7_1(REG,350)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_unnamed_infect_sweep12_q_7_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_unnamed_infect_sweep12_q_7_1_backEN == 1'b1)
        begin
            redist7_i_unnamed_infect_sweep12_q_7_1_q <= $unsigned(redist7_i_unnamed_infect_sweep12_q_7_0_q);
        end
    end

    // i_conv_3_infect_sweep24_vt_const_31(CONSTANT,23)
    assign i_conv_3_infect_sweep24_vt_const_31_q = $unsigned(16'b0000000000000000);

    // bubble_join_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x(BITJOIN,400)
    assign bubble_join_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_q = {i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_o_readdata_1_tpl, i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_o_readdata_0_tpl};

    // bubble_select_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x(BITSELECT,401)
    assign bubble_select_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_q[31:0]);
    assign bubble_select_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_c = $unsigned(bubble_join_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_q[47:32]);

    // i_cmp152183_3_infect_sweep26(LOGICAL,18)@12
    assign i_cmp152183_3_infect_sweep26_q = $unsigned(bubble_select_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_c == i_conv_3_infect_sweep24_vt_const_31_q ? 1'b1 : 1'b0);

    // i_unnamed_infect_sweep28(LOGICAL,72)@12
    assign i_unnamed_infect_sweep28_q = i_cmp152183_3_infect_sweep26_q | redist7_i_unnamed_infect_sweep12_q_7_1_q;

    // SE_out_bubble_out_stall_entry_2(STALLENABLE,662)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_2_V0 = SE_out_bubble_out_stall_entry_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_2_backStall = i_llvm_fpga_ffwd_dest_p1024i32_placetypenum43_infect_sweep29_out_stall_out | ~ (SE_out_bubble_out_stall_entry_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_2_wireValid = bubble_out_stall_entry_2_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024i32_placetypenum43_infect_sweep29(BLACKBOX,39)@12
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_dest_p1024i32_placetypenum43_0 thei_llvm_fpga_ffwd_dest_p1024i32_placetypenum43_infect_sweep29 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_i_unnamed_infect_sweep28_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_2_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_placetypenum43_infect_sweep29_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_placetypenum43_infect_sweep29_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_placetypenum43_infect_sweep29_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_placetypenum43_infect_sweep29(BITJOIN,364)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_placetypenum43_infect_sweep29_q = i_llvm_fpga_ffwd_dest_p1024i32_placetypenum43_infect_sweep29_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_placetypenum43_infect_sweep29(BITSELECT,365)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_placetypenum43_infect_sweep29_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_placetypenum43_infect_sweep29_q[63:0]);

    // i_llvm_fpga_mem_lm132_infect_sweep30(BLACKBOX,47)@12
    // in in_i_stall@20000000
    // out out_lm132_infect_sweep_avm_address@20000000
    // out out_lm132_infect_sweep_avm_burstcount@20000000
    // out out_lm132_infect_sweep_avm_byteenable@20000000
    // out out_lm132_infect_sweep_avm_enable@20000000
    // out out_lm132_infect_sweep_avm_read@20000000
    // out out_lm132_infect_sweep_avm_write@20000000
    // out out_lm132_infect_sweep_avm_writedata@20000000
    // out out_o_readdata@14
    // out out_o_stall@20000000
    // out out_o_valid@14
    infect_sweep_i_llvm_fpga_mem_lm132_0 thei_llvm_fpga_mem_lm132_infect_sweep30 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_placetypenum43_infect_sweep29_b),
        .in_i_predicate(i_unnamed_infect_sweep28_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_backStall),
        .in_i_valid(SE_i_unnamed_infect_sweep28_V0),
        .in_lm132_infect_sweep_avm_readdata(in_lm132_infect_sweep_avm_readdata),
        .in_lm132_infect_sweep_avm_readdatavalid(in_lm132_infect_sweep_avm_readdatavalid),
        .in_lm132_infect_sweep_avm_waitrequest(in_lm132_infect_sweep_avm_waitrequest),
        .in_lm132_infect_sweep_avm_writeack(in_lm132_infect_sweep_avm_writeack),
        .out_lm132_infect_sweep_avm_address(i_llvm_fpga_mem_lm132_infect_sweep30_out_lm132_infect_sweep_avm_address),
        .out_lm132_infect_sweep_avm_burstcount(i_llvm_fpga_mem_lm132_infect_sweep30_out_lm132_infect_sweep_avm_burstcount),
        .out_lm132_infect_sweep_avm_byteenable(i_llvm_fpga_mem_lm132_infect_sweep30_out_lm132_infect_sweep_avm_byteenable),
        .out_lm132_infect_sweep_avm_enable(i_llvm_fpga_mem_lm132_infect_sweep30_out_lm132_infect_sweep_avm_enable),
        .out_lm132_infect_sweep_avm_read(i_llvm_fpga_mem_lm132_infect_sweep30_out_lm132_infect_sweep_avm_read),
        .out_lm132_infect_sweep_avm_write(i_llvm_fpga_mem_lm132_infect_sweep30_out_lm132_infect_sweep_avm_write),
        .out_lm132_infect_sweep_avm_writedata(i_llvm_fpga_mem_lm132_infect_sweep30_out_lm132_infect_sweep_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm132_infect_sweep30_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm132_infect_sweep30_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm132_infect_sweep30_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_lm132_infect_sweep30(STALLENABLE,440)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_fromReg0 <= SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_fromReg1 <= SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_consumed0 = (~ (SE_i_unnamed_infect_sweep35_backStall) & SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_wireValid) | SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep53_infect_sweep39_out_stall_out) & SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_wireValid) | SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_StallValid = SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_backStall & SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_toReg0 = SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_StallValid & SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_toReg1 = SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_StallValid & SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_or0 = SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_consumed1 & SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_or0);
    assign SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_backStall = SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_V0 = SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_V1 = SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_wireValid = i_llvm_fpga_mem_lm132_infect_sweep30_out_o_valid;

    // SE_i_unnamed_infect_sweep35(STALLENABLE,466)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_infect_sweep35_fromReg0 <= '0;
            SE_i_unnamed_infect_sweep35_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_unnamed_infect_sweep35_fromReg0 <= SE_i_unnamed_infect_sweep35_toReg0;
            // Successor 1
            SE_i_unnamed_infect_sweep35_fromReg1 <= SE_i_unnamed_infect_sweep35_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_unnamed_infect_sweep35_consumed0 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep55_infect_sweep41_out_stall_out) & SE_i_unnamed_infect_sweep35_wireValid) | SE_i_unnamed_infect_sweep35_fromReg0;
    assign SE_i_unnamed_infect_sweep35_consumed1 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep56_infect_sweep42_out_stall_out) & SE_i_unnamed_infect_sweep35_wireValid) | SE_i_unnamed_infect_sweep35_fromReg1;
    // Consuming
    assign SE_i_unnamed_infect_sweep35_StallValid = SE_i_unnamed_infect_sweep35_backStall & SE_i_unnamed_infect_sweep35_wireValid;
    assign SE_i_unnamed_infect_sweep35_toReg0 = SE_i_unnamed_infect_sweep35_StallValid & SE_i_unnamed_infect_sweep35_consumed0;
    assign SE_i_unnamed_infect_sweep35_toReg1 = SE_i_unnamed_infect_sweep35_StallValid & SE_i_unnamed_infect_sweep35_consumed1;
    // Backward Stall generation
    assign SE_i_unnamed_infect_sweep35_or0 = SE_i_unnamed_infect_sweep35_consumed0;
    assign SE_i_unnamed_infect_sweep35_wireStall = ~ (SE_i_unnamed_infect_sweep35_consumed1 & SE_i_unnamed_infect_sweep35_or0);
    assign SE_i_unnamed_infect_sweep35_backStall = SE_i_unnamed_infect_sweep35_wireStall;
    // Valid signal propagation
    assign SE_i_unnamed_infect_sweep35_V0 = SE_i_unnamed_infect_sweep35_wireValid & ~ (SE_i_unnamed_infect_sweep35_fromReg0);
    assign SE_i_unnamed_infect_sweep35_V1 = SE_i_unnamed_infect_sweep35_wireValid & ~ (SE_i_unnamed_infect_sweep35_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_infect_sweep35_and0 = SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_V0;
    assign SE_i_unnamed_infect_sweep35_wireValid = SE_redist4_i_unnamed_infect_sweep34_q_2_0_V0 & SE_i_unnamed_infect_sweep35_and0;

    // SE_redist4_i_unnamed_infect_sweep34_q_2_0(STALLENABLE,594)
    // Valid signal propagation
    assign SE_redist4_i_unnamed_infect_sweep34_q_2_0_V0 = SE_redist4_i_unnamed_infect_sweep34_q_2_0_R_v_0;
    assign SE_redist4_i_unnamed_infect_sweep34_q_2_0_V1 = SE_redist4_i_unnamed_infect_sweep34_q_2_0_R_v_1;
    // Stall signal propagation
    assign SE_redist4_i_unnamed_infect_sweep34_q_2_0_s_tv_0 = SE_i_unnamed_infect_sweep35_backStall & SE_redist4_i_unnamed_infect_sweep34_q_2_0_R_v_0;
    assign SE_redist4_i_unnamed_infect_sweep34_q_2_0_s_tv_1 = i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep54_infect_sweep40_out_stall_out & SE_redist4_i_unnamed_infect_sweep34_q_2_0_R_v_1;
    // Backward Enable generation
    assign SE_redist4_i_unnamed_infect_sweep34_q_2_0_or0 = SE_redist4_i_unnamed_infect_sweep34_q_2_0_s_tv_0;
    assign SE_redist4_i_unnamed_infect_sweep34_q_2_0_backEN = ~ (SE_redist4_i_unnamed_infect_sweep34_q_2_0_s_tv_1 | SE_redist4_i_unnamed_infect_sweep34_q_2_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_i_unnamed_infect_sweep34_q_2_0_v_s_0 = SE_redist4_i_unnamed_infect_sweep34_q_2_0_backEN & SE_i_unnamed_infect_sweep34_V0;
    // Backward Stall generation
    assign SE_redist4_i_unnamed_infect_sweep34_q_2_0_backStall = ~ (SE_redist4_i_unnamed_infect_sweep34_q_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_i_unnamed_infect_sweep34_q_2_0_R_v_0 <= 1'b0;
            SE_redist4_i_unnamed_infect_sweep34_q_2_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_i_unnamed_infect_sweep34_q_2_0_backEN == 1'b0)
            begin
                SE_redist4_i_unnamed_infect_sweep34_q_2_0_R_v_0 <= SE_redist4_i_unnamed_infect_sweep34_q_2_0_R_v_0 & SE_redist4_i_unnamed_infect_sweep34_q_2_0_s_tv_0;
            end
            else
            begin
                SE_redist4_i_unnamed_infect_sweep34_q_2_0_R_v_0 <= SE_redist4_i_unnamed_infect_sweep34_q_2_0_v_s_0;
            end

            if (SE_redist4_i_unnamed_infect_sweep34_q_2_0_backEN == 1'b0)
            begin
                SE_redist4_i_unnamed_infect_sweep34_q_2_0_R_v_1 <= SE_redist4_i_unnamed_infect_sweep34_q_2_0_R_v_1 & SE_redist4_i_unnamed_infect_sweep34_q_2_0_s_tv_1;
            end
            else
            begin
                SE_redist4_i_unnamed_infect_sweep34_q_2_0_R_v_1 <= SE_redist4_i_unnamed_infect_sweep34_q_2_0_v_s_0;
            end

        end
    end

    // i_cmp152183_3_not_infect_sweep33(LOGICAL,19)@12
    assign i_cmp152183_3_not_infect_sweep33_q = i_cmp152183_3_infect_sweep26_q ^ VCC_q;

    // redist8_i_cmp4186_3_infect_sweep8_c_7_5(REG,356)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_cmp4186_3_infect_sweep8_c_7_5_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_unnamed_infect_sweep12_q_7_0_backEN == 1'b1)
        begin
            redist8_i_cmp4186_3_infect_sweep8_c_7_5_q <= $unsigned(SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_D1);
        end
    end

    // redist8_i_cmp4186_3_infect_sweep8_c_7_6(REG,357)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_cmp4186_3_infect_sweep8_c_7_6_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_unnamed_infect_sweep12_q_7_1_backEN == 1'b1)
        begin
            redist8_i_cmp4186_3_infect_sweep8_c_7_6_q <= $unsigned(redist8_i_cmp4186_3_infect_sweep8_c_7_5_q);
        end
    end

    // i_unnamed_infect_sweep34(LOGICAL,73)@12 + 1
    assign i_unnamed_infect_sweep34_qi = redist8_i_cmp4186_3_infect_sweep8_c_7_6_q & i_cmp152183_3_not_infect_sweep33_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_infect_sweep34_delay ( .xin(i_unnamed_infect_sweep34_qi), .xout(i_unnamed_infect_sweep34_q), .ena(SE_i_unnamed_infect_sweep34_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist4_i_unnamed_infect_sweep34_q_2_0(REG,343)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_unnamed_infect_sweep34_q_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_i_unnamed_infect_sweep34_q_2_0_backEN == 1'b1)
        begin
            redist4_i_unnamed_infect_sweep34_q_2_0_q <= $unsigned(i_unnamed_infect_sweep34_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep54_infect_sweep40(BLACKBOX,40)@14
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_32_0@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_source_i1_unnamed_54_infect_sweep0 thei_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep54_infect_sweep40 (
        .in_predicate_in(GND_q),
        .in_src_data_in_32_0(redist4_i_unnamed_infect_sweep34_q_2_0_q),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_backStall),
        .in_valid_in(SE_redist4_i_unnamed_infect_sweep34_q_2_0_V1),
        .out_intel_reserved_ffwd_32_0(i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep54_infect_sweep40_out_intel_reserved_ffwd_32_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep54_infect_sweep40_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep54_infect_sweep40_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm132_infect_sweep30(BITJOIN,376)
    assign bubble_join_i_llvm_fpga_mem_lm132_infect_sweep30_q = i_llvm_fpga_mem_lm132_infect_sweep30_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm132_infect_sweep30(BITSELECT,377)
    assign bubble_select_i_llvm_fpga_mem_lm132_infect_sweep30_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm132_infect_sweep30_q[31:0]);

    // i_cmp157180_3_infect_sweep31(COMPARE,20)@14
    assign i_cmp157180_3_infect_sweep31_a = $unsigned({{2{i_idxprom_3_infect_sweep2_vt_const_63_q[31]}}, i_idxprom_3_infect_sweep2_vt_const_63_q});
    assign i_cmp157180_3_infect_sweep31_b = $unsigned({{2{bubble_select_i_llvm_fpga_mem_lm132_infect_sweep30_b[31]}}, bubble_select_i_llvm_fpga_mem_lm132_infect_sweep30_b});
    assign i_cmp157180_3_infect_sweep31_o = $unsigned($signed(i_cmp157180_3_infect_sweep31_a) - $signed(i_cmp157180_3_infect_sweep31_b));
    assign i_cmp157180_3_infect_sweep31_c[0] = i_cmp157180_3_infect_sweep31_o[33];

    // i_unnamed_infect_sweep35(LOGICAL,74)@14
    assign i_unnamed_infect_sweep35_q = i_cmp157180_3_infect_sweep31_c & redist4_i_unnamed_infect_sweep34_q_2_0_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep55_infect_sweep41(BLACKBOX,41)@14
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_33_0@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_source_i1_unnamed_55_infect_sweep0 thei_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep55_infect_sweep41 (
        .in_predicate_in(GND_q),
        .in_src_data_in_33_0(i_unnamed_infect_sweep35_q),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_backStall),
        .in_valid_in(SE_i_unnamed_infect_sweep35_V0),
        .out_intel_reserved_ffwd_33_0(i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep55_infect_sweep41_out_intel_reserved_ffwd_33_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep55_infect_sweep41_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep55_infect_sweep41_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_infect_sweep36(LOGICAL,75)@14
    assign i_unnamed_infect_sweep36_q = i_unnamed_infect_sweep35_q ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep56_infect_sweep42(BLACKBOX,42)@14
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_34_0@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_source_i1_unnamed_56_infect_sweep0 thei_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep56_infect_sweep42 (
        .in_predicate_in(GND_q),
        .in_src_data_in_34_0(i_unnamed_infect_sweep36_q),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_backStall),
        .in_valid_in(SE_i_unnamed_infect_sweep35_V1),
        .out_intel_reserved_ffwd_34_0(i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep56_infect_sweep42_out_intel_reserved_ffwd_34_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep56_infect_sweep42_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep56_infect_sweep42_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep53_infect_sweep39(BLACKBOX,45)@14
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_31_0@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_source_i320000med_53_infect_sweep0 thei_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep53_infect_sweep39 (
        .in_predicate_in(GND_q),
        .in_src_data_in_31_0(bubble_select_i_llvm_fpga_mem_lm132_infect_sweep30_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_lm132_infect_sweep30_V1),
        .out_intel_reserved_ffwd_31_0(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep53_infect_sweep39_out_intel_reserved_ffwd_31_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep53_infect_sweep39_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep53_infect_sweep39_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37(STALLENABLE,432)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg(STALLFIFO,679)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1(STALLENABLE,628)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_V0 = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_and0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_and1 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_and2 = i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep53_infect_sweep39_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_and3 = i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep56_infect_sweep42_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_and4 = i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep55_infect_sweep41_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep54_infect_sweep40_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_and4;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg(STALLFIFO,680)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38(STALLENABLE,434)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_out_valid_out;

    // i_conv_3_infect_sweep24_sel_x(BITSELECT,173)@12
    assign i_conv_3_infect_sweep24_sel_x_b = {16'b0000000000000000, bubble_select_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_c[15:0]};

    // i_conv_3_infect_sweep24_vt_select_15(BITSELECT,25)@12
    assign i_conv_3_infect_sweep24_vt_select_15_b = i_conv_3_infect_sweep24_sel_x_b[15:0];

    // i_conv_3_infect_sweep24_vt_join(BITJOIN,24)@12
    assign i_conv_3_infect_sweep24_vt_join_q = {i_conv_3_infect_sweep24_vt_const_31_q, i_conv_3_infect_sweep24_vt_select_15_b};

    // i_add_3_infect_sweep25(ADD,11)@12
    assign i_add_3_infect_sweep25_a = {1'b0, bubble_select_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_b};
    assign i_add_3_infect_sweep25_b = {1'b0, i_conv_3_infect_sweep24_vt_join_q};
    assign i_add_3_infect_sweep25_o = $unsigned(i_add_3_infect_sweep25_a) + $unsigned(i_add_3_infect_sweep25_b);
    assign i_add_3_infect_sweep25_q = i_add_3_infect_sweep25_o[32:0];

    // bgTrunc_i_add_3_infect_sweep25_sel_x(BITSELECT,129)@12
    assign bgTrunc_i_add_3_infect_sweep25_sel_x_b = i_add_3_infect_sweep25_q[31:0];

    // i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38(BLACKBOX,44)@12
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_30_0@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_source_i320000med_52_infect_sweep0 thei_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38 (
        .in_predicate_in(GND_q),
        .in_src_data_in_30_0(bgTrunc_i_add_3_infect_sweep25_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_V3),
        .out_intel_reserved_ffwd_30_0(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_out_intel_reserved_ffwd_30_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_unnamed_infect_sweep34(STALLENABLE,465)
    // Valid signal propagation
    assign SE_i_unnamed_infect_sweep34_V0 = SE_i_unnamed_infect_sweep34_R_v_0;
    // Stall signal propagation
    assign SE_i_unnamed_infect_sweep34_s_tv_0 = SE_redist4_i_unnamed_infect_sweep34_q_2_0_backStall & SE_i_unnamed_infect_sweep34_R_v_0;
    // Backward Enable generation
    assign SE_i_unnamed_infect_sweep34_backEN = ~ (SE_i_unnamed_infect_sweep34_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_infect_sweep34_and0 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_V2 & SE_i_unnamed_infect_sweep34_backEN;
    assign SE_i_unnamed_infect_sweep34_v_s_0 = SE_redist7_i_unnamed_infect_sweep12_q_7_1_V1 & SE_i_unnamed_infect_sweep34_and0;
    // Backward Stall generation
    assign SE_i_unnamed_infect_sweep34_backStall = ~ (SE_i_unnamed_infect_sweep34_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_infect_sweep34_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_infect_sweep34_backEN == 1'b0)
            begin
                SE_i_unnamed_infect_sweep34_R_v_0 <= SE_i_unnamed_infect_sweep34_R_v_0 & SE_i_unnamed_infect_sweep34_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_infect_sweep34_R_v_0 <= SE_i_unnamed_infect_sweep34_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37(BLACKBOX,43)@12
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_29_0@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_source_i320000med_51_infect_sweep0 thei_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37 (
        .in_predicate_in(GND_q),
        .in_src_data_in_29_0(bubble_select_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_V1),
        .out_intel_reserved_ffwd_29_0(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_out_intel_reserved_ffwd_29_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_unnamed_infect_sweep28(STALLENABLE,464)
    // Valid signal propagation
    assign SE_i_unnamed_infect_sweep28_V0 = SE_i_unnamed_infect_sweep28_wireValid;
    // Backward Stall generation
    assign SE_i_unnamed_infect_sweep28_backStall = i_llvm_fpga_mem_lm132_infect_sweep30_out_o_stall | ~ (SE_i_unnamed_infect_sweep28_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_infect_sweep28_and0 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_V0;
    assign SE_i_unnamed_infect_sweep28_and1 = SE_redist7_i_unnamed_infect_sweep12_q_7_1_V0 & SE_i_unnamed_infect_sweep28_and0;
    assign SE_i_unnamed_infect_sweep28_wireValid = i_llvm_fpga_ffwd_dest_p1024i32_placetypenum43_infect_sweep29_out_valid_out & SE_i_unnamed_infect_sweep28_and1;

    // SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x(STALLENABLE,493)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_fromReg1 <= '0;
            SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_fromReg2 <= '0;
            SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_fromReg0 <= SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_fromReg1 <= SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_fromReg2 <= SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_fromReg3 <= SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_consumed0 = (~ (SE_i_unnamed_infect_sweep28_backStall) & SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_out_stall_out) & SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_fromReg1;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_consumed2 = (~ (SE_i_unnamed_infect_sweep34_backStall) & SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_fromReg2;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_consumed3 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_out_stall_out) & SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_StallValid = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_backStall & SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_wireValid;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_toReg0 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_StallValid & SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_toReg1 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_StallValid & SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_consumed1;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_toReg2 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_StallValid & SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_consumed2;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_toReg3 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_StallValid & SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_or0 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_or1 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_consumed1 & SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_or0;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_or2 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_consumed2 & SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_or1;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_wireStall = ~ (SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_consumed3 & SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_or2);
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_backStall = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_V0 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_V1 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_fromReg1);
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_V2 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_fromReg2);
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_V3 = SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_wireValid = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_o_valid;

    // redist5_i_unnamed_infect_sweep12_q_3_0(REG,344)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_unnamed_infect_sweep12_q_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_i_unnamed_infect_sweep12_q_3_0_backEN == 1'b1)
        begin
            redist5_i_unnamed_infect_sweep12_q_3_0_q <= $unsigned(i_unnamed_infect_sweep12_q);
        end
    end

    // redist5_i_unnamed_infect_sweep12_q_3_1(REG,345)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_unnamed_infect_sweep12_q_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_i_unnamed_infect_sweep12_q_3_1_backEN == 1'b1)
        begin
            redist5_i_unnamed_infect_sweep12_q_3_1_q <= $unsigned(redist5_i_unnamed_infect_sweep12_q_3_0_q);
        end
    end

    // redist5_i_unnamed_infect_sweep12_q_3_2(REG,346)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_unnamed_infect_sweep12_q_3_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_i_unnamed_infect_sweep12_q_3_2_backEN == 1'b1)
        begin
            redist5_i_unnamed_infect_sweep12_q_3_2_q <= $unsigned(redist5_i_unnamed_infect_sweep12_q_3_1_q);
        end
    end

    // redist6_i_unnamed_infect_sweep12_q_5_0(REG,347)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_unnamed_infect_sweep12_q_5_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_unnamed_infect_sweep12_q_5_0_backEN == 1'b1)
        begin
            redist6_i_unnamed_infect_sweep12_q_5_0_q <= $unsigned(redist5_i_unnamed_infect_sweep12_q_3_2_q);
        end
    end

    // redist6_i_unnamed_infect_sweep12_q_5_1(REG,348)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_unnamed_infect_sweep12_q_5_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_unnamed_infect_sweep12_q_5_1_backEN == 1'b1)
        begin
            redist6_i_unnamed_infect_sweep12_q_5_1_q <= $unsigned(redist6_i_unnamed_infect_sweep12_q_5_0_q);
        end
    end

    // bubble_join_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17(BITJOIN,379)
    assign bubble_join_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_q = i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17(BITSELECT,380)
    assign bubble_select_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_b = $unsigned(bubble_join_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_q[31:0]);

    // i_idxprom11_3_phi_trans_insert_infect_sweep18_sel_x(BITSELECT,180)@10
    assign i_idxprom11_3_phi_trans_insert_infect_sweep18_sel_x_b = $unsigned({{32{bubble_select_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_b[31]}}, bubble_select_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_b[31:0]});

    // i_firstperson_3_phi_trans_insert_infect_sweep0_narrow_x(BITSELECT,176)@10
    assign i_firstperson_3_phi_trans_insert_infect_sweep0_narrow_x_b = i_idxprom11_3_phi_trans_insert_infect_sweep18_sel_x_b[60:0];

    // i_firstperson_3_phi_trans_insert_infect_sweep0_shift_join_x(BITJOIN,177)@10
    assign i_firstperson_3_phi_trans_insert_infect_sweep0_shift_join_x_q = {i_firstperson_3_phi_trans_insert_infect_sweep0_narrow_x_b, i_firstperson_3_phi_trans_insert_infect_sweep20_vt_const_2_q};

    // bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19(BITJOIN,388)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19_q = i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19(BITSELECT,389)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19_vt_select_63(BITSELECT,60)@10
    assign i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_vt_const_9(CONSTANT,50)
    assign i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19_vt_join(BITJOIN,59)@10
    assign i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19_vt_join_q = {i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_vt_const_9_q};

    // i_firstperson_3_phi_trans_insert_infect_sweep0_add_x(ADD,174)@10
    assign i_firstperson_3_phi_trans_insert_infect_sweep0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19_vt_join_q};
    assign i_firstperson_3_phi_trans_insert_infect_sweep0_add_x_b = {1'b0, i_firstperson_3_phi_trans_insert_infect_sweep0_shift_join_x_q};
    assign i_firstperson_3_phi_trans_insert_infect_sweep0_add_x_o = $unsigned(i_firstperson_3_phi_trans_insert_infect_sweep0_add_x_a) + $unsigned(i_firstperson_3_phi_trans_insert_infect_sweep0_add_x_b);
    assign i_firstperson_3_phi_trans_insert_infect_sweep0_add_x_q = i_firstperson_3_phi_trans_insert_infect_sweep0_add_x_o[64:0];

    // i_firstperson_3_phi_trans_insert_infect_sweep0_dupName_0_trunc_sel_x(BITSELECT,179)@10
    assign i_firstperson_3_phi_trans_insert_infect_sweep0_dupName_0_trunc_sel_x_b = i_firstperson_3_phi_trans_insert_infect_sweep0_add_x_q[63:0];

    // i_firstperson_3_phi_trans_insert_infect_sweep20_vt_select_63(BITSELECT,28)@10
    assign i_firstperson_3_phi_trans_insert_infect_sweep20_vt_select_63_b = i_firstperson_3_phi_trans_insert_infect_sweep0_dupName_0_trunc_sel_x_b[63:3];

    // i_firstperson_3_phi_trans_insert_infect_sweep20_vt_join(BITJOIN,27)@10
    assign i_firstperson_3_phi_trans_insert_infect_sweep20_vt_join_q = {i_firstperson_3_phi_trans_insert_infect_sweep20_vt_select_63_b, i_firstperson_3_phi_trans_insert_infect_sweep20_vt_const_2_q};

    // i_memcoalesce_bitcast_infect_sweep_fpgaunique_3_infect_sweep21_vt_select_63(BITSELECT,67)@10
    assign i_memcoalesce_bitcast_infect_sweep_fpgaunique_3_infect_sweep21_vt_select_63_b = i_firstperson_3_phi_trans_insert_infect_sweep20_vt_join_q[63:3];

    // i_firstperson_3_phi_trans_insert_infect_sweep20_vt_const_2(CONSTANT,26)
    assign i_firstperson_3_phi_trans_insert_infect_sweep20_vt_const_2_q = $unsigned(3'b000);

    // i_memcoalesce_bitcast_infect_sweep_fpgaunique_3_infect_sweep21_vt_join(BITJOIN,66)@10
    assign i_memcoalesce_bitcast_infect_sweep_fpgaunique_3_infect_sweep21_vt_join_q = {i_memcoalesce_bitcast_infect_sweep_fpgaunique_3_infect_sweep21_vt_select_63_b, i_firstperson_3_phi_trans_insert_infect_sweep20_vt_const_2_q};

    // i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x(BLACKBOX,183)@10
    // in in_i_stall@20000000
    // out out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_address@20000000
    // out out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_burstcount@20000000
    // out out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_byteenable@20000000
    // out out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_enable@20000000
    // out out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_read@20000000
    // out out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_write@20000000
    // out out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@12
    // out out_o_readdata_0_tpl@12
    // out out_o_readdata_1_tpl@12
    // out out_o_readdata_2_tpl@12
    infect_sweep_i_llvm_fpga_mem_memcoalesce0000ique_3_infect_sweep0 thei_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x (
        .in_flush(in_flush),
        .in_i_address(i_memcoalesce_bitcast_infect_sweep_fpgaunique_3_infect_sweep21_vt_join_q),
        .in_i_predicate(redist6_i_unnamed_infect_sweep12_q_5_1_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_V0),
        .in_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_readdata(in_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_readdata),
        .in_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_readdatavalid(in_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_readdatavalid),
        .in_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_waitrequest(in_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_waitrequest),
        .in_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_writeack(in_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_writeack),
        .out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_address(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_address),
        .out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_burstcount(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_burstcount),
        .out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_byteenable(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_byteenable),
        .out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_enable(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_enable),
        .out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_read(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_read),
        .out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_write(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_write),
        .out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_writedata(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_o_valid),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_o_readdata_0_tpl),
        .out_o_readdata_1_tpl(i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_o_readdata_1_tpl),
        .out_o_readdata_2_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist6_i_unnamed_infect_sweep12_q_5_1(STALLENABLE,599)
    // Valid signal propagation
    assign SE_redist6_i_unnamed_infect_sweep12_q_5_1_V0 = SE_redist6_i_unnamed_infect_sweep12_q_5_1_R_v_0;
    assign SE_redist6_i_unnamed_infect_sweep12_q_5_1_V1 = SE_redist6_i_unnamed_infect_sweep12_q_5_1_R_v_1;
    // Stall signal propagation
    assign SE_redist6_i_unnamed_infect_sweep12_q_5_1_s_tv_0 = SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_backStall & SE_redist6_i_unnamed_infect_sweep12_q_5_1_R_v_0;
    assign SE_redist6_i_unnamed_infect_sweep12_q_5_1_s_tv_1 = SR_SE_redist7_i_unnamed_infect_sweep12_q_7_0_backStall & SE_redist6_i_unnamed_infect_sweep12_q_5_1_R_v_1;
    // Backward Enable generation
    assign SE_redist6_i_unnamed_infect_sweep12_q_5_1_or0 = SE_redist6_i_unnamed_infect_sweep12_q_5_1_s_tv_0;
    assign SE_redist6_i_unnamed_infect_sweep12_q_5_1_backEN = ~ (SE_redist6_i_unnamed_infect_sweep12_q_5_1_s_tv_1 | SE_redist6_i_unnamed_infect_sweep12_q_5_1_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_unnamed_infect_sweep12_q_5_1_v_s_0 = SE_redist6_i_unnamed_infect_sweep12_q_5_1_backEN & SE_redist6_i_unnamed_infect_sweep12_q_5_0_V0;
    // Backward Stall generation
    assign SE_redist6_i_unnamed_infect_sweep12_q_5_1_backStall = ~ (SE_redist6_i_unnamed_infect_sweep12_q_5_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_unnamed_infect_sweep12_q_5_1_R_v_0 <= 1'b0;
            SE_redist6_i_unnamed_infect_sweep12_q_5_1_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_unnamed_infect_sweep12_q_5_1_backEN == 1'b0)
            begin
                SE_redist6_i_unnamed_infect_sweep12_q_5_1_R_v_0 <= SE_redist6_i_unnamed_infect_sweep12_q_5_1_R_v_0 & SE_redist6_i_unnamed_infect_sweep12_q_5_1_s_tv_0;
            end
            else
            begin
                SE_redist6_i_unnamed_infect_sweep12_q_5_1_R_v_0 <= SE_redist6_i_unnamed_infect_sweep12_q_5_1_v_s_0;
            end

            if (SE_redist6_i_unnamed_infect_sweep12_q_5_1_backEN == 1'b0)
            begin
                SE_redist6_i_unnamed_infect_sweep12_q_5_1_R_v_1 <= SE_redist6_i_unnamed_infect_sweep12_q_5_1_R_v_1 & SE_redist6_i_unnamed_infect_sweep12_q_5_1_s_tv_1;
            end
            else
            begin
                SE_redist6_i_unnamed_infect_sweep12_q_5_1_R_v_1 <= SE_redist6_i_unnamed_infect_sweep12_q_5_1_v_s_0;
            end

        end
    end

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_c_i64_82_x(CONSTANT,187)
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_c_i64_82_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000001000);

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_multconst_x(CONSTANT,195)
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_multconst_x_q = $unsigned(57'b000000000000000000000000000000000000000000000000000000000);

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_shift0(BITSHIFT,315)@7
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_shift0_qint = { i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_shift0_q = i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_shift0_qint[11:0];

    // bubble_join_i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13(BITJOIN,373)
    assign bubble_join_i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_q = i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13(BITSELECT,374)
    assign bubble_select_i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_b = $unsigned(bubble_join_i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_q[31:0]);

    // i_idxprom9_3_phi_trans_insert_infect_sweep14_sel_x(BITSELECT,181)@7
    assign i_idxprom9_3_phi_trans_insert_infect_sweep14_sel_x_b = $unsigned({{32{bubble_select_i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_b[31]}}, bubble_select_i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_b[31:0]});

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select(BITSELECT,328)@7
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_b = i_idxprom9_3_phi_trans_insert_infect_sweep14_sel_x_b[63:54];
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_c = i_idxprom9_3_phi_trans_insert_infect_sweep14_sel_x_b[53:36];
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_d = i_idxprom9_3_phi_trans_insert_infect_sweep14_sel_x_b[35:18];
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_e = i_idxprom9_3_phi_trans_insert_infect_sweep14_sel_x_b[17:0];

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_add_1(ADD,316)@7
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_add_1_a = {3'b000, i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_b};
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_add_1_b = {1'b0, i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_shift0_q};
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_add_1_o = $unsigned(i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_add_1_a) + $unsigned(i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_add_1_b);
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_add_1_q = i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_add_1_o[12:0];

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_shift2(BITSHIFT,317)@7
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_shift2_qint = { i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_add_1_q, 4'b0000 };
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_shift2_q = i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_shift2_qint[16:0];

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_align_3(BITSHIFT,256)@7
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_align_3_qint = { i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im0_shift2_q, 11'b00000000000 };
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_align_3_q = i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_align_3_qint[27:0];

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_shift0(BITSHIFT,321)@7
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_shift0_qint = { i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_shift0_q = i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_shift0_qint[19:0];

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_add_1(ADD,322)@7
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_add_1_a = {3'b000, i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_d};
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_add_1_b = {1'b0, i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_shift0_q};
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_add_1_o = $unsigned(i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_add_1_a) + $unsigned(i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_add_1_b);
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_add_1_q = i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_add_1_o[20:0];

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_shift2(BITSHIFT,323)@7
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_shift2_qint = { i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_add_1_q, 4'b0000 };
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_shift2_q = i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_shift2_qint[24:0];

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_align_2(BITSHIFT,255)@7
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_align_2_qint = { i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im6_shift2_q, 18'b000000000000000000 };
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_align_2_q = i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_align_2_qint[42:0];

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_join_4(BITJOIN,257)@7
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_join_4_q = {i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_align_3_q, i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_align_2_q};

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_shift0(BITSHIFT,318)@7
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_shift0_qint = { i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_shift0_q = i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_shift0_qint[19:0];

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_add_1(ADD,319)@7
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_add_1_a = {3'b000, i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_c};
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_add_1_b = {1'b0, i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_shift0_q};
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_add_1_o = $unsigned(i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_add_1_a) + $unsigned(i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_add_1_b);
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_add_1_q = i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_add_1_o[20:0];

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_shift2(BITSHIFT,320)@7
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_shift2_qint = { i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_add_1_q, 4'b0000 };
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_shift2_q = i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_shift2_qint[24:0];

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_align_0(BITSHIFT,253)@7
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_align_0_qint = { i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im3_shift2_q, 11'b00000000000 };
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_align_0_q = i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_align_0_qint[35:0];

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_shift0(BITSHIFT,324)@7
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_shift0_qint = { i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_shift0_q = i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_shift0_qint[19:0];

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_add_1(ADD,325)@7
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_add_1_a = {3'b000, i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_bs1_merged_bit_select_e};
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_add_1_b = {1'b0, i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_shift0_q};
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_add_1_o = $unsigned(i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_add_1_a) + $unsigned(i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_add_1_b);
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_add_1_q = i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_add_1_o[20:0];

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_shift2(BITSHIFT,326)@7
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_shift2_qint = { i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_add_1_q, 4'b0000 };
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_shift2_q = i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_shift2_qint[24:0];

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_join_1(BITJOIN,254)@7
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_join_1_q = {i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_align_0_q, i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_im9_shift2_q};

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0(ADD,258)@7
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_join_1_q};
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0_b = {1'b0, i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_join_4_q};
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0_o = $unsigned(i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0_a) + $unsigned(i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0_b);
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0_q = i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0_o[71:0];

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_extender_x(BITJOIN,194)@7
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_extender_x_q = {i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_multconst_x_q, i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_x_sums_result_add_0_0_q[70:0]};

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x(BITSELECT,196)@7
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b = i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_mult_extender_x_q[63:0];

    // redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0(REG,339)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_q <= $unsigned(i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b);
        end
    end

    // bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15(BITJOIN,391)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_q = i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15(BITSELECT,392)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_vt_select_63(BITSELECT,64)@8
    assign i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_vt_join(BITJOIN,63)@8
    assign i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_vt_join_q = {i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_vt_const_9_q};

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_add_x(ADD,185)@8
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_vt_join_q};
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_add_x_b = {1'b0, redist0_i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_trunc_sel_x_b_1_0_q};
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_add_x_o = $unsigned(i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_add_x_a) + $unsigned(i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_add_x_b);
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_add_x_q = i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_add_x_o[64:0];

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_dupName_0_trunc_sel_x(BITSELECT,197)@8
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_dupName_0_trunc_sel_x_b = i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_add_x_q[63:0];

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_dupName_0_add_x(ADD,191)@8
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_dupName_0_add_x_a = {1'b0, i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_dupName_0_trunc_sel_x_b};
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_dupName_0_add_x_b = {1'b0, i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_c_i64_82_x_q};
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_dupName_0_add_x_o = $unsigned(i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_dupName_0_add_x_a) + $unsigned(i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_dupName_0_add_x_b);
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_dupName_0_add_x_q = i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_dupName_0_add_x_o[64:0];

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_dupName_1_trunc_sel_x(BITSELECT,198)@8
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_dupName_1_trunc_sel_x_b = i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_dupName_0_add_x_q[63:0];

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep16_vt_select_63(BITSELECT,70)@8
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep16_vt_select_63_b = i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep0_dupName_1_trunc_sel_x_b[63:3];

    // i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep16_vt_join(BITJOIN,69)@8
    assign i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep16_vt_join_q = {i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep16_vt_select_63_b, i_firstperson_3_phi_trans_insert_infect_sweep20_vt_const_2_q};

    // i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17(BLACKBOX,48)@8
    // in in_i_stall@20000000
    // out out_o_readdata@10
    // out out_o_stall@20000000
    // out out_o_valid@10
    // out out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_address@20000000
    // out out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_burstcount@20000000
    // out out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_byteenable@20000000
    // out out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_enable@20000000
    // out out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_read@20000000
    // out out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_write@20000000
    // out out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_writedata@20000000
    infect_sweep_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_0 thei_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17 (
        .in_flush(in_flush),
        .in_i_address(i_si_sroa_3_0_sroa_idx48_3_phi_trans_insert_infect_sweep16_vt_join_q),
        .in_i_predicate(redist5_i_unnamed_infect_sweep12_q_3_2_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer22_infect_sweep15_V0),
        .in_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_readdata(in_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_readdata),
        .in_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_readdatavalid(in_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_readdatavalid),
        .in_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_waitrequest(in_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_waitrequest),
        .in_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_writeack(in_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_o_valid),
        .out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_address(i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_address),
        .out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_burstcount(i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_burstcount),
        .out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_byteenable(i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_byteenable),
        .out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_enable(i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_enable),
        .out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_read(i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_read),
        .out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_write(i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_write),
        .out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_writedata(i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17(STALLENABLE,442)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_V0 = SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_backStall = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_and0 = i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_and1 = i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19_out_valid_out & SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_and0;
    assign SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_wireValid = SE_redist6_i_unnamed_infect_sweep12_q_5_1_V0 & SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_and1;

    // i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19(BLACKBOX,57)@10
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_sync_buffer_p100000olds_sync_buffer29_0 thei_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19 (
        .in_buffer_in(in_Households),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_6_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_stall_entry_6(STALLENABLE,670)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_6_V0 = SE_out_bubble_out_stall_entry_6_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_6_backStall = i_llvm_fpga_sync_buffer_p1024s_struct_households_households_sync_buffer29_infect_sweep19_out_stall_out | ~ (SE_out_bubble_out_stall_entry_6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_6_wireValid = bubble_out_stall_entry_6_reg_valid_out;

    // bubble_out_stall_entry_6_reg(STALLFIFO,685)
    assign bubble_out_stall_entry_6_reg_valid_in = SE_stall_entry_V5;
    assign bubble_out_stall_entry_6_reg_stall_in = SE_out_bubble_out_stall_entry_6_backStall;
    assign bubble_out_stall_entry_6_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_6_reg_valid_in[0];
    assign bubble_out_stall_entry_6_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_6_reg_stall_in[0];
    assign bubble_out_stall_entry_6_reg_valid_out[0] = bubble_out_stall_entry_6_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_6_reg_stall_out[0] = bubble_out_stall_entry_6_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(11),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_6_reg (
        .valid_in(bubble_out_stall_entry_6_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_6_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_6_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_6_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_stall_entry_5_reg(STALLFIFO,684)
    assign bubble_out_stall_entry_5_reg_valid_in = SE_stall_entry_V4;
    assign bubble_out_stall_entry_5_reg_stall_in = SE_out_bubble_out_stall_entry_5_backStall;
    assign bubble_out_stall_entry_5_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_5_reg_valid_in[0];
    assign bubble_out_stall_entry_5_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_5_reg_stall_in[0];
    assign bubble_out_stall_entry_5_reg_valid_out[0] = bubble_out_stall_entry_5_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_5_reg_stall_out[0] = bubble_out_stall_entry_5_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_5_reg (
        .valid_in(bubble_out_stall_entry_5_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_5_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_5_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_5_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_stall_entry_4(STALLENABLE,666)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_4_V0 = SE_out_bubble_out_stall_entry_4_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_4_backStall = i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_out_stall_out | ~ (SE_out_bubble_out_stall_entry_4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_4_wireValid = bubble_out_stall_entry_4_reg_valid_out;

    // bubble_out_stall_entry_4_reg(STALLFIFO,683)
    assign bubble_out_stall_entry_4_reg_valid_in = SE_stall_entry_V3;
    assign bubble_out_stall_entry_4_reg_stall_in = SE_out_bubble_out_stall_entry_4_backStall;
    assign bubble_out_stall_entry_4_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_4_reg_valid_in[0];
    assign bubble_out_stall_entry_4_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_4_reg_stall_in[0];
    assign bubble_out_stall_entry_4_reg_valid_out[0] = bubble_out_stall_entry_4_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_4_reg_stall_out[0] = bubble_out_stall_entry_4_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_4_reg (
        .valid_in(bubble_out_stall_entry_4_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_4_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_4_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_4_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_stall_entry_3(STALLENABLE,664)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_3_V0 = SE_out_bubble_out_stall_entry_3_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_3_backStall = i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_out_stall_out | ~ (SE_out_bubble_out_stall_entry_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_3_wireValid = bubble_out_stall_entry_3_reg_valid_out;

    // bubble_out_stall_entry_3_reg(STALLFIFO,682)
    assign bubble_out_stall_entry_3_reg_valid_in = SE_stall_entry_V2;
    assign bubble_out_stall_entry_3_reg_stall_in = SE_out_bubble_out_stall_entry_3_backStall;
    assign bubble_out_stall_entry_3_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_3_reg_valid_in[0];
    assign bubble_out_stall_entry_3_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_3_reg_stall_in[0];
    assign bubble_out_stall_entry_3_reg_valid_out[0] = bubble_out_stall_entry_3_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_3_reg_stall_out[0] = bubble_out_stall_entry_3_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_3_reg (
        .valid_in(bubble_out_stall_entry_3_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_3_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_3_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_3_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_stall_entry_2_reg(STALLFIFO,681)
    assign bubble_out_stall_entry_2_reg_valid_in = SE_stall_entry_V1;
    assign bubble_out_stall_entry_2_reg_stall_in = SE_out_bubble_out_stall_entry_2_backStall;
    assign bubble_out_stall_entry_2_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_2_reg_valid_in[0];
    assign bubble_out_stall_entry_2_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_2_reg_stall_in[0];
    assign bubble_out_stall_entry_2_reg_valid_out[0] = bubble_out_stall_entry_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_2_reg_stall_out[0] = bubble_out_stall_entry_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(13),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_2_reg (
        .valid_in(bubble_out_stall_entry_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,470)
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
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (bubble_out_stall_entry_2_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (bubble_out_stall_entry_3_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (bubble_out_stall_entry_4_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    assign SE_stall_entry_consumed4 = (~ (bubble_out_stall_entry_5_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg4;
    assign SE_stall_entry_consumed5 = (~ (bubble_out_stall_entry_6_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg5;
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

    // i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0(BLACKBOX,38)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_dest_i32_index_018849_0 thei_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0(STALLENABLE,422)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_backStall = SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_wireValid = i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_out_valid_out;

    // SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0(STALLENABLE,593)
    // Valid signal propagation
    assign SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_V0 = SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_s_tv_0 = SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_backStall & SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_backEN = ~ (SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_v_s_0 = SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_V0;
    // Backward Stall generation
    assign SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_backStall = ~ (SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_R_v_0 <= SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_R_v_0 & SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_R_v_0 <= SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // c_i32_343(CONSTANT,6)
    assign c_i32_343_q = $unsigned(32'b00000000000000000000000000000011);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0(BITJOIN,361)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_q = i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0(BITSELECT,362)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_q[31:0]);

    // i_inc360_2_infect_sweep1(ADD,37)@0
    assign i_inc360_2_infect_sweep1_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_index_018849_infect_sweep0_b};
    assign i_inc360_2_infect_sweep1_b = {1'b0, c_i32_343_q};
    assign i_inc360_2_infect_sweep1_o = $unsigned(i_inc360_2_infect_sweep1_a) + $unsigned(i_inc360_2_infect_sweep1_b);
    assign i_inc360_2_infect_sweep1_q = i_inc360_2_infect_sweep1_o[32:0];

    // bgTrunc_i_inc360_2_infect_sweep1_sel_x(BITSELECT,130)@0
    assign bgTrunc_i_inc360_2_infect_sweep1_sel_x_b = i_inc360_2_infect_sweep1_q[31:0];

    // redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0(REG,342)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_inc360_2_infect_sweep1_sel_x_b);
        end
    end

    // i_idxprom_3_infect_sweep2_sel_x(BITSELECT,182)@1
    assign i_idxprom_3_infect_sweep2_sel_x_b = {32'b00000000000000000000000000000000, redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_q[31:0]};

    // i_idxprom_3_infect_sweep2_vt_select_31(BITSELECT,36)@1
    assign i_idxprom_3_infect_sweep2_vt_select_31_b = i_idxprom_3_infect_sweep2_sel_x_b[31:0];

    // i_idxprom_3_infect_sweep2_vt_join(BITJOIN,35)@1
    assign i_idxprom_3_infect_sweep2_vt_join_q = {i_idxprom_3_infect_sweep2_vt_const_63_q, i_idxprom_3_infect_sweep2_vt_select_31_b};

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select(BITSELECT,327)@1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_b = i_idxprom_3_infect_sweep2_vt_join_q[63:54];
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_c = i_idxprom_3_infect_sweep2_vt_join_q[53:36];
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_d = i_idxprom_3_infect_sweep2_vt_join_q[35:18];
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_e = i_idxprom_3_infect_sweep2_vt_join_q[17:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift2(BITSHIFT,289)@1
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift2_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_b, 5'b00000 };
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift2_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift2_qint[14:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_sub_3(SUB,290)@1
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_sub_3_a = {1'b0, i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift2_q};
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_sub_3_b = {6'b000000, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_b};
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_sub_3_o = $unsigned(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_sub_3_a) - $unsigned(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_sub_3_b);
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_sub_3_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_sub_3_o[15:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift4(BITSHIFT,291)@1
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift4_qint = { i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_sub_3_q, 5'b00000 };
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift4_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift4_qint[20:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift0(BITSHIFT,287)@1
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift0_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_b, 3'b000 };
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift0_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift0_qint[12:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_1(ADD,288)@1
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_1_a = {4'b0000, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_b};
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_1_b = {1'b0, i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift0_q};
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_1_o = $unsigned(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_1_a) + $unsigned(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_1_b);
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_1_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_1_o[13:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_5(ADD,292)@1 + 1
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_5_a = $unsigned({9'b000000000, i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_1_q});
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_5_b = $unsigned({{2{i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift4_q[20]}}, i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift4_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_5_o <= 23'b0;
        end
        else if (SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_backEN == 1'b1)
        begin
            i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_5_o <= $unsigned($signed(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_5_a) + $signed(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_5_b));
        end
    end
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_5_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_5_o[21:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift6(BITSHIFT,293)@2
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift6_qint = { i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_add_5_q, 2'b00 };
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift6_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift6_qint[23:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_align_3(BITSHIFT,238)@2
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_align_3_qint = { i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im0_shift6_q[21:0], 6'b000000 };
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_align_3_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_align_3_qint[27:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift2(BITSHIFT,303)@1
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift2_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_d, 5'b00000 };
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift2_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift2_qint[22:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_sub_3(SUB,304)@1
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_sub_3_a = {1'b0, i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift2_q};
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_sub_3_b = {6'b000000, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_d};
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_sub_3_o = $unsigned(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_sub_3_a) - $unsigned(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_sub_3_b);
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_sub_3_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_sub_3_o[23:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift4(BITSHIFT,305)@1
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift4_qint = { i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_sub_3_q, 5'b00000 };
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift4_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift4_qint[28:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift0(BITSHIFT,301)@1
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift0_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_d, 3'b000 };
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift0_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift0_qint[20:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_1(ADD,302)@1
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_1_a = {4'b0000, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_d};
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_1_b = {1'b0, i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift0_q};
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_1_o = $unsigned(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_1_a) + $unsigned(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_1_b);
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_1_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_1_o[21:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_5(ADD,306)@1 + 1
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_5_a = $unsigned({9'b000000000, i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_1_q});
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_5_b = $unsigned({{2{i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift4_q[28]}}, i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift4_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_5_o <= 31'b0;
        end
        else if (SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_backEN == 1'b1)
        begin
            i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_5_o <= $unsigned($signed(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_5_a) + $signed(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_5_b));
        end
    end
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_5_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_5_o[29:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift6(BITSHIFT,307)@2
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift6_qint = { i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_add_5_q, 2'b00 };
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift6_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift6_qint[31:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_align_2(BITSHIFT,237)@2
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_align_2_qint = { i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im6_shift6_q[29:0], 18'b000000000000000000 };
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_align_2_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_align_2_qint[47:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_join_4(BITJOIN,239)@2
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_join_4_q = {i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_align_3_q, i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_align_2_q};

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift2(BITSHIFT,296)@1
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift2_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_c, 5'b00000 };
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift2_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift2_qint[22:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_sub_3(SUB,297)@1
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_sub_3_a = {1'b0, i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift2_q};
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_sub_3_b = {6'b000000, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_c};
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_sub_3_o = $unsigned(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_sub_3_a) - $unsigned(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_sub_3_b);
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_sub_3_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_sub_3_o[23:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift4(BITSHIFT,298)@1
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift4_qint = { i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_sub_3_q, 5'b00000 };
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift4_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift4_qint[28:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift0(BITSHIFT,294)@1
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift0_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_c, 3'b000 };
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift0_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift0_qint[20:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_1(ADD,295)@1
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_1_a = {4'b0000, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_c};
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_1_b = {1'b0, i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift0_q};
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_1_o = $unsigned(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_1_a) + $unsigned(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_1_b);
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_1_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_1_o[21:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_5(ADD,299)@1 + 1
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_5_a = $unsigned({9'b000000000, i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_1_q});
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_5_b = $unsigned({{2{i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift4_q[28]}}, i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift4_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_5_o <= 31'b0;
        end
        else if (SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_backEN == 1'b1)
        begin
            i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_5_o <= $unsigned($signed(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_5_a) + $signed(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_5_b));
        end
    end
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_5_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_5_o[29:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift6(BITSHIFT,300)@2
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift6_qint = { i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_add_5_q, 2'b00 };
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift6_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift6_qint[31:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_align_0(BITSHIFT,235)@2
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_align_0_qint = { i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im3_shift6_q[29:0], 6'b000000 };
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_align_0_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_align_0_qint[35:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift2(BITSHIFT,310)@1
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift2_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_e, 5'b00000 };
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift2_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift2_qint[22:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_sub_3(SUB,311)@1
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_sub_3_a = {1'b0, i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift2_q};
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_sub_3_b = {6'b000000, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_e};
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_sub_3_o = $unsigned(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_sub_3_a) - $unsigned(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_sub_3_b);
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_sub_3_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_sub_3_o[23:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift4(BITSHIFT,312)@1
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift4_qint = { i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_sub_3_q, 5'b00000 };
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift4_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift4_qint[28:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift0(BITSHIFT,308)@1
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift0_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_e, 3'b000 };
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift0_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift0_qint[20:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_1(ADD,309)@1
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_1_a = {4'b0000, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_e};
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_1_b = {1'b0, i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift0_q};
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_1_o = $unsigned(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_1_a) + $unsigned(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_1_b);
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_1_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_1_o[21:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_5(ADD,313)@1 + 1
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_5_a = $unsigned({9'b000000000, i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_1_q});
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_5_b = $unsigned({{2{i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift4_q[28]}}, i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift4_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_5_o <= 31'b0;
        end
        else if (SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_backEN == 1'b1)
        begin
            i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_5_o <= $unsigned($signed(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_5_a) + $signed(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_5_b));
        end
    end
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_5_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_5_o[29:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift6(BITSHIFT,314)@2
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift6_qint = { i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_add_5_q, 2'b00 };
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift6_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift6_qint[31:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_join_1(BITJOIN,236)@2
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_join_1_q = {i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_align_0_q, i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_im9_shift6_q[29:0]};

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_result_add_0_0(ADD,240)@2
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_join_1_q};
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_result_add_0_0_b = {1'b0, i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_join_4_q};
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_result_add_0_0_o = $unsigned(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_result_add_0_0_a) + $unsigned(i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_result_add_0_0_b);
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_result_add_0_0_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_result_add_0_0_o[76:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_extender_x(BITJOIN,168)@2
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_extender_x_q = {i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_multconst_x_q, i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_x_sums_result_add_0_0_q[75:0]};

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x(BITSELECT,170)@2
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b = i_c_sroa_20_0_sroa_idx239_infect_sweep0_mult_extender_x_q[63:0];

    // redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0(REG,340)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_q <= $unsigned(i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b);
        end
    end

    // bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10(BITJOIN,382)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_q = i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10(BITSELECT,383)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_vt_select_63(BITSELECT,52)@3
    assign i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_vt_join(BITJOIN,51)@3
    assign i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_vt_join_q = {i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_vt_const_9_q};

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_add_x(ADD,159)@3
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_vt_join_q};
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_add_x_b = {1'b0, redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_q};
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_add_x_o = $unsigned(i_c_sroa_20_0_sroa_idx239_infect_sweep0_add_x_a) + $unsigned(i_c_sroa_20_0_sroa_idx239_infect_sweep0_add_x_b);
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_add_x_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_add_x_o[64:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_dupName_0_trunc_sel_x(BITSELECT,171)@3
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_dupName_0_trunc_sel_x_b = i_c_sroa_20_0_sroa_idx239_infect_sweep0_add_x_q[63:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_dupName_0_add_x(ADD,165)@3
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_dupName_0_add_x_a = {1'b0, i_c_sroa_20_0_sroa_idx239_infect_sweep0_dupName_0_trunc_sel_x_b};
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_dupName_0_add_x_b = {1'b0, i_c_sroa_20_0_sroa_idx239_infect_sweep0_c_i64_42_x_q};
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_dupName_0_add_x_o = $unsigned(i_c_sroa_20_0_sroa_idx239_infect_sweep0_dupName_0_add_x_a) + $unsigned(i_c_sroa_20_0_sroa_idx239_infect_sweep0_dupName_0_add_x_b);
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_dupName_0_add_x_q = i_c_sroa_20_0_sroa_idx239_infect_sweep0_dupName_0_add_x_o[64:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep0_dupName_1_trunc_sel_x(BITSELECT,172)@3
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep0_dupName_1_trunc_sel_x_b = i_c_sroa_20_0_sroa_idx239_infect_sweep0_dupName_0_add_x_q[63:0];

    // i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63(BITSELECT,17)@3
    assign i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b = i_c_sroa_20_0_sroa_idx239_infect_sweep0_dupName_1_trunc_sel_x_b[63:2];

    // redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0(REG,358)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_q <= $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_backEN == 1'b1)
        begin
            redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_q <= $unsigned(i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b);
        end
    end

    // SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1(STALLENABLE,610)
    // Valid signal propagation
    assign SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_V0 = SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_R_v_0;
    // Stall signal propagation
    assign SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_s_tv_0 = SE_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_join_backStall & SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_R_v_0;
    // Backward Enable generation
    assign SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_backEN = ~ (SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_v_s_0 = SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_backEN & SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_V;
    // Backward Stall generation
    assign SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_backStall = ~ (SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_backEN == 1'b0)
            begin
                SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_R_v_0 <= SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_R_v_0 & SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_s_tv_0;
            end
            else
            begin
                SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_R_v_0 <= SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_v_s_0;
            end

        end
    end

    // SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1(STALLREG,686)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_r_valid <= 1'b0;
            SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_r_data0 <= 62'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_r_valid <= SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_backStall & (SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_r_valid | SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_i_valid);

            if (SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_r_data0 <= $unsigned(redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_i_valid = SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_V0;
    // Stall signal propagation
    assign SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_backStall = SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_r_valid | ~ (SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_i_valid);

    // Valid
    assign SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_V = SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_r_valid == 1'b1 ? SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_r_valid : SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_i_valid;

    assign SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_D0 = SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_r_valid == 1'b1 ? SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_r_data0 : redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_q;

    // SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0(STALLENABLE,609)
    // Valid signal propagation
    assign SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_V0 = SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_s_tv_0 = SR_SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_1_backStall & SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_backEN = ~ (SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_v_s_0 = SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_backEN & SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_V0;
    // Backward Stall generation
    assign SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_backStall = ~ (SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_backEN == 1'b0)
            begin
                SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_R_v_0 <= SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_R_v_0 & SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_s_tv_0;
            end
            else
            begin
                SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_R_v_0 <= SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10(BLACKBOX,49)@3
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_sync_buffer_p100000okup_sync_buffer12_0 thei_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10 (
        .in_buffer_in(in_CellLookup),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_4_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10(STALLENABLE,444)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_V0 = SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_backStall = SE_redist9_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_select_63_b_2_0_backStall | ~ (SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_and0 = i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_wireValid = SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_V0 & SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_and0;

    // SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5(STALLENABLE,525)
    // Valid signal propagation
    assign SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_V0 = SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_R_v_0;
    // Stall signal propagation
    assign SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_s_tv_0 = SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_backStall & SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_R_v_0;
    // Backward Enable generation
    assign SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_backEN = ~ (SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_v_s_0 = SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_backEN & SE_redist3_bgTrunc_i_inc360_2_infect_sweep1_sel_x_b_1_0_V0;
    // Backward Stall generation
    assign SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_backStall = ~ (SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_backEN == 1'b0)
            begin
                SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_R_v_0 <= SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_R_v_0 & SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_s_tv_0;
            end
            else
            begin
                SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_R_v_0 <= SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_v_s_0;
            end

        end
    end

    // SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0(STALLENABLE,591)
    // Valid signal propagation
    assign SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_V0 = SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_R_v_0;
    assign SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_V1 = SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_backStall & SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_R_v_0;
    assign SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_s_tv_1 = SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_backStall & SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_or0 = SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_s_tv_0;
    assign SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_backEN = ~ (SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_s_tv_1 | SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_v_s_0 = SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_backEN & SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_V0;
    // Backward Stall generation
    assign SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_backStall = ~ (SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_R_v_0 & SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_R_v_1 <= SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_R_v_1 & SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_R_v_1 <= SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3(BLACKBOX,53)@3
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_sync_buffer_p100000okup_sync_buffer13_0 thei_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3 (
        .in_buffer_in(in_CellLookup),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_3_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3(STALLENABLE,448)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_V0 = SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_backStall = i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_and0 = i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_wireValid = SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_V1 & SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_and0;

    // SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x(STALLENABLE,495)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_fromReg0 <= SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_fromReg1 <= SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_consumed0 = (~ (SE_i_c_sroa_20_0_sroa_idx239_infect_sweep11_vt_join_backStall) & SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_fromReg0;
    assign SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_consumed1 = (~ (SE_redist5_i_unnamed_infect_sweep12_q_3_0_backStall) & SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_StallValid = SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_backStall & SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_wireValid;
    assign SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_toReg0 = SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_StallValid & SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_toReg1 = SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_StallValid & SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_or0 = SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_wireStall = ~ (SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_consumed1 & SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_or0);
    assign SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_backStall = SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_V0 = SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_fromReg0);
    assign SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_V1 = SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_wireValid = i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift2(BITSHIFT,261)@1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift2_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_b, 5'b00000 };
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift2_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift2_qint[14:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_sub_3(SUB,262)@1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_sub_3_a = {1'b0, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift2_q};
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_sub_3_b = {6'b000000, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_b};
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_sub_3_o = $unsigned(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_sub_3_a) - $unsigned(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_sub_3_b);
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_sub_3_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_sub_3_o[15:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift4(BITSHIFT,263)@1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift4_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_sub_3_q, 5'b00000 };
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift4_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift4_qint[20:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift0(BITSHIFT,259)@1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift0_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_b, 3'b000 };
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift0_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift0_qint[12:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_1(ADD,260)@1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_1_a = {4'b0000, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_b};
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_1_b = {1'b0, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift0_q};
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_1_o = $unsigned(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_1_a) + $unsigned(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_1_b);
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_1_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_1_o[13:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5(ADD,264)@1 + 1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_a = $unsigned({9'b000000000, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_1_q});
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_b = $unsigned({{2{i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift4_q[20]}}, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift4_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_o <= 23'b0;
        end
        else if (SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_backEN == 1'b1)
        begin
            i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_o <= $unsigned($signed(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_a) + $signed(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_b));
        end
    end
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_o[21:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift6(BITSHIFT,265)@2
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift6_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_q, 2'b00 };
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift6_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift6_qint[23:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_align_3(BITSHIFT,220)@2
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_align_3_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_shift6_q[21:0], 6'b000000 };
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_align_3_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_align_3_qint[27:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift2(BITSHIFT,275)@1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift2_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_d, 5'b00000 };
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift2_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift2_qint[22:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_sub_3(SUB,276)@1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_sub_3_a = {1'b0, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift2_q};
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_sub_3_b = {6'b000000, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_d};
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_sub_3_o = $unsigned(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_sub_3_a) - $unsigned(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_sub_3_b);
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_sub_3_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_sub_3_o[23:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift4(BITSHIFT,277)@1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift4_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_sub_3_q, 5'b00000 };
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift4_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift4_qint[28:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift0(BITSHIFT,273)@1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift0_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_d, 3'b000 };
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift0_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift0_qint[20:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_1(ADD,274)@1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_1_a = {4'b0000, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_d};
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_1_b = {1'b0, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift0_q};
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_1_o = $unsigned(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_1_a) + $unsigned(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_1_b);
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_1_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_1_o[21:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_5(ADD,278)@1 + 1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_5_a = $unsigned({9'b000000000, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_1_q});
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_5_b = $unsigned({{2{i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift4_q[28]}}, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift4_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_5_o <= 31'b0;
        end
        else if (SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_backEN == 1'b1)
        begin
            i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_5_o <= $unsigned($signed(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_5_a) + $signed(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_5_b));
        end
    end
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_5_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_5_o[29:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift6(BITSHIFT,279)@2
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift6_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_add_5_q, 2'b00 };
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift6_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift6_qint[31:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_align_2(BITSHIFT,219)@2
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_align_2_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im6_shift6_q[29:0], 18'b000000000000000000 };
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_align_2_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_align_2_qint[47:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_join_4(BITJOIN,221)@2
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_join_4_q = {i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_align_3_q, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_align_2_q};

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift2(BITSHIFT,268)@1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift2_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_c, 5'b00000 };
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift2_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift2_qint[22:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_sub_3(SUB,269)@1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_sub_3_a = {1'b0, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift2_q};
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_sub_3_b = {6'b000000, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_c};
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_sub_3_o = $unsigned(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_sub_3_a) - $unsigned(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_sub_3_b);
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_sub_3_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_sub_3_o[23:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift4(BITSHIFT,270)@1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift4_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_sub_3_q, 5'b00000 };
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift4_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift4_qint[28:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift0(BITSHIFT,266)@1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift0_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_c, 3'b000 };
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift0_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift0_qint[20:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_1(ADD,267)@1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_1_a = {4'b0000, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_c};
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_1_b = {1'b0, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift0_q};
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_1_o = $unsigned(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_1_a) + $unsigned(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_1_b);
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_1_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_1_o[21:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_5(ADD,271)@1 + 1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_5_a = $unsigned({9'b000000000, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_1_q});
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_5_b = $unsigned({{2{i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift4_q[28]}}, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift4_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_5_o <= 31'b0;
        end
        else if (SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_backEN == 1'b1)
        begin
            i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_5_o <= $unsigned($signed(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_5_a) + $signed(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_5_b));
        end
    end
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_5_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_5_o[29:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift6(BITSHIFT,272)@2
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift6_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_add_5_q, 2'b00 };
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift6_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift6_qint[31:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_align_0(BITSHIFT,217)@2
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_align_0_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im3_shift6_q[29:0], 6'b000000 };
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_align_0_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_align_0_qint[35:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift2(BITSHIFT,282)@1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift2_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_e, 5'b00000 };
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift2_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift2_qint[22:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_sub_3(SUB,283)@1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_sub_3_a = {1'b0, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift2_q};
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_sub_3_b = {6'b000000, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_e};
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_sub_3_o = $unsigned(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_sub_3_a) - $unsigned(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_sub_3_b);
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_sub_3_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_sub_3_o[23:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift4(BITSHIFT,284)@1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift4_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_sub_3_q, 5'b00000 };
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift4_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift4_qint[28:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift0(BITSHIFT,280)@1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift0_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_e, 3'b000 };
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift0_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift0_qint[20:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_1(ADD,281)@1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_1_a = {4'b0000, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_bs1_merged_bit_select_e};
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_1_b = {1'b0, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift0_q};
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_1_o = $unsigned(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_1_a) + $unsigned(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_1_b);
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_1_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_1_o[21:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_5(ADD,285)@1 + 1
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_5_a = $unsigned({9'b000000000, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_1_q});
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_5_b = $unsigned({{2{i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift4_q[28]}}, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift4_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_5_o <= 31'b0;
        end
        else if (SE_i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im0_add_5_backEN == 1'b1)
        begin
            i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_5_o <= $unsigned($signed(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_5_a) + $signed(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_5_b));
        end
    end
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_5_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_5_o[29:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift6(BITSHIFT,286)@2
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift6_qint = { i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_add_5_q, 2'b00 };
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift6_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift6_qint[31:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_join_1(BITJOIN,218)@2
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_join_1_q = {i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_align_0_q, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_im9_shift6_q[29:0]};

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_result_add_0_0(ADD,222)@2
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_join_1_q};
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_result_add_0_0_b = {1'b0, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_join_4_q};
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_result_add_0_0_o = $unsigned(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_result_add_0_0_a) + $unsigned(i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_result_add_0_0_b);
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_result_add_0_0_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_result_add_0_0_o[76:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_extender_x(BITJOIN,155)@2
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_extender_x_q = {i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_multconst_x_q, i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_x_sums_result_add_0_0_q[75:0]};

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_trunc_sel_x(BITSELECT,157)@2
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_trunc_sel_x_b = i_c_sroa_0_0_sroa_idx221_infect_sweep0_mult_extender_x_q[63:0];

    // redist2_i_c_sroa_0_0_sroa_idx221_infect_sweep0_trunc_sel_x_b_1_0(REG,341)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_c_sroa_0_0_sroa_idx221_infect_sweep0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist1_i_c_sroa_20_0_sroa_idx239_infect_sweep0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist2_i_c_sroa_0_0_sroa_idx221_infect_sweep0_trunc_sel_x_b_1_0_q <= $unsigned(i_c_sroa_0_0_sroa_idx221_infect_sweep0_trunc_sel_x_b);
        end
    end

    // bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3(BITJOIN,385)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_q = i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3(BITSELECT,386)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_vt_select_63(BITSELECT,56)@3
    assign i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_vt_join(BITJOIN,55)@3
    assign i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_vt_join_q = {i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer12_infect_sweep10_vt_const_9_q};

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_add_x(ADD,149)@3
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_vt_join_q};
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_add_x_b = {1'b0, redist2_i_c_sroa_0_0_sroa_idx221_infect_sweep0_trunc_sel_x_b_1_0_q};
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_add_x_o = $unsigned(i_c_sroa_0_0_sroa_idx221_infect_sweep0_add_x_a) + $unsigned(i_c_sroa_0_0_sroa_idx221_infect_sweep0_add_x_b);
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_add_x_q = i_c_sroa_0_0_sroa_idx221_infect_sweep0_add_x_o[64:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep0_dupName_0_trunc_sel_x(BITSELECT,158)@3
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep0_dupName_0_trunc_sel_x_b = i_c_sroa_0_0_sroa_idx221_infect_sweep0_add_x_q[63:0];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep4_vt_select_63(BITSELECT,14)@3
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep4_vt_select_63_b = i_c_sroa_0_0_sroa_idx221_infect_sweep0_dupName_0_trunc_sel_x_b[63:2];

    // i_c_sroa_0_0_sroa_idx221_infect_sweep4_vt_join(BITJOIN,13)@3
    assign i_c_sroa_0_0_sroa_idx221_infect_sweep4_vt_join_q = {i_c_sroa_0_0_sroa_idx221_infect_sweep4_vt_select_63_b, i_c_sroa_0_0_sroa_idx221_infect_sweep4_vt_const_1_q};

    // i_unnamed_infect_sweep5_vt_select_63(BITSELECT,78)@3
    assign i_unnamed_infect_sweep5_vt_select_63_b = i_c_sroa_0_0_sroa_idx221_infect_sweep4_vt_join_q[63:2];

    // i_unnamed_infect_sweep5_vt_join(BITJOIN,77)@3
    assign i_unnamed_infect_sweep5_vt_join_q = {i_unnamed_infect_sweep5_vt_select_63_b, i_c_sroa_0_0_sroa_idx221_infect_sweep4_vt_const_1_q};

    // i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x(BLACKBOX,184)@3
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_unmaskedload185_infect_sweep_avm_address@20000000
    // out out_unmaskedload185_infect_sweep_avm_burstcount@20000000
    // out out_unmaskedload185_infect_sweep_avm_byteenable@20000000
    // out out_unmaskedload185_infect_sweep_avm_enable@20000000
    // out out_unmaskedload185_infect_sweep_avm_read@20000000
    // out out_unmaskedload185_infect_sweep_avm_write@20000000
    // out out_unmaskedload185_infect_sweep_avm_writedata@20000000
    // out out_o_readdata_0_tpl@5
    infect_sweep_i_llvm_fpga_mem_unmaskedload185_0 thei_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x (
        .in_flush(in_flush),
        .in_i_address(i_unnamed_infect_sweep5_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_cells_celllookup_sync_buffer13_infect_sweep3_V0),
        .in_unmaskedload185_infect_sweep_avm_readdata(in_unmaskedload185_infect_sweep_avm_readdata),
        .in_unmaskedload185_infect_sweep_avm_readdatavalid(in_unmaskedload185_infect_sweep_avm_readdatavalid),
        .in_unmaskedload185_infect_sweep_avm_waitrequest(in_unmaskedload185_infect_sweep_avm_waitrequest),
        .in_unmaskedload185_infect_sweep_avm_writeack(in_unmaskedload185_infect_sweep_avm_writeack),
        .out_o_stall(i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_o_valid),
        .out_unmaskedload185_infect_sweep_avm_address(i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_unmaskedload185_infect_sweep_avm_address),
        .out_unmaskedload185_infect_sweep_avm_burstcount(i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_unmaskedload185_infect_sweep_avm_burstcount),
        .out_unmaskedload185_infect_sweep_avm_byteenable(i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_unmaskedload185_infect_sweep_avm_byteenable),
        .out_unmaskedload185_infect_sweep_avm_enable(i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_unmaskedload185_infect_sweep_avm_enable),
        .out_unmaskedload185_infect_sweep_avm_read(i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_unmaskedload185_infect_sweep_avm_read),
        .out_unmaskedload185_infect_sweep_avm_write(i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_unmaskedload185_infect_sweep_avm_write),
        .out_unmaskedload185_infect_sweep_avm_writedata(i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_unmaskedload185_infect_sweep_avm_writedata),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_o_readdata_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,10)
    assign out_unmaskedload185_infect_sweep_avm_address = i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_unmaskedload185_infect_sweep_avm_address;
    assign out_unmaskedload185_infect_sweep_avm_enable = i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_unmaskedload185_infect_sweep_avm_enable;
    assign out_unmaskedload185_infect_sweep_avm_read = i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_unmaskedload185_infect_sweep_avm_read;
    assign out_unmaskedload185_infect_sweep_avm_write = i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_unmaskedload185_infect_sweep_avm_write;
    assign out_unmaskedload185_infect_sweep_avm_writedata = i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_unmaskedload185_infect_sweep_avm_writedata;
    assign out_unmaskedload185_infect_sweep_avm_byteenable = i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_unmaskedload185_infect_sweep_avm_byteenable;
    assign out_unmaskedload185_infect_sweep_avm_burstcount = i_llvm_fpga_mem_unmaskedload185_infect_sweep6_vunroll_x_out_unmaskedload185_infect_sweep_avm_burstcount;

    // regfree_osync(GPOUT,123)
    assign out_intel_reserved_ffwd_29_0 = i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep51_infect_sweep37_out_intel_reserved_ffwd_29_0;

    // sync_out(GPOUT,127)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,134)
    assign out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_address = i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_address;
    assign out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_enable = i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_enable;
    assign out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_read = i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_read;
    assign out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_write = i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_write;
    assign out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_writedata = i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_writedata;
    assign out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_byteenable = i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_byteenable;
    assign out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_burstcount = i_llvm_fpga_mem_c_sroa_20_0_copyload240_lm_infect_sweep13_out_c_sroa_20_0_copyload240_lm_infect_sweep_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,136)
    assign out_intel_reserved_ffwd_30_0 = i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_out_intel_reserved_ffwd_30_0;

    // dupName_0_sync_out_x(GPOUT,137)@14
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep52_infect_sweep38_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,140)
    assign out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_address = i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_address;
    assign out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_enable = i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_enable;
    assign out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_read = i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_read;
    assign out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_write = i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_write;
    assign out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_writedata = i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_writedata;
    assign out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_byteenable = i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_byteenable;
    assign out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_burstcount = i_llvm_fpga_mem_si_sroa_3_0_copyload_3_pre_lm_infect_sweep17_out_si_sroa_3_0_copyload_3_pre_lm_infect_sweep_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,141)
    assign out_intel_reserved_ffwd_31_0 = i_llvm_fpga_ffwd_source_i32_unnamed_infect_sweep53_infect_sweep39_out_intel_reserved_ffwd_31_0;

    // dupName_2_ext_sig_sync_out_x(GPOUT,143)
    assign out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_address = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_address;
    assign out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_enable = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_enable;
    assign out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_read = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_read;
    assign out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_write = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_write;
    assign out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_writedata = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_writedata;
    assign out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_byteenable = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_byteenable;
    assign out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_burstcount = i_llvm_fpga_mem_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep22_aunroll_x_out_memcoalesce_load_infect_sweep_fpgaunique_3_infect_sweep_avm_burstcount;

    // dupName_2_regfree_osync_x(GPOUT,144)
    assign out_intel_reserved_ffwd_32_0 = i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep54_infect_sweep40_out_intel_reserved_ffwd_32_0;

    // dupName_3_ext_sig_sync_out_x(GPOUT,146)
    assign out_lm132_infect_sweep_avm_address = i_llvm_fpga_mem_lm132_infect_sweep30_out_lm132_infect_sweep_avm_address;
    assign out_lm132_infect_sweep_avm_enable = i_llvm_fpga_mem_lm132_infect_sweep30_out_lm132_infect_sweep_avm_enable;
    assign out_lm132_infect_sweep_avm_read = i_llvm_fpga_mem_lm132_infect_sweep30_out_lm132_infect_sweep_avm_read;
    assign out_lm132_infect_sweep_avm_write = i_llvm_fpga_mem_lm132_infect_sweep30_out_lm132_infect_sweep_avm_write;
    assign out_lm132_infect_sweep_avm_writedata = i_llvm_fpga_mem_lm132_infect_sweep30_out_lm132_infect_sweep_avm_writedata;
    assign out_lm132_infect_sweep_avm_byteenable = i_llvm_fpga_mem_lm132_infect_sweep30_out_lm132_infect_sweep_avm_byteenable;
    assign out_lm132_infect_sweep_avm_burstcount = i_llvm_fpga_mem_lm132_infect_sweep30_out_lm132_infect_sweep_avm_burstcount;

    // dupName_3_regfree_osync_x(GPOUT,147)
    assign out_intel_reserved_ffwd_33_0 = i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep55_infect_sweep41_out_intel_reserved_ffwd_33_0;

    // dupName_4_regfree_osync_x(GPOUT,148)
    assign out_intel_reserved_ffwd_34_0 = i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep56_infect_sweep42_out_intel_reserved_ffwd_34_0;

endmodule
