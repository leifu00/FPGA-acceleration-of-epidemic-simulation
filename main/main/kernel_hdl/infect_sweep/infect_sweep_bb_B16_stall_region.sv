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

// SystemVerilog created from infect_sweep_bb_B16_stall_region
// SystemVerilog created on Tue Nov 24 22:05:07 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module infect_sweep_bb_B16_stall_region (
    input wire [511:0] in_lm145_infect_sweep_avm_readdata,
    input wire [0:0] in_lm145_infect_sweep_avm_writeack,
    input wire [0:0] in_lm145_infect_sweep_avm_waitrequest,
    input wire [0:0] in_lm145_infect_sweep_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_Hosts,
    input wire [63:0] in_Places,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_31_0,
    input wire [0:0] in_intel_reserved_ffwd_33_0,
    input wire [0:0] in_intel_reserved_ffwd_34_0,
    input wire [63:0] in_intel_reserved_ffwd_35_0,
    output wire [0:0] out_intel_reserved_ffwd_37_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked93,
    input wire [31:0] in_inc198_3179,
    input wire [0:0] in_valid_in,
    input wire [511:0] in_lm21_infect_sweep_avm_readdata,
    input wire [0:0] in_lm21_infect_sweep_avm_writeack,
    input wire [0:0] in_lm21_infect_sweep_avm_waitrequest,
    input wire [0:0] in_lm21_infect_sweep_avm_readdatavalid,
    output wire [30:0] out_lm145_infect_sweep_avm_address,
    output wire [0:0] out_lm145_infect_sweep_avm_enable,
    output wire [0:0] out_lm145_infect_sweep_avm_read,
    output wire [0:0] out_lm145_infect_sweep_avm_write,
    output wire [511:0] out_lm145_infect_sweep_avm_writedata,
    output wire [63:0] out_lm145_infect_sweep_avm_byteenable,
    output wire [4:0] out_lm145_infect_sweep_avm_burstcount,
    output wire [31:0] out_c0_exe1212,
    output wire [0:0] out_masked105,
    output wire [0:0] out_valid_out,
    input wire [511:0] in_lm24_infect_sweep_avm_readdata,
    input wire [0:0] in_lm24_infect_sweep_avm_writeack,
    input wire [0:0] in_lm24_infect_sweep_avm_waitrequest,
    input wire [0:0] in_lm24_infect_sweep_avm_readdatavalid,
    output wire [30:0] out_lm21_infect_sweep_avm_address,
    output wire [0:0] out_lm21_infect_sweep_avm_enable,
    output wire [0:0] out_lm21_infect_sweep_avm_read,
    output wire [0:0] out_lm21_infect_sweep_avm_write,
    output wire [511:0] out_lm21_infect_sweep_avm_writedata,
    output wire [63:0] out_lm21_infect_sweep_avm_byteenable,
    output wire [4:0] out_lm21_infect_sweep_avm_burstcount,
    output wire [30:0] out_lm24_infect_sweep_avm_address,
    output wire [0:0] out_lm24_infect_sweep_avm_enable,
    output wire [0:0] out_lm24_infect_sweep_avm_read,
    output wire [0:0] out_lm24_infect_sweep_avm_write,
    output wire [511:0] out_lm24_infect_sweep_avm_writedata,
    output wire [63:0] out_lm24_infect_sweep_avm_byteenable,
    output wire [4:0] out_lm24_infect_sweep_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [15:0] c_i16_1064_q;
    wire [15:0] c_i16_1163_q;
    wire [16:0] c_i17_6553555_q;
    wire [31:0] c_i32_056_q;
    wire [31:0] c_i32_160_q;
    wire [0:0] i_acl_19_infect_sweep42_q;
    wire [32:0] i_add177_3_infect_sweep34_a;
    wire [32:0] i_add177_3_infect_sweep34_b;
    logic [32:0] i_add177_3_infect_sweep34_o;
    wire [32:0] i_add177_3_infect_sweep34_q;
    wire [1:0] i_arrayidx168_3_infect_sweep25_vt_const_1_q;
    wire [63:0] i_arrayidx168_3_infect_sweep25_vt_join_q;
    wire [61:0] i_arrayidx168_3_infect_sweep25_vt_select_63_b;
    wire [16:0] i_cleanups_shl100_infect_sweep14_vt_join_q;
    wire [15:0] i_cleanups_shl100_infect_sweep14_vt_select_16_b;
    wire [63:0] i_close_end_time_3_infect_sweep37_vt_join_q;
    wire [62:0] i_close_end_time_3_infect_sweep37_vt_select_63_b;
    wire [63:0] i_close_start_time_3_infect_sweep36_vt_join_q;
    wire [62:0] i_close_start_time_3_infect_sweep36_vt_select_63_b;
    wire [33:0] i_cmp157_3_infect_sweep28_a;
    wire [33:0] i_cmp157_3_infect_sweep28_b;
    logic [33:0] i_cmp157_3_infect_sweep28_o;
    wire [0:0] i_cmp157_3_infect_sweep28_c;
    wire [33:0] i_cmp169_3_infect_sweep32_a;
    wire [33:0] i_cmp169_3_infect_sweep32_b;
    logic [33:0] i_cmp169_3_infect_sweep32_o;
    wire [0:0] i_cmp169_3_infect_sweep32_c;
    wire [17:0] i_cmp181_3_infect_sweep40_a;
    wire [17:0] i_cmp181_3_infect_sweep40_b;
    logic [17:0] i_cmp181_3_infect_sweep40_o;
    wire [0:0] i_cmp181_3_infect_sweep40_c;
    wire [17:0] i_cmp194_3_infect_sweep41_a;
    wire [17:0] i_cmp194_3_infect_sweep41_b;
    logic [17:0] i_cmp194_3_infect_sweep41_o;
    wire [0:0] i_cmp194_3_infect_sweep41_c;
    wire [63:0] i_idxprom167_3_infect_sweep19_vt_join_q;
    wire [31:0] i_idxprom167_3_infect_sweep19_vt_select_31_b;
    wire [32:0] i_inc_3_infect_sweep21_a;
    wire [32:0] i_inc_3_infect_sweep21_b;
    logic [32:0] i_inc_3_infect_sweep21_o;
    wire [32:0] i_inc_3_infect_sweep21_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep59_infect_sweep2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep59_infect_sweep2_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep60_infect_sweep4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep60_infect_sweep4_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep61_infect_sweep6_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep61_infect_sweep6_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_out_dest_data_out_33_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_out_dest_data_out_31_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_out_dest_data_out_35_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45_out_intel_reserved_ffwd_37_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45_out_valid_out;
    wire [30:0] i_llvm_fpga_mem_lm145_infect_sweep31_out_lm145_infect_sweep_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm145_infect_sweep31_out_lm145_infect_sweep_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm145_infect_sweep31_out_lm145_infect_sweep_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm145_infect_sweep31_out_lm145_infect_sweep_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm145_infect_sweep31_out_lm145_infect_sweep_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm145_infect_sweep31_out_lm145_infect_sweep_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm145_infect_sweep31_out_lm145_infect_sweep_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm145_infect_sweep31_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm145_infect_sweep31_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm145_infect_sweep31_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm21_infect_sweep38_out_lm21_infect_sweep_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm21_infect_sweep38_out_lm21_infect_sweep_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm21_infect_sweep38_out_lm21_infect_sweep_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm21_infect_sweep38_out_lm21_infect_sweep_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm21_infect_sweep38_out_lm21_infect_sweep_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm21_infect_sweep38_out_lm21_infect_sweep_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm21_infect_sweep38_out_lm21_infect_sweep_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_lm21_infect_sweep38_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm21_infect_sweep38_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm21_infect_sweep38_out_o_valid;
    wire [30:0] i_llvm_fpga_mem_lm24_infect_sweep39_out_lm24_infect_sweep_avm_address;
    wire [4:0] i_llvm_fpga_mem_lm24_infect_sweep39_out_lm24_infect_sweep_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_lm24_infect_sweep39_out_lm24_infect_sweep_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm24_infect_sweep39_out_lm24_infect_sweep_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm24_infect_sweep39_out_lm24_infect_sweep_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm24_infect_sweep39_out_lm24_infect_sweep_avm_write;
    wire [511:0] i_llvm_fpga_mem_lm24_infect_sweep39_out_lm24_infect_sweep_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_lm24_infect_sweep39_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm24_infect_sweep39_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm24_infect_sweep39_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_valid_out;
    wire [16:0] i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_out_feedback_stall_out_25;
    wire [0:0] i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_out_valid_out;
    wire [16:0] i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_feedback_stall_out_23;
    wire [0:0] i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i17_cleanups99_push25_infect_sweep53_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i17_cleanups99_push25_infect_sweep53_out_feedback_valid_out_25;
    wire [0:0] i_llvm_fpga_push_i17_cleanups99_push25_infect_sweep53_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i17_cleanups99_push25_infect_sweep53_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i17_initerations94_push24_infect_sweep23_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i17_initerations94_push24_infect_sweep23_out_feedback_valid_out_24;
    wire [0:0] i_llvm_fpga_push_i17_initerations94_push24_infect_sweep23_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i17_initerations94_push24_infect_sweep23_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration98_infect_sweep30_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration98_infect_sweep30_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration98_infect_sweep30_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration98_infect_sweep30_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond106_infect_sweep49_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond106_infect_sweep49_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond106_infect_sweep49_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond106_infect_sweep49_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_out_feedback_valid_out_23;
    wire [0:0] i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_out_valid_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_vt_select_63_b;
    wire [0:0] i_masked105_infect_sweep51_q;
    wire [32:0] i_mul171_3_add8_infect_sweep26_a;
    wire [32:0] i_mul171_3_add8_infect_sweep26_b;
    logic [32:0] i_mul171_3_add8_infect_sweep26_o;
    wire [32:0] i_mul171_3_add8_infect_sweep26_q;
    wire [0:0] i_narrow52_infect_sweep43_qi;
    reg [0:0] i_narrow52_infect_sweep43_q;
    wire [0:0] i_next_cleanups104_infect_sweep52_s;
    reg [16:0] i_next_cleanups104_infect_sweep52_q;
    wire [16:0] i_next_initerations95_infect_sweep18_vt_join_q;
    wire [15:0] i_next_initerations95_infect_sweep18_vt_select_15_b;
    wire [0:0] i_notcmp92_infect_sweep48_q;
    wire [0:0] i_or103_infect_sweep50_q;
    wire [0:0] i_tobool160_3_infect_sweep44_q;
    wire [31:0] i_unnamed_infect_sweep20_vt_join_q;
    wire [29:0] i_unnamed_infect_sweep20_vt_select_31_b;
    wire [0:0] i_unnamed_infect_sweep46_q;
    wire [0:0] i_unnamed_infect_sweep47_q;
    wire [0:0] i_xor102_infect_sweep22_q;
    wire [31:0] bgTrunc_i_add177_3_infect_sweep34_sel_x_b;
    wire [31:0] bgTrunc_i_inc_3_infect_sweep21_sel_x_b;
    wire [31:0] bgTrunc_i_mul171_3_add8_infect_sweep26_sel_x_b;
    wire [31:0] c_i32_162_recast_x_q;
    wire [64:0] i_arrayidx168_3_infect_sweep0_add_x_a;
    wire [64:0] i_arrayidx168_3_infect_sweep0_add_x_b;
    logic [64:0] i_arrayidx168_3_infect_sweep0_add_x_o;
    wire [64:0] i_arrayidx168_3_infect_sweep0_add_x_q;
    wire [63:0] i_arrayidx168_3_infect_sweep0_c_i64_403_x_q;
    wire [61:0] i_arrayidx168_3_infect_sweep0_narrow_x_b;
    wire [63:0] i_arrayidx168_3_infect_sweep0_shift_join_x_q;
    wire [64:0] i_arrayidx168_3_infect_sweep0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx168_3_infect_sweep0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx168_3_infect_sweep0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx168_3_infect_sweep0_dupName_0_add_x_q;
    wire [64:0] i_arrayidx168_3_infect_sweep0_dupName_1_add_x_a;
    wire [64:0] i_arrayidx168_3_infect_sweep0_dupName_1_add_x_b;
    logic [64:0] i_arrayidx168_3_infect_sweep0_dupName_1_add_x_o;
    wire [64:0] i_arrayidx168_3_infect_sweep0_dupName_1_add_x_q;
    wire [127:0] i_arrayidx168_3_infect_sweep0_mult_extender_x_q;
    wire [56:0] i_arrayidx168_3_infect_sweep0_mult_multconst_x_q;
    wire [63:0] i_arrayidx168_3_infect_sweep0_trunc_sel_x_b;
    wire [63:0] i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx168_3_infect_sweep0_dupName_2_trunc_sel_x_b;
    wire [63:0] i_arrayidx168_3_infect_sweep0_dupName_3_trunc_sel_x_b;
    wire [64:0] i_close_end_time_3_infect_sweep0_add_x_a;
    wire [64:0] i_close_end_time_3_infect_sweep0_add_x_b;
    logic [64:0] i_close_end_time_3_infect_sweep0_add_x_o;
    wire [64:0] i_close_end_time_3_infect_sweep0_add_x_q;
    wire [63:0] i_close_end_time_3_infect_sweep0_c_i64_22_x_q;
    wire [64:0] i_close_end_time_3_infect_sweep0_dupName_0_add_x_a;
    wire [64:0] i_close_end_time_3_infect_sweep0_dupName_0_add_x_b;
    logic [64:0] i_close_end_time_3_infect_sweep0_dupName_0_add_x_o;
    wire [64:0] i_close_end_time_3_infect_sweep0_dupName_0_add_x_q;
    wire [127:0] i_close_end_time_3_infect_sweep0_mult_extender_x_q;
    wire [60:0] i_close_end_time_3_infect_sweep0_mult_multconst_x_q;
    wire [63:0] i_close_end_time_3_infect_sweep0_trunc_sel_x_b;
    wire [63:0] i_close_end_time_3_infect_sweep0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_close_end_time_3_infect_sweep0_dupName_1_trunc_sel_x_b;
    wire [64:0] i_close_start_time_3_infect_sweep0_add_x_a;
    wire [64:0] i_close_start_time_3_infect_sweep0_add_x_b;
    logic [64:0] i_close_start_time_3_infect_sweep0_add_x_o;
    wire [64:0] i_close_start_time_3_infect_sweep0_add_x_q;
    wire [127:0] i_close_start_time_3_infect_sweep0_mult_extender_x_q;
    wire [63:0] i_close_start_time_3_infect_sweep0_trunc_sel_x_b;
    wire [63:0] i_close_start_time_3_infect_sweep0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup101_infect_sweep13_sel_x_b;
    wire [63:0] i_idxprom167_3_infect_sweep19_sel_x_b;
    wire [63:0] i_idxprom178_3_infect_sweep35_sel_x_b;
    wire [0:0] i_last_initeration97_infect_sweep24_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_for_body164_3_infect_sweeps_c0_enter2069_infect_sweep16_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body164_3_infect_sweeps_c0_enter2069_infect_sweep16_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_body164_3_infect_sweeps_c0_enter2069_infect_sweep16_aunroll_x_out_c0_exit211_1_tpl;
    wire [0:0] infect_sweep_B16_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] infect_sweep_B16_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [35:0] i_arrayidx168_3_infect_sweep0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx168_3_infect_sweep0_mult_x_sums_align_0_qint;
    wire [60:0] i_arrayidx168_3_infect_sweep0_mult_x_sums_join_1_q;
    wire [42:0] i_arrayidx168_3_infect_sweep0_mult_x_sums_align_2_q;
    wire [42:0] i_arrayidx168_3_infect_sweep0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx168_3_infect_sweep0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx168_3_infect_sweep0_mult_x_sums_align_3_qint;
    wire [70:0] i_arrayidx168_3_infect_sweep0_mult_x_sums_join_4_q;
    wire [71:0] i_arrayidx168_3_infect_sweep0_mult_x_sums_result_add_0_0_a;
    wire [71:0] i_arrayidx168_3_infect_sweep0_mult_x_sums_result_add_0_0_b;
    logic [71:0] i_arrayidx168_3_infect_sweep0_mult_x_sums_result_add_0_0_o;
    wire [71:0] i_arrayidx168_3_infect_sweep0_mult_x_sums_result_add_0_0_q;
    wire [15:0] leftShiftStage0Idx1Rng1_uid263_i_cleanups_shl100_infect_sweep0_shift_x_in;
    wire [15:0] leftShiftStage0Idx1Rng1_uid263_i_cleanups_shl100_infect_sweep0_shift_x_b;
    wire [16:0] leftShiftStage0Idx1_uid264_i_cleanups_shl100_infect_sweep0_shift_x_q;
    wire [0:0] leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_s;
    reg [16:0] leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_q;
    wire [35:0] i_close_end_time_3_infect_sweep0_mult_x_sums_align_0_q;
    wire [35:0] i_close_end_time_3_infect_sweep0_mult_x_sums_align_0_qint;
    wire [56:0] i_close_end_time_3_infect_sweep0_mult_x_sums_join_1_q;
    wire [38:0] i_close_end_time_3_infect_sweep0_mult_x_sums_align_2_q;
    wire [38:0] i_close_end_time_3_infect_sweep0_mult_x_sums_align_2_qint;
    wire [27:0] i_close_end_time_3_infect_sweep0_mult_x_sums_align_3_q;
    wire [27:0] i_close_end_time_3_infect_sweep0_mult_x_sums_align_3_qint;
    wire [66:0] i_close_end_time_3_infect_sweep0_mult_x_sums_join_4_q;
    wire [67:0] i_close_end_time_3_infect_sweep0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_close_end_time_3_infect_sweep0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_close_end_time_3_infect_sweep0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_close_end_time_3_infect_sweep0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_close_start_time_3_infect_sweep0_mult_x_sums_align_0_q;
    wire [35:0] i_close_start_time_3_infect_sweep0_mult_x_sums_align_0_qint;
    wire [56:0] i_close_start_time_3_infect_sweep0_mult_x_sums_join_1_q;
    wire [38:0] i_close_start_time_3_infect_sweep0_mult_x_sums_align_2_q;
    wire [38:0] i_close_start_time_3_infect_sweep0_mult_x_sums_align_2_qint;
    wire [27:0] i_close_start_time_3_infect_sweep0_mult_x_sums_align_3_q;
    wire [27:0] i_close_start_time_3_infect_sweep0_mult_x_sums_align_3_qint;
    wire [66:0] i_close_start_time_3_infect_sweep0_mult_x_sums_join_4_q;
    wire [67:0] i_close_start_time_3_infect_sweep0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_close_start_time_3_infect_sweep0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_close_start_time_3_infect_sweep0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_close_start_time_3_infect_sweep0_mult_x_sums_result_add_0_0_q;
    wire [15:0] rightShiftStage0Idx1Rng1_uid306_i_next_initerations95_infect_sweep0_shift_x_b;
    wire [16:0] rightShiftStage0Idx1_uid308_i_next_initerations95_infect_sweep0_shift_x_q;
    wire [0:0] rightShiftStage0_uid310_i_next_initerations95_infect_sweep0_shift_x_s;
    reg [16:0] rightShiftStage0_uid310_i_next_initerations95_infect_sweep0_shift_x_q;
    wire [29:0] leftShiftStage0Idx1Rng2_uid315_dupName_2_i_unnamed_infect_sweep0_shift_x_in;
    wire [29:0] leftShiftStage0Idx1Rng2_uid315_dupName_2_i_unnamed_infect_sweep0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid316_dupName_2_i_unnamed_infect_sweep0_shift_x_q;
    wire [0:0] leftShiftStage0_uid318_dupName_2_i_unnamed_infect_sweep0_shift_x_s;
    reg [31:0] leftShiftStage0_uid318_dupName_2_i_unnamed_infect_sweep0_shift_x_q;
    wire [11:0] i_arrayidx168_3_infect_sweep0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx168_3_infect_sweep0_mult_x_im0_shift0_qint;
    wire [12:0] i_arrayidx168_3_infect_sweep0_mult_x_im0_add_1_a;
    wire [12:0] i_arrayidx168_3_infect_sweep0_mult_x_im0_add_1_b;
    logic [12:0] i_arrayidx168_3_infect_sweep0_mult_x_im0_add_1_o;
    wire [12:0] i_arrayidx168_3_infect_sweep0_mult_x_im0_add_1_q;
    wire [16:0] i_arrayidx168_3_infect_sweep0_mult_x_im0_shift2_q;
    wire [16:0] i_arrayidx168_3_infect_sweep0_mult_x_im0_shift2_qint;
    wire [19:0] i_arrayidx168_3_infect_sweep0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx168_3_infect_sweep0_mult_x_im3_shift0_qint;
    wire [20:0] i_arrayidx168_3_infect_sweep0_mult_x_im3_add_1_a;
    wire [20:0] i_arrayidx168_3_infect_sweep0_mult_x_im3_add_1_b;
    logic [20:0] i_arrayidx168_3_infect_sweep0_mult_x_im3_add_1_o;
    wire [20:0] i_arrayidx168_3_infect_sweep0_mult_x_im3_add_1_q;
    wire [24:0] i_arrayidx168_3_infect_sweep0_mult_x_im3_shift2_q;
    wire [24:0] i_arrayidx168_3_infect_sweep0_mult_x_im3_shift2_qint;
    wire [19:0] i_arrayidx168_3_infect_sweep0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx168_3_infect_sweep0_mult_x_im6_shift0_qint;
    wire [20:0] i_arrayidx168_3_infect_sweep0_mult_x_im6_add_1_a;
    wire [20:0] i_arrayidx168_3_infect_sweep0_mult_x_im6_add_1_b;
    logic [20:0] i_arrayidx168_3_infect_sweep0_mult_x_im6_add_1_o;
    wire [20:0] i_arrayidx168_3_infect_sweep0_mult_x_im6_add_1_q;
    wire [24:0] i_arrayidx168_3_infect_sweep0_mult_x_im6_shift2_q;
    wire [24:0] i_arrayidx168_3_infect_sweep0_mult_x_im6_shift2_qint;
    wire [19:0] i_arrayidx168_3_infect_sweep0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx168_3_infect_sweep0_mult_x_im9_shift0_qint;
    wire [20:0] i_arrayidx168_3_infect_sweep0_mult_x_im9_add_1_a;
    wire [20:0] i_arrayidx168_3_infect_sweep0_mult_x_im9_add_1_b;
    logic [20:0] i_arrayidx168_3_infect_sweep0_mult_x_im9_add_1_o;
    wire [20:0] i_arrayidx168_3_infect_sweep0_mult_x_im9_add_1_q;
    wire [24:0] i_arrayidx168_3_infect_sweep0_mult_x_im9_shift2_q;
    wire [24:0] i_arrayidx168_3_infect_sweep0_mult_x_im9_shift2_qint;
    wire [10:0] i_close_end_time_3_infect_sweep0_mult_x_im0_shift0_q;
    wire [10:0] i_close_end_time_3_infect_sweep0_mult_x_im0_shift0_qint;
    wire [11:0] i_close_end_time_3_infect_sweep0_mult_x_im0_add_1_a;
    wire [11:0] i_close_end_time_3_infect_sweep0_mult_x_im0_add_1_b;
    logic [11:0] i_close_end_time_3_infect_sweep0_mult_x_im0_add_1_o;
    wire [11:0] i_close_end_time_3_infect_sweep0_mult_x_im0_add_1_q;
    wire [12:0] i_close_end_time_3_infect_sweep0_mult_x_im0_shift2_q;
    wire [12:0] i_close_end_time_3_infect_sweep0_mult_x_im0_shift2_qint;
    wire [18:0] i_close_end_time_3_infect_sweep0_mult_x_im3_shift0_q;
    wire [18:0] i_close_end_time_3_infect_sweep0_mult_x_im3_shift0_qint;
    wire [19:0] i_close_end_time_3_infect_sweep0_mult_x_im3_add_1_a;
    wire [19:0] i_close_end_time_3_infect_sweep0_mult_x_im3_add_1_b;
    logic [19:0] i_close_end_time_3_infect_sweep0_mult_x_im3_add_1_o;
    wire [19:0] i_close_end_time_3_infect_sweep0_mult_x_im3_add_1_q;
    wire [20:0] i_close_end_time_3_infect_sweep0_mult_x_im3_shift2_q;
    wire [20:0] i_close_end_time_3_infect_sweep0_mult_x_im3_shift2_qint;
    wire [18:0] i_close_end_time_3_infect_sweep0_mult_x_im6_shift0_q;
    wire [18:0] i_close_end_time_3_infect_sweep0_mult_x_im6_shift0_qint;
    wire [19:0] i_close_end_time_3_infect_sweep0_mult_x_im6_add_1_a;
    wire [19:0] i_close_end_time_3_infect_sweep0_mult_x_im6_add_1_b;
    logic [19:0] i_close_end_time_3_infect_sweep0_mult_x_im6_add_1_o;
    wire [19:0] i_close_end_time_3_infect_sweep0_mult_x_im6_add_1_q;
    wire [20:0] i_close_end_time_3_infect_sweep0_mult_x_im6_shift2_q;
    wire [20:0] i_close_end_time_3_infect_sweep0_mult_x_im6_shift2_qint;
    wire [18:0] i_close_end_time_3_infect_sweep0_mult_x_im9_shift0_q;
    wire [18:0] i_close_end_time_3_infect_sweep0_mult_x_im9_shift0_qint;
    wire [19:0] i_close_end_time_3_infect_sweep0_mult_x_im9_add_1_a;
    wire [19:0] i_close_end_time_3_infect_sweep0_mult_x_im9_add_1_b;
    logic [19:0] i_close_end_time_3_infect_sweep0_mult_x_im9_add_1_o;
    wire [19:0] i_close_end_time_3_infect_sweep0_mult_x_im9_add_1_q;
    wire [20:0] i_close_end_time_3_infect_sweep0_mult_x_im9_shift2_q;
    wire [20:0] i_close_end_time_3_infect_sweep0_mult_x_im9_shift2_qint;
    wire [10:0] i_close_start_time_3_infect_sweep0_mult_x_im0_shift0_q;
    wire [10:0] i_close_start_time_3_infect_sweep0_mult_x_im0_shift0_qint;
    wire [11:0] i_close_start_time_3_infect_sweep0_mult_x_im0_add_1_a;
    wire [11:0] i_close_start_time_3_infect_sweep0_mult_x_im0_add_1_b;
    logic [11:0] i_close_start_time_3_infect_sweep0_mult_x_im0_add_1_o;
    wire [11:0] i_close_start_time_3_infect_sweep0_mult_x_im0_add_1_q;
    wire [12:0] i_close_start_time_3_infect_sweep0_mult_x_im0_shift2_q;
    wire [12:0] i_close_start_time_3_infect_sweep0_mult_x_im0_shift2_qint;
    wire [18:0] i_close_start_time_3_infect_sweep0_mult_x_im3_shift0_q;
    wire [18:0] i_close_start_time_3_infect_sweep0_mult_x_im3_shift0_qint;
    wire [19:0] i_close_start_time_3_infect_sweep0_mult_x_im3_add_1_a;
    wire [19:0] i_close_start_time_3_infect_sweep0_mult_x_im3_add_1_b;
    logic [19:0] i_close_start_time_3_infect_sweep0_mult_x_im3_add_1_o;
    wire [19:0] i_close_start_time_3_infect_sweep0_mult_x_im3_add_1_q;
    wire [20:0] i_close_start_time_3_infect_sweep0_mult_x_im3_shift2_q;
    wire [20:0] i_close_start_time_3_infect_sweep0_mult_x_im3_shift2_qint;
    wire [18:0] i_close_start_time_3_infect_sweep0_mult_x_im6_shift0_q;
    wire [18:0] i_close_start_time_3_infect_sweep0_mult_x_im6_shift0_qint;
    wire [19:0] i_close_start_time_3_infect_sweep0_mult_x_im6_add_1_a;
    wire [19:0] i_close_start_time_3_infect_sweep0_mult_x_im6_add_1_b;
    logic [19:0] i_close_start_time_3_infect_sweep0_mult_x_im6_add_1_o;
    wire [19:0] i_close_start_time_3_infect_sweep0_mult_x_im6_add_1_q;
    wire [20:0] i_close_start_time_3_infect_sweep0_mult_x_im6_shift2_q;
    wire [20:0] i_close_start_time_3_infect_sweep0_mult_x_im6_shift2_qint;
    wire [18:0] i_close_start_time_3_infect_sweep0_mult_x_im9_shift0_q;
    wire [18:0] i_close_start_time_3_infect_sweep0_mult_x_im9_shift0_qint;
    wire [19:0] i_close_start_time_3_infect_sweep0_mult_x_im9_add_1_a;
    wire [19:0] i_close_start_time_3_infect_sweep0_mult_x_im9_add_1_b;
    logic [19:0] i_close_start_time_3_infect_sweep0_mult_x_im9_add_1_o;
    wire [19:0] i_close_start_time_3_infect_sweep0_mult_x_im9_add_1_q;
    wire [20:0] i_close_start_time_3_infect_sweep0_mult_x_im9_shift2_q;
    wire [20:0] i_close_start_time_3_infect_sweep0_mult_x_im9_shift2_qint;
    wire [9:0] i_arrayidx168_3_infect_sweep0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx168_3_infect_sweep0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx168_3_infect_sweep0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx168_3_infect_sweep0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select_e;
    reg [0:0] redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q;
    wire [0:0] redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_valid_in;
    wire redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_stall_in;
    wire redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_data_in;
    wire [0:0] redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_valid_out;
    wire redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_stall_out;
    wire redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_data_out;
    wire [0:0] redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_valid_in;
    wire redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_stall_in;
    wire redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_data_in;
    wire [0:0] redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_valid_out;
    wire redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_stall_out;
    wire redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_data_out;
    wire [0:0] redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_valid_in;
    wire redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_stall_in;
    wire redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_data_in;
    wire [0:0] redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_valid_out;
    wire redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_stall_out;
    wire redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_data_out;
    reg [0:0] redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_q;
    reg [0:0] redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_q;
    reg [0:0] redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_q;
    wire [0:0] redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_valid_in;
    wire redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_stall_in;
    wire redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_data_in;
    wire [0:0] redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_valid_out;
    wire redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_stall_out;
    wire redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_data_out;
    reg [63:0] redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_q;
    reg [63:0] redist7_i_close_end_time_3_infect_sweep0_trunc_sel_x_b_1_0_q;
    reg [63:0] redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_q;
    reg [63:0] redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_q;
    reg [31:0] redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_q;
    wire [0:0] redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_valid_in;
    wire redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_stall_in;
    wire redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_data_in;
    wire [0:0] redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_valid_out;
    wire redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_stall_out;
    wire redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_data_out;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_valid_in;
    wire redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_stall_in;
    wire redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_data_in;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_valid_out;
    wire redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_stall_out;
    wire redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_data_out;
    reg [0:0] redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_q;
    wire [0:0] redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_valid_in;
    wire redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_stall_in;
    wire redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_data_in;
    wire [0:0] redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_valid_out;
    wire redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_stall_out;
    wire redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_data_out;
    wire [0:0] redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_valid_in;
    wire redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_stall_in;
    wire redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_data_in;
    wire [0:0] redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_valid_out;
    wire redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_stall_out;
    wire redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_data_out;
    reg [0:0] redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_q;
    reg [0:0] redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_q;
    reg [0:0] redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_q;
    reg [0:0] redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_q;
    wire [0:0] redist17_i_cmp169_3_infect_sweep32_c_144_fifo_valid_in;
    wire redist17_i_cmp169_3_infect_sweep32_c_144_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist17_i_cmp169_3_infect_sweep32_c_144_fifo_stall_in;
    wire redist17_i_cmp169_3_infect_sweep32_c_144_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist17_i_cmp169_3_infect_sweep32_c_144_fifo_data_in;
    wire [0:0] redist17_i_cmp169_3_infect_sweep32_c_144_fifo_valid_out;
    wire redist17_i_cmp169_3_infect_sweep32_c_144_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist17_i_cmp169_3_infect_sweep32_c_144_fifo_stall_out;
    wire redist17_i_cmp169_3_infect_sweep32_c_144_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist17_i_cmp169_3_infect_sweep32_c_144_fifo_data_out;
    wire [0:0] redist18_i_cmp157_3_infect_sweep28_c_282_fifo_valid_in;
    wire redist18_i_cmp157_3_infect_sweep28_c_282_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist18_i_cmp157_3_infect_sweep28_c_282_fifo_stall_in;
    wire redist18_i_cmp157_3_infect_sweep28_c_282_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist18_i_cmp157_3_infect_sweep28_c_282_fifo_data_in;
    wire [0:0] redist18_i_cmp157_3_infect_sweep28_c_282_fifo_valid_out;
    wire redist18_i_cmp157_3_infect_sweep28_c_282_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist18_i_cmp157_3_infect_sweep28_c_282_fifo_stall_out;
    wire redist18_i_cmp157_3_infect_sweep28_c_282_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist18_i_cmp157_3_infect_sweep28_c_282_fifo_data_out;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm145_infect_sweep31_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm145_infect_sweep31_b;
    wire [15:0] bubble_join_i_llvm_fpga_mem_lm21_infect_sweep38_q;
    wire [15:0] bubble_select_i_llvm_fpga_mem_lm21_infect_sweep38_b;
    wire [15:0] bubble_join_i_llvm_fpga_mem_lm24_infect_sweep39_q;
    wire [15:0] bubble_select_i_llvm_fpga_mem_lm24_infect_sweep39_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_b;
    wire [16:0] bubble_join_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_q;
    wire [16:0] bubble_select_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_b;
    wire [16:0] bubble_join_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_q;
    wire [16:0] bubble_select_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_b;
    wire [32:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_body164_3_infect_sweeps_c0_enter2069_infect_sweep16_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body164_3_infect_sweeps_c0_enter2069_infect_sweep16_aunroll_x_b;
    wire [32:0] bubble_join_infect_sweep_B16_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_infect_sweep_B16_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_infect_sweep_B16_merge_reg_aunroll_x_c;
    wire [0:0] bubble_join_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_q;
    wire [0:0] bubble_select_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_b;
    wire [0:0] bubble_join_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_q;
    wire [0:0] bubble_select_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_b;
    wire [0:0] bubble_join_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_q;
    wire [0:0] bubble_select_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_b;
    wire [31:0] bubble_join_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_q;
    wire [31:0] bubble_select_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_b;
    wire [31:0] bubble_join_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_q;
    wire [31:0] bubble_select_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_b;
    wire [31:0] bubble_join_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_q;
    wire [31:0] bubble_select_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_b;
    wire [0:0] bubble_join_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_q;
    wire [0:0] bubble_select_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_b;
    wire [0:0] bubble_join_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_q;
    wire [0:0] bubble_select_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_b;
    wire [0:0] bubble_join_redist17_i_cmp169_3_infect_sweep32_c_144_fifo_q;
    wire [0:0] bubble_select_redist17_i_cmp169_3_infect_sweep32_c_144_fifo_b;
    wire [0:0] bubble_join_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_q;
    wire [0:0] bubble_select_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_b;
    reg [0:0] SE_i_cmp157_3_infect_sweep28_R_v_0;
    wire [0:0] SE_i_cmp157_3_infect_sweep28_v_s_0;
    wire [0:0] SE_i_cmp157_3_infect_sweep28_s_tv_0;
    wire [0:0] SE_i_cmp157_3_infect_sweep28_backEN;
    wire [0:0] SE_i_cmp157_3_infect_sweep28_and0;
    wire [0:0] SE_i_cmp157_3_infect_sweep28_backStall;
    wire [0:0] SE_i_cmp157_3_infect_sweep28_V0;
    reg [0:0] SE_i_cmp169_3_infect_sweep32_R_v_0;
    wire [0:0] SE_i_cmp169_3_infect_sweep32_v_s_0;
    wire [0:0] SE_i_cmp169_3_infect_sweep32_s_tv_0;
    wire [0:0] SE_i_cmp169_3_infect_sweep32_backEN;
    wire [0:0] SE_i_cmp169_3_infect_sweep32_backStall;
    wire [0:0] SE_i_cmp169_3_infect_sweep32_V0;
    wire [0:0] SE_i_idxprom167_3_infect_sweep19_vt_join_wireValid;
    wire [0:0] SE_i_idxprom167_3_infect_sweep19_vt_join_and0;
    wire [0:0] SE_i_idxprom167_3_infect_sweep19_vt_join_backStall;
    wire [0:0] SE_i_idxprom167_3_infect_sweep19_vt_join_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_V0;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45_and0;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45_backStall;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm24_infect_sweep39_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm24_infect_sweep39_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm24_infect_sweep39_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm24_infect_sweep39_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i17_cleanups99_push25_infect_sweep53_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i17_cleanups99_push25_infect_sweep53_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i17_initerations94_push24_infect_sweep23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i17_initerations94_push24_infect_sweep23_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration98_infect_sweep30_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration98_infect_sweep30_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond106_infect_sweep49_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond106_infect_sweep49_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_V0;
    reg [0:0] SE_i_narrow52_infect_sweep43_R_v_0;
    reg [0:0] SE_i_narrow52_infect_sweep43_R_v_1;
    wire [0:0] SE_i_narrow52_infect_sweep43_v_s_0;
    wire [0:0] SE_i_narrow52_infect_sweep43_s_tv_0;
    wire [0:0] SE_i_narrow52_infect_sweep43_s_tv_1;
    wire [0:0] SE_i_narrow52_infect_sweep43_backEN;
    wire [0:0] SE_i_narrow52_infect_sweep43_and0;
    wire [0:0] SE_i_narrow52_infect_sweep43_or0;
    wire [0:0] SE_i_narrow52_infect_sweep43_backStall;
    wire [0:0] SE_i_narrow52_infect_sweep43_V0;
    wire [0:0] SE_i_narrow52_infect_sweep43_V1;
    wire [0:0] SE_i_next_initerations95_infect_sweep18_vt_join_wireValid;
    wire [0:0] SE_i_next_initerations95_infect_sweep18_vt_join_wireStall;
    wire [0:0] SE_i_next_initerations95_infect_sweep18_vt_join_StallValid;
    wire [0:0] SE_i_next_initerations95_infect_sweep18_vt_join_toReg0;
    reg [0:0] SE_i_next_initerations95_infect_sweep18_vt_join_fromReg0;
    wire [0:0] SE_i_next_initerations95_infect_sweep18_vt_join_consumed0;
    wire [0:0] SE_i_next_initerations95_infect_sweep18_vt_join_toReg1;
    reg [0:0] SE_i_next_initerations95_infect_sweep18_vt_join_fromReg1;
    wire [0:0] SE_i_next_initerations95_infect_sweep18_vt_join_consumed1;
    wire [0:0] SE_i_next_initerations95_infect_sweep18_vt_join_and0;
    wire [0:0] SE_i_next_initerations95_infect_sweep18_vt_join_or0;
    wire [0:0] SE_i_next_initerations95_infect_sweep18_vt_join_backStall;
    wire [0:0] SE_i_next_initerations95_infect_sweep18_vt_join_V0;
    wire [0:0] SE_i_next_initerations95_infect_sweep18_vt_join_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg7;
    reg [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg7;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed7;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg8;
    reg [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg8;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed8;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg9;
    reg [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg9;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed9;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_or6;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_or7;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_or8;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_V7;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_V8;
    wire [0:0] SE_out_infect_sweep_B16_merge_reg_aunroll_x_V9;
    wire [0:0] SE_leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_wireValid;
    wire [0:0] SE_leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_and0;
    wire [0:0] SE_leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_and1;
    wire [0:0] SE_leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_backStall;
    wire [0:0] SE_leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_V0;
    reg [0:0] SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0;
    reg [0:0] SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1;
    reg [0:0] SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_2;
    wire [0:0] SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
    wire [0:0] SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_0;
    wire [0:0] SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_1;
    wire [0:0] SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_2;
    wire [0:0] SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN;
    wire [0:0] SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or0;
    wire [0:0] SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or1;
    wire [0:0] SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backStall;
    wire [0:0] SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V0;
    wire [0:0] SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V1;
    wire [0:0] SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V2;
    wire [0:0] SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_wireValid;
    wire [0:0] SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_wireStall;
    wire [0:0] SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_StallValid;
    wire [0:0] SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_toReg0;
    reg [0:0] SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_fromReg0;
    wire [0:0] SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_consumed0;
    wire [0:0] SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_toReg1;
    reg [0:0] SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_fromReg1;
    wire [0:0] SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_consumed1;
    wire [0:0] SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_or0;
    wire [0:0] SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_backStall;
    wire [0:0] SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_V0;
    wire [0:0] SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_V1;
    wire [0:0] SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_wireValid;
    wire [0:0] SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_wireStall;
    wire [0:0] SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_StallValid;
    wire [0:0] SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_toReg0;
    reg [0:0] SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_fromReg0;
    wire [0:0] SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_consumed0;
    wire [0:0] SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_toReg1;
    reg [0:0] SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_fromReg1;
    wire [0:0] SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_consumed1;
    wire [0:0] SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_or0;
    wire [0:0] SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_backStall;
    wire [0:0] SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_V0;
    wire [0:0] SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_V1;
    wire [0:0] SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_wireValid;
    wire [0:0] SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_wireStall;
    wire [0:0] SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_StallValid;
    wire [0:0] SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_toReg0;
    reg [0:0] SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_fromReg0;
    wire [0:0] SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_consumed0;
    wire [0:0] SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_toReg1;
    reg [0:0] SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_fromReg1;
    wire [0:0] SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_consumed1;
    wire [0:0] SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_or0;
    wire [0:0] SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_backStall;
    wire [0:0] SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_V0;
    wire [0:0] SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_V1;
    reg [0:0] SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_R_v_0;
    wire [0:0] SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_v_s_0;
    wire [0:0] SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_s_tv_0;
    wire [0:0] SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_backEN;
    wire [0:0] SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_backStall;
    wire [0:0] SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_V0;
    reg [0:0] SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_R_v_0;
    wire [0:0] SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_v_s_0;
    wire [0:0] SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_s_tv_0;
    wire [0:0] SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_backEN;
    wire [0:0] SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_backStall;
    wire [0:0] SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_V0;
    reg [0:0] SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_R_v_0;
    wire [0:0] SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_v_s_0;
    wire [0:0] SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_s_tv_0;
    wire [0:0] SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_backEN;
    wire [0:0] SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_backStall;
    wire [0:0] SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_V0;
    wire [0:0] SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_wireValid;
    wire [0:0] SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_backStall;
    wire [0:0] SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_V0;
    reg [0:0] SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_R_v_1;
    wire [0:0] SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_or0;
    wire [0:0] SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_V0;
    wire [0:0] SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_V1;
    reg [0:0] SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_V0;
    reg [0:0] SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_V0;
    reg [0:0] SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_V0;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_wireValid;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_wireStall;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_StallValid;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_toReg0;
    reg [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_fromReg0;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_consumed0;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_toReg1;
    reg [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_fromReg1;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_consumed1;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_toReg2;
    reg [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_fromReg2;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_consumed2;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_or0;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_or1;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_backStall;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_V0;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_V1;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_V2;
    wire [0:0] SE_out_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_wireValid;
    wire [0:0] SE_out_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_and0;
    wire [0:0] SE_out_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_backStall;
    wire [0:0] SE_out_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_V0;
    reg [0:0] SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_R_v_0;
    reg [0:0] SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_R_v_1;
    wire [0:0] SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_v_s_0;
    wire [0:0] SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_s_tv_0;
    wire [0:0] SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_s_tv_1;
    wire [0:0] SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_backEN;
    wire [0:0] SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_or0;
    wire [0:0] SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_backStall;
    wire [0:0] SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_V0;
    wire [0:0] SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_V1;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_wireValid;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_wireStall;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_StallValid;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_toReg0;
    reg [0:0] SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_fromReg0;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_consumed0;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_toReg1;
    reg [0:0] SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_fromReg1;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_consumed1;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_or0;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_backStall;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_V0;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_V1;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_wireValid;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_wireStall;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_StallValid;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_toReg0;
    reg [0:0] SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_fromReg0;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_consumed0;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_toReg1;
    reg [0:0] SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_fromReg1;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_consumed1;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_or0;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_backStall;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_V0;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_V1;
    reg [0:0] SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_R_v_0;
    wire [0:0] SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_v_s_0;
    wire [0:0] SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_s_tv_0;
    wire [0:0] SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_backEN;
    wire [0:0] SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_backStall;
    wire [0:0] SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_V0;
    reg [0:0] SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_R_v_0;
    wire [0:0] SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_v_s_0;
    wire [0:0] SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_s_tv_0;
    wire [0:0] SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_backEN;
    wire [0:0] SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_backStall;
    wire [0:0] SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_V0;
    reg [0:0] SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_R_v_0;
    wire [0:0] SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_v_s_0;
    wire [0:0] SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_s_tv_0;
    wire [0:0] SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_backEN;
    wire [0:0] SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_backStall;
    wire [0:0] SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_V0;
    reg [0:0] SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_R_v_0;
    wire [0:0] SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_v_s_0;
    wire [0:0] SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_s_tv_0;
    wire [0:0] SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_backEN;
    wire [0:0] SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_backStall;
    wire [0:0] SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_V0;
    wire [0:0] SE_out_redist17_i_cmp169_3_infect_sweep32_c_144_fifo_wireValid;
    wire [0:0] SE_out_redist17_i_cmp169_3_infect_sweep32_c_144_fifo_backStall;
    wire [0:0] SE_out_redist17_i_cmp169_3_infect_sweep32_c_144_fifo_V0;
    wire [0:0] SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_wireValid;
    wire [0:0] SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_wireStall;
    wire [0:0] SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_StallValid;
    wire [0:0] SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_toReg0;
    reg [0:0] SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_fromReg0;
    wire [0:0] SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_consumed0;
    wire [0:0] SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_toReg1;
    reg [0:0] SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_fromReg1;
    wire [0:0] SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_consumed1;
    wire [0:0] SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_toReg2;
    reg [0:0] SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_fromReg2;
    wire [0:0] SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_consumed2;
    wire [0:0] SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_and0;
    wire [0:0] SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_and1;
    wire [0:0] SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_and2;
    wire [0:0] SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_or0;
    wire [0:0] SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_or1;
    wire [0:0] SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_backStall;
    wire [0:0] SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_V0;
    wire [0:0] SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_V1;
    wire [0:0] SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_V2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_and6;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_and7;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_V0;
    wire [0:0] SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_wireValid;
    wire [0:0] SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_backStall;
    wire [0:0] SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_V0;
    wire [0:0] SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_wireValid;
    wire [0:0] SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_backStall;
    wire [0:0] SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_V0;
    wire [0:0] SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_wireValid;
    wire [0:0] SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_backStall;
    wire [0:0] SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_V0;
    wire [0:0] SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_wireValid;
    wire [0:0] SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_backStall;
    wire [0:0] SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_V0;
    wire [0:0] SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_wireValid;
    wire [0:0] SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_backStall;
    wire [0:0] SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_V0;
    wire [0:0] SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_wireValid;
    wire [0:0] SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_backStall;
    wire [0:0] SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_V0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg_valid_in;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg_stall_in;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg_valid_out;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg_stall_out;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg_valid_in;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg_stall_in;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg_valid_out;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg_stall_out;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg_valid_in;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg_stall_in;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg_valid_out;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg_stall_out;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg_valid_in;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg_stall_in;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg_valid_out;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg_stall_out;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg_valid_in;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg_stall_in;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg_valid_out;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg_stall_out;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg_valid_in;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg_stall_in;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg_valid_out;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg_stall_out;
    wire bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_i_valid;
    reg [0:0] SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_valid;
    wire [0:0] SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_and0;
    wire [0:0] SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_and1;
    reg [0:0] SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_data0;
    reg [0:0] SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_data1;
    reg [0:0] SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_data2;
    reg [0:0] SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_data3;
    reg [31:0] SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_data4;
    wire [0:0] SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_backStall;
    wire [0:0] SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_V;
    wire [0:0] SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_D0;
    wire [0:0] SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_D1;
    wire [0:0] SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_D2;
    wire [0:0] SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_D3;
    wire [31:0] SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_D4;
    wire [0:0] SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_i_valid;
    reg [0:0] SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_r_valid;
    reg [0:0] SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_r_data0;
    wire [0:0] SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_backStall;
    wire [0:0] SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_V;
    wire [0:0] SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_D0;
    wire [0:0] SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_i_valid;
    reg [0:0] SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_r_valid;
    reg [0:0] SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_r_data0;
    wire [0:0] SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_backStall;
    wire [0:0] SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_V;
    wire [0:0] SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_D0;


    // bubble_join_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo(BITJOIN,470)
    assign bubble_join_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_q = redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_data_out;

    // bubble_select_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo(BITSELECT,471)
    assign bubble_select_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_b = $unsigned(bubble_join_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_q[0:0]);

    // bubble_join_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo(BITJOIN,473)
    assign bubble_join_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_q = redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_data_out;

    // bubble_select_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo(BITSELECT,474)
    assign bubble_select_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_b = $unsigned(bubble_join_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_q[0:0]);

    // bubble_join_infect_sweep_B16_merge_reg_aunroll_x(BITJOIN,455)
    assign bubble_join_infect_sweep_B16_merge_reg_aunroll_x_q = {infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl, infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_infect_sweep_B16_merge_reg_aunroll_x(BITSELECT,456)
    assign bubble_select_infect_sweep_B16_merge_reg_aunroll_x_b = $unsigned(bubble_join_infect_sweep_B16_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_infect_sweep_B16_merge_reg_aunroll_x_c = $unsigned(bubble_join_infect_sweep_B16_merge_reg_aunroll_x_q[32:1]);

    // redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo(STALLFIFO,383)
    assign redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_valid_in = SE_out_infect_sweep_B16_merge_reg_aunroll_x_V9;
    assign redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_stall_in = SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_backStall;
    assign redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_data_in = bubble_select_infect_sweep_B16_merge_reg_aunroll_x_c;
    assign redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_valid_in_bitsignaltemp = redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_valid_in[0];
    assign redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_stall_in_bitsignaltemp = redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_stall_in[0];
    assign redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_valid_out[0] = redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_valid_out_bitsignaltemp;
    assign redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_stall_out[0] = redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(298),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo (
        .valid_in(redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_valid_in_bitsignaltemp),
        .stall_in(redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_infect_sweep_B16_merge_reg_aunroll_x_c),
        .valid_out(redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_valid_out_bitsignaltemp),
        .stall_out(redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_stall_out_bitsignaltemp),
        .data_out(redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm145_infect_sweep31(BITJOIN,416)
    assign bubble_join_i_llvm_fpga_mem_lm145_infect_sweep31_q = i_llvm_fpga_mem_lm145_infect_sweep31_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm145_infect_sweep31(BITSELECT,417)
    assign bubble_select_i_llvm_fpga_mem_lm145_infect_sweep31_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm145_infect_sweep31_q[31:0]);

    // c_i32_162_recast_x(CONSTANT,162)
    assign c_i32_162_recast_x_q = $unsigned(32'b11111111111111111111111111111111);

    // i_cmp169_3_infect_sweep32(COMPARE,33)@157 + 1
    assign i_cmp169_3_infect_sweep32_a = $unsigned({{2{c_i32_162_recast_x_q[31]}}, c_i32_162_recast_x_q});
    assign i_cmp169_3_infect_sweep32_b = $unsigned({{2{bubble_select_i_llvm_fpga_mem_lm145_infect_sweep31_b[31]}}, bubble_select_i_llvm_fpga_mem_lm145_infect_sweep31_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp169_3_infect_sweep32_o <= 34'b0;
        end
        else if (SE_i_cmp169_3_infect_sweep32_backEN == 1'b1)
        begin
            i_cmp169_3_infect_sweep32_o <= $unsigned($signed(i_cmp169_3_infect_sweep32_a) - $signed(i_cmp169_3_infect_sweep32_b));
        end
    end
    assign i_cmp169_3_infect_sweep32_c[0] = i_cmp169_3_infect_sweep32_o[33];

    // SE_out_redist17_i_cmp169_3_infect_sweep32_c_144_fifo(STALLENABLE,706)
    // Valid signal propagation
    assign SE_out_redist17_i_cmp169_3_infect_sweep32_c_144_fifo_V0 = SE_out_redist17_i_cmp169_3_infect_sweep32_c_144_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist17_i_cmp169_3_infect_sweep32_c_144_fifo_backStall = SE_i_narrow52_infect_sweep43_backStall | ~ (SE_out_redist17_i_cmp169_3_infect_sweep32_c_144_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist17_i_cmp169_3_infect_sweep32_c_144_fifo_wireValid = redist17_i_cmp169_3_infect_sweep32_c_144_fifo_valid_out;

    // redist17_i_cmp169_3_infect_sweep32_c_144_fifo(STALLFIFO,398)
    assign redist17_i_cmp169_3_infect_sweep32_c_144_fifo_valid_in = SE_i_cmp169_3_infect_sweep32_V0;
    assign redist17_i_cmp169_3_infect_sweep32_c_144_fifo_stall_in = SE_out_redist17_i_cmp169_3_infect_sweep32_c_144_fifo_backStall;
    assign redist17_i_cmp169_3_infect_sweep32_c_144_fifo_data_in = i_cmp169_3_infect_sweep32_c;
    assign redist17_i_cmp169_3_infect_sweep32_c_144_fifo_valid_in_bitsignaltemp = redist17_i_cmp169_3_infect_sweep32_c_144_fifo_valid_in[0];
    assign redist17_i_cmp169_3_infect_sweep32_c_144_fifo_stall_in_bitsignaltemp = redist17_i_cmp169_3_infect_sweep32_c_144_fifo_stall_in[0];
    assign redist17_i_cmp169_3_infect_sweep32_c_144_fifo_valid_out[0] = redist17_i_cmp169_3_infect_sweep32_c_144_fifo_valid_out_bitsignaltemp;
    assign redist17_i_cmp169_3_infect_sweep32_c_144_fifo_stall_out[0] = redist17_i_cmp169_3_infect_sweep32_c_144_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(144),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist17_i_cmp169_3_infect_sweep32_c_144_fifo (
        .valid_in(redist17_i_cmp169_3_infect_sweep32_c_144_fifo_valid_in_bitsignaltemp),
        .stall_in(redist17_i_cmp169_3_infect_sweep32_c_144_fifo_stall_in_bitsignaltemp),
        .data_in(i_cmp169_3_infect_sweep32_c),
        .valid_out(redist17_i_cmp169_3_infect_sweep32_c_144_fifo_valid_out_bitsignaltemp),
        .stall_out(redist17_i_cmp169_3_infect_sweep32_c_144_fifo_stall_out_bitsignaltemp),
        .data_out(redist17_i_cmp169_3_infect_sweep32_c_144_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_cmp169_3_infect_sweep32(STALLENABLE,507)
    // Valid signal propagation
    assign SE_i_cmp169_3_infect_sweep32_V0 = SE_i_cmp169_3_infect_sweep32_R_v_0;
    // Stall signal propagation
    assign SE_i_cmp169_3_infect_sweep32_s_tv_0 = redist17_i_cmp169_3_infect_sweep32_c_144_fifo_stall_out & SE_i_cmp169_3_infect_sweep32_R_v_0;
    // Backward Enable generation
    assign SE_i_cmp169_3_infect_sweep32_backEN = ~ (SE_i_cmp169_3_infect_sweep32_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp169_3_infect_sweep32_v_s_0 = SE_i_cmp169_3_infect_sweep32_backEN & SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_V1;
    // Backward Stall generation
    assign SE_i_cmp169_3_infect_sweep32_backStall = ~ (SE_i_cmp169_3_infect_sweep32_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp169_3_infect_sweep32_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp169_3_infect_sweep32_backEN == 1'b0)
            begin
                SE_i_cmp169_3_infect_sweep32_R_v_0 <= SE_i_cmp169_3_infect_sweep32_R_v_0 & SE_i_cmp169_3_infect_sweep32_s_tv_0;
            end
            else
            begin
                SE_i_cmp169_3_infect_sweep32_R_v_0 <= SE_i_cmp169_3_infect_sweep32_v_s_0;
            end

        end
    end

    // i_close_end_time_3_infect_sweep0_mult_multconst_x(CONSTANT,203)
    assign i_close_end_time_3_infect_sweep0_mult_multconst_x_q = $unsigned(61'b0000000000000000000000000000000000000000000000000000000000000);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_close_start_time_3_infect_sweep0_mult_x_im0_shift0(BITSHIFT,343)@158
    assign i_close_start_time_3_infect_sweep0_mult_x_im0_shift0_qint = { i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_close_start_time_3_infect_sweep0_mult_x_im0_shift0_q = i_close_start_time_3_infect_sweep0_mult_x_im0_shift0_qint[10:0];

    // leftShiftStage0Idx1Rng2_uid315_dupName_2_i_unnamed_infect_sweep0_shift_x(BITSELECT,314)@157
    assign leftShiftStage0Idx1Rng2_uid315_dupName_2_i_unnamed_infect_sweep0_shift_x_in = bubble_select_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_b[29:0];
    assign leftShiftStage0Idx1Rng2_uid315_dupName_2_i_unnamed_infect_sweep0_shift_x_b = leftShiftStage0Idx1Rng2_uid315_dupName_2_i_unnamed_infect_sweep0_shift_x_in[29:0];

    // leftShiftStage0Idx1_uid316_dupName_2_i_unnamed_infect_sweep0_shift_x(BITJOIN,315)@157
    assign leftShiftStage0Idx1_uid316_dupName_2_i_unnamed_infect_sweep0_shift_x_q = {leftShiftStage0Idx1Rng2_uid315_dupName_2_i_unnamed_infect_sweep0_shift_x_b, i_arrayidx168_3_infect_sweep25_vt_const_1_q};

    // leftShiftStage0_uid318_dupName_2_i_unnamed_infect_sweep0_shift_x(MUX,317)@157
    assign leftShiftStage0_uid318_dupName_2_i_unnamed_infect_sweep0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid318_dupName_2_i_unnamed_infect_sweep0_shift_x_s or bubble_select_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_b or leftShiftStage0Idx1_uid316_dupName_2_i_unnamed_infect_sweep0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid318_dupName_2_i_unnamed_infect_sweep0_shift_x_s)
            1'b0 : leftShiftStage0_uid318_dupName_2_i_unnamed_infect_sweep0_shift_x_q = bubble_select_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_b;
            1'b1 : leftShiftStage0_uid318_dupName_2_i_unnamed_infect_sweep0_shift_x_q = leftShiftStage0Idx1_uid316_dupName_2_i_unnamed_infect_sweep0_shift_x_q;
            default : leftShiftStage0_uid318_dupName_2_i_unnamed_infect_sweep0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_infect_sweep20_vt_select_31(BITSELECT,88)@157
    assign i_unnamed_infect_sweep20_vt_select_31_b = leftShiftStage0_uid318_dupName_2_i_unnamed_infect_sweep0_shift_x_q[31:2];

    // i_arrayidx168_3_infect_sweep25_vt_const_1(CONSTANT,20)
    assign i_arrayidx168_3_infect_sweep25_vt_const_1_q = $unsigned(2'b00);

    // i_unnamed_infect_sweep20_vt_join(BITJOIN,87)@157
    assign i_unnamed_infect_sweep20_vt_join_q = {i_unnamed_infect_sweep20_vt_select_31_b, i_arrayidx168_3_infect_sweep25_vt_const_1_q};

    // bubble_join_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo(BITJOIN,482)
    assign bubble_join_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_q = redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_data_out;

    // bubble_select_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo(BITSELECT,483)
    assign bubble_select_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_b = $unsigned(bubble_join_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_q[31:0]);

    // i_mul171_3_add8_infect_sweep26(ADD,77)@157
    assign i_mul171_3_add8_infect_sweep26_a = {1'b0, bubble_select_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_b};
    assign i_mul171_3_add8_infect_sweep26_b = {1'b0, i_unnamed_infect_sweep20_vt_join_q};
    assign i_mul171_3_add8_infect_sweep26_o = $unsigned(i_mul171_3_add8_infect_sweep26_a) + $unsigned(i_mul171_3_add8_infect_sweep26_b);
    assign i_mul171_3_add8_infect_sweep26_q = i_mul171_3_add8_infect_sweep26_o[32:0];

    // bgTrunc_i_mul171_3_add8_infect_sweep26_sel_x(BITSELECT,161)@157
    assign bgTrunc_i_mul171_3_add8_infect_sweep26_sel_x_b = i_mul171_3_add8_infect_sweep26_q[31:0];

    // i_add177_3_infect_sweep34(ADD,19)@157
    assign i_add177_3_infect_sweep34_a = {1'b0, bubble_select_i_llvm_fpga_mem_lm145_infect_sweep31_b};
    assign i_add177_3_infect_sweep34_b = {1'b0, bgTrunc_i_mul171_3_add8_infect_sweep26_sel_x_b};
    assign i_add177_3_infect_sweep34_o = $unsigned(i_add177_3_infect_sweep34_a) + $unsigned(i_add177_3_infect_sweep34_b);
    assign i_add177_3_infect_sweep34_q = i_add177_3_infect_sweep34_o[32:0];

    // bgTrunc_i_add177_3_infect_sweep34_sel_x(BITSELECT,159)@157
    assign bgTrunc_i_add177_3_infect_sweep34_sel_x_b = i_add177_3_infect_sweep34_q[31:0];

    // redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0(REG,388)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_add177_3_infect_sweep34_sel_x_b);
        end
    end

    // i_idxprom178_3_infect_sweep35_sel_x(BITSELECT,219)@158
    assign i_idxprom178_3_infect_sweep35_sel_x_b = $unsigned({{32{redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_q[31]}}, redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_q[31:0]});

    // i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select(BITSELECT,356)@158
    assign i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select_b = i_idxprom178_3_infect_sweep35_sel_x_b[63:54];
    assign i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select_c = i_idxprom178_3_infect_sweep35_sel_x_b[53:36];
    assign i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select_d = i_idxprom178_3_infect_sweep35_sel_x_b[35:18];
    assign i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select_e = i_idxprom178_3_infect_sweep35_sel_x_b[17:0];

    // i_close_start_time_3_infect_sweep0_mult_x_im0_add_1(ADD,344)@158
    assign i_close_start_time_3_infect_sweep0_mult_x_im0_add_1_a = {2'b00, i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select_b};
    assign i_close_start_time_3_infect_sweep0_mult_x_im0_add_1_b = {1'b0, i_close_start_time_3_infect_sweep0_mult_x_im0_shift0_q};
    assign i_close_start_time_3_infect_sweep0_mult_x_im0_add_1_o = $unsigned(i_close_start_time_3_infect_sweep0_mult_x_im0_add_1_a) + $unsigned(i_close_start_time_3_infect_sweep0_mult_x_im0_add_1_b);
    assign i_close_start_time_3_infect_sweep0_mult_x_im0_add_1_q = i_close_start_time_3_infect_sweep0_mult_x_im0_add_1_o[11:0];

    // i_close_start_time_3_infect_sweep0_mult_x_im0_shift2(BITSHIFT,345)@158
    assign i_close_start_time_3_infect_sweep0_mult_x_im0_shift2_qint = { i_close_start_time_3_infect_sweep0_mult_x_im0_add_1_q, 1'b0 };
    assign i_close_start_time_3_infect_sweep0_mult_x_im0_shift2_q = i_close_start_time_3_infect_sweep0_mult_x_im0_shift2_qint[12:0];

    // i_close_start_time_3_infect_sweep0_mult_x_sums_align_3(BITSHIFT,300)@158
    assign i_close_start_time_3_infect_sweep0_mult_x_sums_align_3_qint = { i_close_start_time_3_infect_sweep0_mult_x_im0_shift2_q, 15'b000000000000000 };
    assign i_close_start_time_3_infect_sweep0_mult_x_sums_align_3_q = i_close_start_time_3_infect_sweep0_mult_x_sums_align_3_qint[27:0];

    // i_close_start_time_3_infect_sweep0_mult_x_im6_shift0(BITSHIFT,349)@158
    assign i_close_start_time_3_infect_sweep0_mult_x_im6_shift0_qint = { i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_close_start_time_3_infect_sweep0_mult_x_im6_shift0_q = i_close_start_time_3_infect_sweep0_mult_x_im6_shift0_qint[18:0];

    // i_close_start_time_3_infect_sweep0_mult_x_im6_add_1(ADD,350)@158
    assign i_close_start_time_3_infect_sweep0_mult_x_im6_add_1_a = {2'b00, i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select_d};
    assign i_close_start_time_3_infect_sweep0_mult_x_im6_add_1_b = {1'b0, i_close_start_time_3_infect_sweep0_mult_x_im6_shift0_q};
    assign i_close_start_time_3_infect_sweep0_mult_x_im6_add_1_o = $unsigned(i_close_start_time_3_infect_sweep0_mult_x_im6_add_1_a) + $unsigned(i_close_start_time_3_infect_sweep0_mult_x_im6_add_1_b);
    assign i_close_start_time_3_infect_sweep0_mult_x_im6_add_1_q = i_close_start_time_3_infect_sweep0_mult_x_im6_add_1_o[19:0];

    // i_close_start_time_3_infect_sweep0_mult_x_im6_shift2(BITSHIFT,351)@158
    assign i_close_start_time_3_infect_sweep0_mult_x_im6_shift2_qint = { i_close_start_time_3_infect_sweep0_mult_x_im6_add_1_q, 1'b0 };
    assign i_close_start_time_3_infect_sweep0_mult_x_im6_shift2_q = i_close_start_time_3_infect_sweep0_mult_x_im6_shift2_qint[20:0];

    // i_close_start_time_3_infect_sweep0_mult_x_sums_align_2(BITSHIFT,299)@158
    assign i_close_start_time_3_infect_sweep0_mult_x_sums_align_2_qint = { i_close_start_time_3_infect_sweep0_mult_x_im6_shift2_q, 18'b000000000000000000 };
    assign i_close_start_time_3_infect_sweep0_mult_x_sums_align_2_q = i_close_start_time_3_infect_sweep0_mult_x_sums_align_2_qint[38:0];

    // i_close_start_time_3_infect_sweep0_mult_x_sums_join_4(BITJOIN,301)@158
    assign i_close_start_time_3_infect_sweep0_mult_x_sums_join_4_q = {i_close_start_time_3_infect_sweep0_mult_x_sums_align_3_q, i_close_start_time_3_infect_sweep0_mult_x_sums_align_2_q};

    // i_close_start_time_3_infect_sweep0_mult_x_im3_shift0(BITSHIFT,346)@158
    assign i_close_start_time_3_infect_sweep0_mult_x_im3_shift0_qint = { i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_close_start_time_3_infect_sweep0_mult_x_im3_shift0_q = i_close_start_time_3_infect_sweep0_mult_x_im3_shift0_qint[18:0];

    // i_close_start_time_3_infect_sweep0_mult_x_im3_add_1(ADD,347)@158
    assign i_close_start_time_3_infect_sweep0_mult_x_im3_add_1_a = {2'b00, i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select_c};
    assign i_close_start_time_3_infect_sweep0_mult_x_im3_add_1_b = {1'b0, i_close_start_time_3_infect_sweep0_mult_x_im3_shift0_q};
    assign i_close_start_time_3_infect_sweep0_mult_x_im3_add_1_o = $unsigned(i_close_start_time_3_infect_sweep0_mult_x_im3_add_1_a) + $unsigned(i_close_start_time_3_infect_sweep0_mult_x_im3_add_1_b);
    assign i_close_start_time_3_infect_sweep0_mult_x_im3_add_1_q = i_close_start_time_3_infect_sweep0_mult_x_im3_add_1_o[19:0];

    // i_close_start_time_3_infect_sweep0_mult_x_im3_shift2(BITSHIFT,348)@158
    assign i_close_start_time_3_infect_sweep0_mult_x_im3_shift2_qint = { i_close_start_time_3_infect_sweep0_mult_x_im3_add_1_q, 1'b0 };
    assign i_close_start_time_3_infect_sweep0_mult_x_im3_shift2_q = i_close_start_time_3_infect_sweep0_mult_x_im3_shift2_qint[20:0];

    // i_close_start_time_3_infect_sweep0_mult_x_sums_align_0(BITSHIFT,297)@158
    assign i_close_start_time_3_infect_sweep0_mult_x_sums_align_0_qint = { i_close_start_time_3_infect_sweep0_mult_x_im3_shift2_q, 15'b000000000000000 };
    assign i_close_start_time_3_infect_sweep0_mult_x_sums_align_0_q = i_close_start_time_3_infect_sweep0_mult_x_sums_align_0_qint[35:0];

    // i_close_start_time_3_infect_sweep0_mult_x_im9_shift0(BITSHIFT,352)@158
    assign i_close_start_time_3_infect_sweep0_mult_x_im9_shift0_qint = { i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_close_start_time_3_infect_sweep0_mult_x_im9_shift0_q = i_close_start_time_3_infect_sweep0_mult_x_im9_shift0_qint[18:0];

    // i_close_start_time_3_infect_sweep0_mult_x_im9_add_1(ADD,353)@158
    assign i_close_start_time_3_infect_sweep0_mult_x_im9_add_1_a = {2'b00, i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select_e};
    assign i_close_start_time_3_infect_sweep0_mult_x_im9_add_1_b = {1'b0, i_close_start_time_3_infect_sweep0_mult_x_im9_shift0_q};
    assign i_close_start_time_3_infect_sweep0_mult_x_im9_add_1_o = $unsigned(i_close_start_time_3_infect_sweep0_mult_x_im9_add_1_a) + $unsigned(i_close_start_time_3_infect_sweep0_mult_x_im9_add_1_b);
    assign i_close_start_time_3_infect_sweep0_mult_x_im9_add_1_q = i_close_start_time_3_infect_sweep0_mult_x_im9_add_1_o[19:0];

    // i_close_start_time_3_infect_sweep0_mult_x_im9_shift2(BITSHIFT,354)@158
    assign i_close_start_time_3_infect_sweep0_mult_x_im9_shift2_qint = { i_close_start_time_3_infect_sweep0_mult_x_im9_add_1_q, 1'b0 };
    assign i_close_start_time_3_infect_sweep0_mult_x_im9_shift2_q = i_close_start_time_3_infect_sweep0_mult_x_im9_shift2_qint[20:0];

    // i_close_start_time_3_infect_sweep0_mult_x_sums_join_1(BITJOIN,298)@158
    assign i_close_start_time_3_infect_sweep0_mult_x_sums_join_1_q = {i_close_start_time_3_infect_sweep0_mult_x_sums_align_0_q, i_close_start_time_3_infect_sweep0_mult_x_im9_shift2_q};

    // i_close_start_time_3_infect_sweep0_mult_x_sums_result_add_0_0(ADD,302)@158
    assign i_close_start_time_3_infect_sweep0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_close_start_time_3_infect_sweep0_mult_x_sums_join_1_q};
    assign i_close_start_time_3_infect_sweep0_mult_x_sums_result_add_0_0_b = {1'b0, i_close_start_time_3_infect_sweep0_mult_x_sums_join_4_q};
    assign i_close_start_time_3_infect_sweep0_mult_x_sums_result_add_0_0_o = $unsigned(i_close_start_time_3_infect_sweep0_mult_x_sums_result_add_0_0_a) + $unsigned(i_close_start_time_3_infect_sweep0_mult_x_sums_result_add_0_0_b);
    assign i_close_start_time_3_infect_sweep0_mult_x_sums_result_add_0_0_q = i_close_start_time_3_infect_sweep0_mult_x_sums_result_add_0_0_o[67:0];

    // i_close_start_time_3_infect_sweep0_mult_extender_x(BITJOIN,213)@158
    assign i_close_start_time_3_infect_sweep0_mult_extender_x_q = {i_close_end_time_3_infect_sweep0_mult_multconst_x_q, i_close_start_time_3_infect_sweep0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_close_start_time_3_infect_sweep0_trunc_sel_x(BITSELECT,215)@158
    assign i_close_start_time_3_infect_sweep0_trunc_sel_x_b = i_close_start_time_3_infect_sweep0_mult_extender_x_q[63:0];

    // redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0(REG,384)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_q <= $unsigned(i_close_start_time_3_infect_sweep0_trunc_sel_x_b);
        end
    end

    // SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8(STALLENABLE,806)
    // Valid signal propagation
    assign SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_V0 = SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_backStall = i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_out_stall_out | ~ (SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_wireValid = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg_valid_out;

    // i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3(BLACKBOX,72)@159
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_sync_buffer_p100000aces_sync_buffer35_0 thei_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3 (
        .in_buffer_in(in_Places),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_backStall),
        .in_valid_in(SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3(BITJOIN,444)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_q = i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3(BITSELECT,445)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_vt_select_63(BITSELECT,75)@159
    assign i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_vt_const_9(CONSTANT,65)
    assign i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_vt_join(BITJOIN,74)@159
    assign i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_vt_join_q = {i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_vt_const_9_q};

    // i_close_start_time_3_infect_sweep0_add_x(ADD,207)@159
    assign i_close_start_time_3_infect_sweep0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_vt_join_q};
    assign i_close_start_time_3_infect_sweep0_add_x_b = {1'b0, redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_q};
    assign i_close_start_time_3_infect_sweep0_add_x_o = $unsigned(i_close_start_time_3_infect_sweep0_add_x_a) + $unsigned(i_close_start_time_3_infect_sweep0_add_x_b);
    assign i_close_start_time_3_infect_sweep0_add_x_q = i_close_start_time_3_infect_sweep0_add_x_o[64:0];

    // i_close_start_time_3_infect_sweep0_dupName_0_trunc_sel_x(BITSELECT,216)@159
    assign i_close_start_time_3_infect_sweep0_dupName_0_trunc_sel_x_b = i_close_start_time_3_infect_sweep0_add_x_q[63:0];

    // i_close_start_time_3_infect_sweep36_vt_select_63(BITSELECT,31)@159
    assign i_close_start_time_3_infect_sweep36_vt_select_63_b = i_close_start_time_3_infect_sweep0_dupName_0_trunc_sel_x_b[63:1];

    // i_close_start_time_3_infect_sweep36_vt_join(BITJOIN,30)@159
    assign i_close_start_time_3_infect_sweep36_vt_join_q = {i_close_start_time_3_infect_sweep36_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_lm21_infect_sweep38(BLACKBOX,53)@159
    // in in_i_stall@20000000
    // out out_lm21_infect_sweep_avm_address@20000000
    // out out_lm21_infect_sweep_avm_burstcount@20000000
    // out out_lm21_infect_sweep_avm_byteenable@20000000
    // out out_lm21_infect_sweep_avm_enable@20000000
    // out out_lm21_infect_sweep_avm_read@20000000
    // out out_lm21_infect_sweep_avm_write@20000000
    // out out_lm21_infect_sweep_avm_writedata@20000000
    // out out_o_readdata@301
    // out out_o_stall@20000000
    // out out_o_valid@301
    infect_sweep_i_llvm_fpga_mem_lm21_0 thei_llvm_fpga_mem_lm21_infect_sweep38 (
        .in_flush(in_flush),
        .in_i_address(i_close_start_time_3_infect_sweep36_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm24_infect_sweep39_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_V0),
        .in_lm21_infect_sweep_avm_readdata(in_lm21_infect_sweep_avm_readdata),
        .in_lm21_infect_sweep_avm_readdatavalid(in_lm21_infect_sweep_avm_readdatavalid),
        .in_lm21_infect_sweep_avm_waitrequest(in_lm21_infect_sweep_avm_waitrequest),
        .in_lm21_infect_sweep_avm_writeack(in_lm21_infect_sweep_avm_writeack),
        .out_lm21_infect_sweep_avm_address(i_llvm_fpga_mem_lm21_infect_sweep38_out_lm21_infect_sweep_avm_address),
        .out_lm21_infect_sweep_avm_burstcount(i_llvm_fpga_mem_lm21_infect_sweep38_out_lm21_infect_sweep_avm_burstcount),
        .out_lm21_infect_sweep_avm_byteenable(i_llvm_fpga_mem_lm21_infect_sweep38_out_lm21_infect_sweep_avm_byteenable),
        .out_lm21_infect_sweep_avm_enable(i_llvm_fpga_mem_lm21_infect_sweep38_out_lm21_infect_sweep_avm_enable),
        .out_lm21_infect_sweep_avm_read(i_llvm_fpga_mem_lm21_infect_sweep38_out_lm21_infect_sweep_avm_read),
        .out_lm21_infect_sweep_avm_write(i_llvm_fpga_mem_lm21_infect_sweep38_out_lm21_infect_sweep_avm_write),
        .out_lm21_infect_sweep_avm_writedata(i_llvm_fpga_mem_lm21_infect_sweep38_out_lm21_infect_sweep_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm21_infect_sweep38_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm21_infect_sweep38_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm21_infect_sweep38_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_lm24_infect_sweep39(STALLENABLE,532)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm24_infect_sweep39_V0 = SE_out_i_llvm_fpga_mem_lm24_infect_sweep39_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm24_infect_sweep39_backStall = SE_i_narrow52_infect_sweep43_backStall | ~ (SE_out_i_llvm_fpga_mem_lm24_infect_sweep39_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm24_infect_sweep39_and0 = i_llvm_fpga_mem_lm24_infect_sweep39_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_lm24_infect_sweep39_wireValid = i_llvm_fpga_mem_lm21_infect_sweep38_out_o_valid & SE_out_i_llvm_fpga_mem_lm24_infect_sweep39_and0;

    // i_close_end_time_3_infect_sweep0_c_i64_22_x(CONSTANT,194)
    assign i_close_end_time_3_infect_sweep0_c_i64_22_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000010);

    // i_close_end_time_3_infect_sweep0_mult_x_im0_shift0(BITSHIFT,331)@158
    assign i_close_end_time_3_infect_sweep0_mult_x_im0_shift0_qint = { i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_close_end_time_3_infect_sweep0_mult_x_im0_shift0_q = i_close_end_time_3_infect_sweep0_mult_x_im0_shift0_qint[10:0];

    // i_close_end_time_3_infect_sweep0_mult_x_im0_add_1(ADD,332)@158
    assign i_close_end_time_3_infect_sweep0_mult_x_im0_add_1_a = {2'b00, i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select_b};
    assign i_close_end_time_3_infect_sweep0_mult_x_im0_add_1_b = {1'b0, i_close_end_time_3_infect_sweep0_mult_x_im0_shift0_q};
    assign i_close_end_time_3_infect_sweep0_mult_x_im0_add_1_o = $unsigned(i_close_end_time_3_infect_sweep0_mult_x_im0_add_1_a) + $unsigned(i_close_end_time_3_infect_sweep0_mult_x_im0_add_1_b);
    assign i_close_end_time_3_infect_sweep0_mult_x_im0_add_1_q = i_close_end_time_3_infect_sweep0_mult_x_im0_add_1_o[11:0];

    // i_close_end_time_3_infect_sweep0_mult_x_im0_shift2(BITSHIFT,333)@158
    assign i_close_end_time_3_infect_sweep0_mult_x_im0_shift2_qint = { i_close_end_time_3_infect_sweep0_mult_x_im0_add_1_q, 1'b0 };
    assign i_close_end_time_3_infect_sweep0_mult_x_im0_shift2_q = i_close_end_time_3_infect_sweep0_mult_x_im0_shift2_qint[12:0];

    // i_close_end_time_3_infect_sweep0_mult_x_sums_align_3(BITSHIFT,282)@158
    assign i_close_end_time_3_infect_sweep0_mult_x_sums_align_3_qint = { i_close_end_time_3_infect_sweep0_mult_x_im0_shift2_q, 15'b000000000000000 };
    assign i_close_end_time_3_infect_sweep0_mult_x_sums_align_3_q = i_close_end_time_3_infect_sweep0_mult_x_sums_align_3_qint[27:0];

    // i_close_end_time_3_infect_sweep0_mult_x_im6_shift0(BITSHIFT,337)@158
    assign i_close_end_time_3_infect_sweep0_mult_x_im6_shift0_qint = { i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_close_end_time_3_infect_sweep0_mult_x_im6_shift0_q = i_close_end_time_3_infect_sweep0_mult_x_im6_shift0_qint[18:0];

    // i_close_end_time_3_infect_sweep0_mult_x_im6_add_1(ADD,338)@158
    assign i_close_end_time_3_infect_sweep0_mult_x_im6_add_1_a = {2'b00, i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select_d};
    assign i_close_end_time_3_infect_sweep0_mult_x_im6_add_1_b = {1'b0, i_close_end_time_3_infect_sweep0_mult_x_im6_shift0_q};
    assign i_close_end_time_3_infect_sweep0_mult_x_im6_add_1_o = $unsigned(i_close_end_time_3_infect_sweep0_mult_x_im6_add_1_a) + $unsigned(i_close_end_time_3_infect_sweep0_mult_x_im6_add_1_b);
    assign i_close_end_time_3_infect_sweep0_mult_x_im6_add_1_q = i_close_end_time_3_infect_sweep0_mult_x_im6_add_1_o[19:0];

    // i_close_end_time_3_infect_sweep0_mult_x_im6_shift2(BITSHIFT,339)@158
    assign i_close_end_time_3_infect_sweep0_mult_x_im6_shift2_qint = { i_close_end_time_3_infect_sweep0_mult_x_im6_add_1_q, 1'b0 };
    assign i_close_end_time_3_infect_sweep0_mult_x_im6_shift2_q = i_close_end_time_3_infect_sweep0_mult_x_im6_shift2_qint[20:0];

    // i_close_end_time_3_infect_sweep0_mult_x_sums_align_2(BITSHIFT,281)@158
    assign i_close_end_time_3_infect_sweep0_mult_x_sums_align_2_qint = { i_close_end_time_3_infect_sweep0_mult_x_im6_shift2_q, 18'b000000000000000000 };
    assign i_close_end_time_3_infect_sweep0_mult_x_sums_align_2_q = i_close_end_time_3_infect_sweep0_mult_x_sums_align_2_qint[38:0];

    // i_close_end_time_3_infect_sweep0_mult_x_sums_join_4(BITJOIN,283)@158
    assign i_close_end_time_3_infect_sweep0_mult_x_sums_join_4_q = {i_close_end_time_3_infect_sweep0_mult_x_sums_align_3_q, i_close_end_time_3_infect_sweep0_mult_x_sums_align_2_q};

    // i_close_end_time_3_infect_sweep0_mult_x_im3_shift0(BITSHIFT,334)@158
    assign i_close_end_time_3_infect_sweep0_mult_x_im3_shift0_qint = { i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_close_end_time_3_infect_sweep0_mult_x_im3_shift0_q = i_close_end_time_3_infect_sweep0_mult_x_im3_shift0_qint[18:0];

    // i_close_end_time_3_infect_sweep0_mult_x_im3_add_1(ADD,335)@158
    assign i_close_end_time_3_infect_sweep0_mult_x_im3_add_1_a = {2'b00, i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select_c};
    assign i_close_end_time_3_infect_sweep0_mult_x_im3_add_1_b = {1'b0, i_close_end_time_3_infect_sweep0_mult_x_im3_shift0_q};
    assign i_close_end_time_3_infect_sweep0_mult_x_im3_add_1_o = $unsigned(i_close_end_time_3_infect_sweep0_mult_x_im3_add_1_a) + $unsigned(i_close_end_time_3_infect_sweep0_mult_x_im3_add_1_b);
    assign i_close_end_time_3_infect_sweep0_mult_x_im3_add_1_q = i_close_end_time_3_infect_sweep0_mult_x_im3_add_1_o[19:0];

    // i_close_end_time_3_infect_sweep0_mult_x_im3_shift2(BITSHIFT,336)@158
    assign i_close_end_time_3_infect_sweep0_mult_x_im3_shift2_qint = { i_close_end_time_3_infect_sweep0_mult_x_im3_add_1_q, 1'b0 };
    assign i_close_end_time_3_infect_sweep0_mult_x_im3_shift2_q = i_close_end_time_3_infect_sweep0_mult_x_im3_shift2_qint[20:0];

    // i_close_end_time_3_infect_sweep0_mult_x_sums_align_0(BITSHIFT,279)@158
    assign i_close_end_time_3_infect_sweep0_mult_x_sums_align_0_qint = { i_close_end_time_3_infect_sweep0_mult_x_im3_shift2_q, 15'b000000000000000 };
    assign i_close_end_time_3_infect_sweep0_mult_x_sums_align_0_q = i_close_end_time_3_infect_sweep0_mult_x_sums_align_0_qint[35:0];

    // i_close_end_time_3_infect_sweep0_mult_x_im9_shift0(BITSHIFT,340)@158
    assign i_close_end_time_3_infect_sweep0_mult_x_im9_shift0_qint = { i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_close_end_time_3_infect_sweep0_mult_x_im9_shift0_q = i_close_end_time_3_infect_sweep0_mult_x_im9_shift0_qint[18:0];

    // i_close_end_time_3_infect_sweep0_mult_x_im9_add_1(ADD,341)@158
    assign i_close_end_time_3_infect_sweep0_mult_x_im9_add_1_a = {2'b00, i_close_end_time_3_infect_sweep0_mult_x_bs1_merged_bit_select_e};
    assign i_close_end_time_3_infect_sweep0_mult_x_im9_add_1_b = {1'b0, i_close_end_time_3_infect_sweep0_mult_x_im9_shift0_q};
    assign i_close_end_time_3_infect_sweep0_mult_x_im9_add_1_o = $unsigned(i_close_end_time_3_infect_sweep0_mult_x_im9_add_1_a) + $unsigned(i_close_end_time_3_infect_sweep0_mult_x_im9_add_1_b);
    assign i_close_end_time_3_infect_sweep0_mult_x_im9_add_1_q = i_close_end_time_3_infect_sweep0_mult_x_im9_add_1_o[19:0];

    // i_close_end_time_3_infect_sweep0_mult_x_im9_shift2(BITSHIFT,342)@158
    assign i_close_end_time_3_infect_sweep0_mult_x_im9_shift2_qint = { i_close_end_time_3_infect_sweep0_mult_x_im9_add_1_q, 1'b0 };
    assign i_close_end_time_3_infect_sweep0_mult_x_im9_shift2_q = i_close_end_time_3_infect_sweep0_mult_x_im9_shift2_qint[20:0];

    // i_close_end_time_3_infect_sweep0_mult_x_sums_join_1(BITJOIN,280)@158
    assign i_close_end_time_3_infect_sweep0_mult_x_sums_join_1_q = {i_close_end_time_3_infect_sweep0_mult_x_sums_align_0_q, i_close_end_time_3_infect_sweep0_mult_x_im9_shift2_q};

    // i_close_end_time_3_infect_sweep0_mult_x_sums_result_add_0_0(ADD,284)@158
    assign i_close_end_time_3_infect_sweep0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_close_end_time_3_infect_sweep0_mult_x_sums_join_1_q};
    assign i_close_end_time_3_infect_sweep0_mult_x_sums_result_add_0_0_b = {1'b0, i_close_end_time_3_infect_sweep0_mult_x_sums_join_4_q};
    assign i_close_end_time_3_infect_sweep0_mult_x_sums_result_add_0_0_o = $unsigned(i_close_end_time_3_infect_sweep0_mult_x_sums_result_add_0_0_a) + $unsigned(i_close_end_time_3_infect_sweep0_mult_x_sums_result_add_0_0_b);
    assign i_close_end_time_3_infect_sweep0_mult_x_sums_result_add_0_0_q = i_close_end_time_3_infect_sweep0_mult_x_sums_result_add_0_0_o[67:0];

    // i_close_end_time_3_infect_sweep0_mult_extender_x(BITJOIN,202)@158
    assign i_close_end_time_3_infect_sweep0_mult_extender_x_q = {i_close_end_time_3_infect_sweep0_mult_multconst_x_q, i_close_end_time_3_infect_sweep0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_close_end_time_3_infect_sweep0_trunc_sel_x(BITSELECT,204)@158
    assign i_close_end_time_3_infect_sweep0_trunc_sel_x_b = i_close_end_time_3_infect_sweep0_mult_extender_x_q[63:0];

    // redist7_i_close_end_time_3_infect_sweep0_trunc_sel_x_b_1_0(REG,385)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_close_end_time_3_infect_sweep0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist7_i_close_end_time_3_infect_sweep0_trunc_sel_x_b_1_0_q <= $unsigned(i_close_end_time_3_infect_sweep0_trunc_sel_x_b);
        end
    end

    // bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5(BITJOIN,441)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_q = i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5(BITSELECT,442)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_vt_select_63(BITSELECT,71)@159
    assign i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_vt_join(BITJOIN,70)@159
    assign i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_vt_join_q = {i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_vt_const_9_q};

    // i_close_end_time_3_infect_sweep0_add_x(ADD,193)@159
    assign i_close_end_time_3_infect_sweep0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_vt_join_q};
    assign i_close_end_time_3_infect_sweep0_add_x_b = {1'b0, redist7_i_close_end_time_3_infect_sweep0_trunc_sel_x_b_1_0_q};
    assign i_close_end_time_3_infect_sweep0_add_x_o = $unsigned(i_close_end_time_3_infect_sweep0_add_x_a) + $unsigned(i_close_end_time_3_infect_sweep0_add_x_b);
    assign i_close_end_time_3_infect_sweep0_add_x_q = i_close_end_time_3_infect_sweep0_add_x_o[64:0];

    // i_close_end_time_3_infect_sweep0_dupName_0_trunc_sel_x(BITSELECT,205)@159
    assign i_close_end_time_3_infect_sweep0_dupName_0_trunc_sel_x_b = i_close_end_time_3_infect_sweep0_add_x_q[63:0];

    // i_close_end_time_3_infect_sweep0_dupName_0_add_x(ADD,199)@159
    assign i_close_end_time_3_infect_sweep0_dupName_0_add_x_a = {1'b0, i_close_end_time_3_infect_sweep0_dupName_0_trunc_sel_x_b};
    assign i_close_end_time_3_infect_sweep0_dupName_0_add_x_b = {1'b0, i_close_end_time_3_infect_sweep0_c_i64_22_x_q};
    assign i_close_end_time_3_infect_sweep0_dupName_0_add_x_o = $unsigned(i_close_end_time_3_infect_sweep0_dupName_0_add_x_a) + $unsigned(i_close_end_time_3_infect_sweep0_dupName_0_add_x_b);
    assign i_close_end_time_3_infect_sweep0_dupName_0_add_x_q = i_close_end_time_3_infect_sweep0_dupName_0_add_x_o[64:0];

    // i_close_end_time_3_infect_sweep0_dupName_1_trunc_sel_x(BITSELECT,206)@159
    assign i_close_end_time_3_infect_sweep0_dupName_1_trunc_sel_x_b = i_close_end_time_3_infect_sweep0_dupName_0_add_x_q[63:0];

    // i_close_end_time_3_infect_sweep37_vt_select_63(BITSELECT,28)@159
    assign i_close_end_time_3_infect_sweep37_vt_select_63_b = i_close_end_time_3_infect_sweep0_dupName_1_trunc_sel_x_b[63:1];

    // i_close_end_time_3_infect_sweep37_vt_join(BITJOIN,27)@159
    assign i_close_end_time_3_infect_sweep37_vt_join_q = {i_close_end_time_3_infect_sweep37_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_lm24_infect_sweep39(BLACKBOX,54)@159
    // in in_i_stall@20000000
    // out out_lm24_infect_sweep_avm_address@20000000
    // out out_lm24_infect_sweep_avm_burstcount@20000000
    // out out_lm24_infect_sweep_avm_byteenable@20000000
    // out out_lm24_infect_sweep_avm_enable@20000000
    // out out_lm24_infect_sweep_avm_read@20000000
    // out out_lm24_infect_sweep_avm_write@20000000
    // out out_lm24_infect_sweep_avm_writedata@20000000
    // out out_o_readdata@301
    // out out_o_stall@20000000
    // out out_o_valid@301
    infect_sweep_i_llvm_fpga_mem_lm24_0 thei_llvm_fpga_mem_lm24_infect_sweep39 (
        .in_flush(in_flush),
        .in_i_address(i_close_end_time_3_infect_sweep37_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm24_infect_sweep39_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_V0),
        .in_lm24_infect_sweep_avm_readdata(in_lm24_infect_sweep_avm_readdata),
        .in_lm24_infect_sweep_avm_readdatavalid(in_lm24_infect_sweep_avm_readdatavalid),
        .in_lm24_infect_sweep_avm_waitrequest(in_lm24_infect_sweep_avm_waitrequest),
        .in_lm24_infect_sweep_avm_writeack(in_lm24_infect_sweep_avm_writeack),
        .out_lm24_infect_sweep_avm_address(i_llvm_fpga_mem_lm24_infect_sweep39_out_lm24_infect_sweep_avm_address),
        .out_lm24_infect_sweep_avm_burstcount(i_llvm_fpga_mem_lm24_infect_sweep39_out_lm24_infect_sweep_avm_burstcount),
        .out_lm24_infect_sweep_avm_byteenable(i_llvm_fpga_mem_lm24_infect_sweep39_out_lm24_infect_sweep_avm_byteenable),
        .out_lm24_infect_sweep_avm_enable(i_llvm_fpga_mem_lm24_infect_sweep39_out_lm24_infect_sweep_avm_enable),
        .out_lm24_infect_sweep_avm_read(i_llvm_fpga_mem_lm24_infect_sweep39_out_lm24_infect_sweep_avm_read),
        .out_lm24_infect_sweep_avm_write(i_llvm_fpga_mem_lm24_infect_sweep39_out_lm24_infect_sweep_avm_write),
        .out_lm24_infect_sweep_avm_writedata(i_llvm_fpga_mem_lm24_infect_sweep39_out_lm24_infect_sweep_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm24_infect_sweep39_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm24_infect_sweep39_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm24_infect_sweep39_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9(STALLENABLE,808)
    // Valid signal propagation
    assign SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_V0 = SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_backStall = i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_out_stall_out | ~ (SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_wireValid = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg_valid_out;

    // i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5(BLACKBOX,68)@159
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_sync_buffer_p100000aces_sync_buffer34_0 thei_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5 (
        .in_buffer_in(in_Places),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_backStall),
        .in_valid_in(SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_V0),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5(STALLENABLE,556)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_V0 = SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_backStall = i_llvm_fpga_mem_lm24_infect_sweep39_out_o_stall | ~ (SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_and0 = i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_wireValid = SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_V1 & SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_and0;

    // SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3(STALLENABLE,560)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_V0 = SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_backStall = i_llvm_fpga_mem_lm21_infect_sweep38_out_o_stall | ~ (SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_and0 = i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_wireValid = SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_V0 & SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_and0;

    // SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0(STALLENABLE,687)
    // Valid signal propagation
    assign SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_V0 = SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_R_v_0;
    assign SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_V1 = SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer35_infect_sweep3_backStall & SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_R_v_0;
    assign SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_s_tv_1 = SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_places_places_sync_buffer34_infect_sweep5_backStall & SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_or0 = SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_s_tv_0;
    assign SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_backEN = ~ (SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_s_tv_1 | SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_v_s_0 = SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_backEN & SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_V0;
    // Backward Stall generation
    assign SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_backStall = ~ (SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_R_v_0 & SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_R_v_1 <= SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_R_v_1 & SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_R_v_1 <= SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0(STALLENABLE,691)
    // Valid signal propagation
    assign SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_V0 = SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_s_tv_0 = SE_redist6_i_close_start_time_3_infect_sweep0_trunc_sel_x_b_1_0_backStall & SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_backEN = ~ (SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_v_s_0 = SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_backEN & SE_out_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_V0;
    // Backward Stall generation
    assign SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_backStall = ~ (SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_R_v_0 <= SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_R_v_0 & SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_R_v_0 <= SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12(BITJOIN,435)
    assign bubble_join_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_q = i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12(BITSELECT,436)
    assign bubble_select_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_q[31:0]);

    // redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo(STALLFIFO,389)
    assign redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_V0;
    assign redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_stall_in = SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_backStall;
    assign redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_data_in = bubble_select_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_b;
    assign redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_valid_in_bitsignaltemp = redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_valid_in[0];
    assign redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_stall_in_bitsignaltemp = redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_stall_in[0];
    assign redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_valid_out[0] = redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_valid_out_bitsignaltemp;
    assign redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_stall_out[0] = redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(18),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo (
        .valid_in(redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_valid_in_bitsignaltemp),
        .stall_in(redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_b),
        .valid_out(redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_valid_out_bitsignaltemp),
        .stall_out(redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_stall_out_bitsignaltemp),
        .data_out(redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo(BITJOIN,479)
    assign bubble_join_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_q = redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_data_out;

    // bubble_select_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo(BITSELECT,480)
    assign bubble_select_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_b = $unsigned(bubble_join_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_q[31:0]);

    // SE_out_i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27(STALLENABLE,550)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_wireValid = i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_out_valid_out;

    // bubble_join_i_llvm_fpga_pipeline_keep_going96_infect_sweep10(BITJOIN,425)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_q = i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going96_infect_sweep10(BITSELECT,426)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_q[0:0]);

    // redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0(REG,391)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_backEN == 1'b1)
        begin
            redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_b);
        end
    end

    // c_i32_160(CONSTANT,12)
    assign c_i32_160_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_3_infect_sweep21(ADD,43)@20
    assign i_inc_3_infect_sweep21_a = {1'b0, bubble_select_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_b};
    assign i_inc_3_infect_sweep21_b = {1'b0, c_i32_160_q};
    assign i_inc_3_infect_sweep21_o = $unsigned(i_inc_3_infect_sweep21_a) + $unsigned(i_inc_3_infect_sweep21_b);
    assign i_inc_3_infect_sweep21_q = i_inc_3_infect_sweep21_o[32:0];

    // bgTrunc_i_inc_3_infect_sweep21_sel_x(BITSELECT,160)@20
    assign bgTrunc_i_inc_3_infect_sweep21_sel_x_b = i_inc_3_infect_sweep21_q[31:0];

    // i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27(BLACKBOX,63)@20
    // in in_stall_in@20000000
    // out out_data_out@21
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@21
    infect_sweep_i_llvm_fpga_push_i32_i2_0182_3_push23_0 thei_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27 (
        .in_data_in(bgTrunc_i_inc_3_infect_sweep21_sel_x_b),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_feedback_stall_out_23),
        .in_keep_going96(redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_V0),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_out_feedback_valid_out_23),
        .out_stall_out(i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo(BITJOIN,485)
    assign bubble_join_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_q = redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_data_out;

    // bubble_select_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo(BITSELECT,486)
    assign bubble_select_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_b = $unsigned(bubble_join_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_q[0:0]);

    // bubble_join_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo(BITJOIN,488)
    assign bubble_join_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_q = redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_data_out;

    // bubble_select_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo(BITSELECT,489)
    assign bubble_select_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_b = $unsigned(bubble_join_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_q[0:0]);

    // redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0(REG,394)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_backEN == 1'b1)
        begin
            redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_q <= $unsigned(bubble_select_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_b);
        end
    end

    // redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1(REG,395)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_backEN == 1'b1)
        begin
            redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_q <= $unsigned(redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_q);
        end
    end

    // redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2(REG,396)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_backEN == 1'b1)
        begin
            redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_q <= $unsigned(redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_q);
        end
    end

    // SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3(STALLENABLE,704)
    // Valid signal propagation
    assign SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_V0 = SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_R_v_0;
    // Stall signal propagation
    assign SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_s_tv_0 = SE_leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_backStall & SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_R_v_0;
    // Backward Enable generation
    assign SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_backEN = ~ (SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_v_s_0 = SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_backEN & SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_V;
    // Backward Stall generation
    assign SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_backStall = ~ (SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_backEN == 1'b0)
            begin
                SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_R_v_0 <= SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_R_v_0 & SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_s_tv_0;
            end
            else
            begin
                SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_R_v_0 <= SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_v_s_0;
            end

        end
    end

    // SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3(STALLREG,861)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_r_valid <= 1'b0;
            SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_r_valid <= SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_backStall & (SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_r_valid | SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_i_valid);

            if (SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_r_data0 <= $unsigned(redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_i_valid = SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_V0;
    // Stall signal propagation
    assign SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_backStall = SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_r_valid | ~ (SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_i_valid);

    // Valid
    assign SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_V = SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_r_valid == 1'b1 ? SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_r_valid : SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_i_valid;

    assign SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_D0 = SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_r_valid == 1'b1 ? SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_r_data0 : redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_q;

    // SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2(STALLENABLE,703)
    // Valid signal propagation
    assign SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_V0 = SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_R_v_0;
    // Stall signal propagation
    assign SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_s_tv_0 = SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_backStall & SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_R_v_0;
    // Backward Enable generation
    assign SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_backEN = ~ (SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_v_s_0 = SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_backEN & SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_V0;
    // Backward Stall generation
    assign SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_backStall = ~ (SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_backEN == 1'b0)
            begin
                SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_R_v_0 <= SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_R_v_0 & SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_s_tv_0;
            end
            else
            begin
                SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_R_v_0 <= SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_v_s_0;
            end

        end
    end

    // SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1(STALLENABLE,702)
    // Valid signal propagation
    assign SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_V0 = SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_R_v_0;
    // Stall signal propagation
    assign SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_s_tv_0 = SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_2_backStall & SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_R_v_0;
    // Backward Enable generation
    assign SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_backEN = ~ (SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_v_s_0 = SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_backEN & SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_V0;
    // Backward Stall generation
    assign SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_backStall = ~ (SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_backEN == 1'b0)
            begin
                SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_R_v_0 <= SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_R_v_0 & SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_s_tv_0;
            end
            else
            begin
                SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_R_v_0 <= SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_v_s_0;
            end

        end
    end

    // SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0(STALLENABLE,701)
    // Valid signal propagation
    assign SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_V0 = SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_R_v_0;
    // Stall signal propagation
    assign SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_s_tv_0 = SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_1_backStall & SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_R_v_0;
    // Backward Enable generation
    assign SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_backEN = ~ (SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_v_s_0 = SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_backEN & SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_V1;
    // Backward Stall generation
    assign SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_backStall = ~ (SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_backEN == 1'b0)
            begin
                SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_R_v_0 <= SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_R_v_0 & SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_s_tv_0;
            end
            else
            begin
                SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_R_v_0 <= SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_v_s_0;
            end

        end
    end

    // SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo(STALLENABLE,700)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_fromReg0 <= '0;
            SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_fromReg0 <= SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_toReg0;
            // Successor 1
            SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_fromReg1 <= SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_consumed0 = (~ (SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_backStall) & SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_wireValid) | SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_fromReg0;
    assign SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_consumed1 = (~ (SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_0_backStall) & SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_wireValid) | SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_fromReg1;
    // Consuming
    assign SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_StallValid = SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_backStall & SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_wireValid;
    assign SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_toReg0 = SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_StallValid & SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_consumed0;
    assign SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_toReg1 = SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_StallValid & SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_or0 = SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_consumed0;
    assign SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_wireStall = ~ (SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_consumed1 & SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_or0);
    assign SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_backStall = SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_V0 = SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_wireValid & ~ (SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_fromReg0);
    assign SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_V1 = SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_wireValid & ~ (SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_wireValid = redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_valid_out;

    // redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo(STALLFIFO,393)
    assign redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_valid_in = SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_V1;
    assign redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_stall_in = SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_backStall;
    assign redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_data_in = bubble_select_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_b;
    assign redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_valid_in_bitsignaltemp = redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_valid_in[0];
    assign redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_stall_in_bitsignaltemp = redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_stall_in[0];
    assign redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_valid_out[0] = redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_valid_out_bitsignaltemp;
    assign redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_stall_out[0] = redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(263),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo (
        .valid_in(redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_valid_in_bitsignaltemp),
        .stall_in(redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_b),
        .valid_out(redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_valid_out_bitsignaltemp),
        .stall_out(redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_stall_out_bitsignaltemp),
        .data_out(redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i17_initerations94_push24_infect_sweep23(STALLENABLE,544)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i17_initerations94_push24_infect_sweep23_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i17_initerations94_push24_infect_sweep23_wireValid = i_llvm_fpga_push_i17_initerations94_push24_infect_sweep23_out_valid_out;

    // rightShiftStage0Idx1Rng1_uid306_i_next_initerations95_infect_sweep0_shift_x(BITSELECT,305)@36
    assign rightShiftStage0Idx1Rng1_uid306_i_next_initerations95_infect_sweep0_shift_x_b = bubble_select_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_b[16:1];

    // rightShiftStage0Idx1_uid308_i_next_initerations95_infect_sweep0_shift_x(BITJOIN,307)@36
    assign rightShiftStage0Idx1_uid308_i_next_initerations95_infect_sweep0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid306_i_next_initerations95_infect_sweep0_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11(BITJOIN,431)
    assign bubble_join_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_q = i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11(BITSELECT,432)
    assign bubble_select_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_b = $unsigned(bubble_join_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_q[16:0]);

    // rightShiftStage0_uid310_i_next_initerations95_infect_sweep0_shift_x(MUX,309)@36
    assign rightShiftStage0_uid310_i_next_initerations95_infect_sweep0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid310_i_next_initerations95_infect_sweep0_shift_x_s or bubble_select_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_b or rightShiftStage0Idx1_uid308_i_next_initerations95_infect_sweep0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid310_i_next_initerations95_infect_sweep0_shift_x_s)
            1'b0 : rightShiftStage0_uid310_i_next_initerations95_infect_sweep0_shift_x_q = bubble_select_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_b;
            1'b1 : rightShiftStage0_uid310_i_next_initerations95_infect_sweep0_shift_x_q = rightShiftStage0Idx1_uid308_i_next_initerations95_infect_sweep0_shift_x_q;
            default : rightShiftStage0_uid310_i_next_initerations95_infect_sweep0_shift_x_q = 17'b0;
        endcase
    end

    // i_next_initerations95_infect_sweep18_vt_select_15(BITSELECT,82)@36
    assign i_next_initerations95_infect_sweep18_vt_select_15_b = rightShiftStage0_uid310_i_next_initerations95_infect_sweep0_shift_x_q[15:0];

    // i_next_initerations95_infect_sweep18_vt_join(BITJOIN,81)@36
    assign i_next_initerations95_infect_sweep18_vt_join_q = {GND_q, i_next_initerations95_infect_sweep18_vt_select_15_b};

    // i_llvm_fpga_push_i17_initerations94_push24_infect_sweep23(BLACKBOX,60)@36
    // in in_stall_in@20000000
    // out out_data_out@37
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@37
    infect_sweep_i_llvm_fpga_push_i17_initerations94_push24_0 thei_llvm_fpga_push_i17_initerations94_push24_infect_sweep23 (
        .in_data_in(i_next_initerations95_infect_sweep18_vt_join_q),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_out_feedback_stall_out_24),
        .in_keep_going96(bubble_select_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i17_initerations94_push24_infect_sweep23_backStall),
        .in_valid_in(SE_i_next_initerations95_infect_sweep18_vt_join_V0),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i17_initerations94_push24_infect_sweep23_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i17_initerations94_push24_infect_sweep23_out_feedback_valid_out_24),
        .out_stall_out(i_llvm_fpga_push_i17_initerations94_push24_infect_sweep23_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i17_initerations94_push24_infect_sweep23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11(STALLENABLE,538)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_fromReg0 <= SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_fromReg1 <= SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_wireValid) | SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_consumed1 = (~ (SE_i_next_initerations95_infect_sweep18_vt_join_backStall) & SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_wireValid) | SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_StallValid = SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_backStall & SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_wireValid;
    assign SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_toReg0 = SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_StallValid & SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_consumed0;
    assign SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_toReg1 = SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_StallValid & SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_or0 = SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_consumed0;
    assign SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_wireStall = ~ (SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_consumed1 & SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_or0);
    assign SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_backStall = SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_V0 = SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_wireValid & ~ (SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_V1 = SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_wireValid & ~ (SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_wireValid = i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_out_valid_out;

    // SE_i_next_initerations95_infect_sweep18_vt_join(STALLENABLE,567)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations95_infect_sweep18_vt_join_fromReg0 <= '0;
            SE_i_next_initerations95_infect_sweep18_vt_join_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations95_infect_sweep18_vt_join_fromReg0 <= SE_i_next_initerations95_infect_sweep18_vt_join_toReg0;
            // Successor 1
            SE_i_next_initerations95_infect_sweep18_vt_join_fromReg1 <= SE_i_next_initerations95_infect_sweep18_vt_join_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations95_infect_sweep18_vt_join_consumed0 = (~ (i_llvm_fpga_push_i17_initerations94_push24_infect_sweep23_out_stall_out) & SE_i_next_initerations95_infect_sweep18_vt_join_wireValid) | SE_i_next_initerations95_infect_sweep18_vt_join_fromReg0;
    assign SE_i_next_initerations95_infect_sweep18_vt_join_consumed1 = (~ (i_llvm_fpga_push_i1_lastiniteration98_infect_sweep30_out_stall_out) & SE_i_next_initerations95_infect_sweep18_vt_join_wireValid) | SE_i_next_initerations95_infect_sweep18_vt_join_fromReg1;
    // Consuming
    assign SE_i_next_initerations95_infect_sweep18_vt_join_StallValid = SE_i_next_initerations95_infect_sweep18_vt_join_backStall & SE_i_next_initerations95_infect_sweep18_vt_join_wireValid;
    assign SE_i_next_initerations95_infect_sweep18_vt_join_toReg0 = SE_i_next_initerations95_infect_sweep18_vt_join_StallValid & SE_i_next_initerations95_infect_sweep18_vt_join_consumed0;
    assign SE_i_next_initerations95_infect_sweep18_vt_join_toReg1 = SE_i_next_initerations95_infect_sweep18_vt_join_StallValid & SE_i_next_initerations95_infect_sweep18_vt_join_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations95_infect_sweep18_vt_join_or0 = SE_i_next_initerations95_infect_sweep18_vt_join_consumed0;
    assign SE_i_next_initerations95_infect_sweep18_vt_join_wireStall = ~ (SE_i_next_initerations95_infect_sweep18_vt_join_consumed1 & SE_i_next_initerations95_infect_sweep18_vt_join_or0);
    assign SE_i_next_initerations95_infect_sweep18_vt_join_backStall = SE_i_next_initerations95_infect_sweep18_vt_join_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations95_infect_sweep18_vt_join_V0 = SE_i_next_initerations95_infect_sweep18_vt_join_wireValid & ~ (SE_i_next_initerations95_infect_sweep18_vt_join_fromReg0);
    assign SE_i_next_initerations95_infect_sweep18_vt_join_V1 = SE_i_next_initerations95_infect_sweep18_vt_join_wireValid & ~ (SE_i_next_initerations95_infect_sweep18_vt_join_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations95_infect_sweep18_vt_join_and0 = SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_V1;
    assign SE_i_next_initerations95_infect_sweep18_vt_join_wireValid = SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_V0 & SE_i_next_initerations95_infect_sweep18_vt_join_and0;

    // SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo(STALLENABLE,698)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_fromReg0 <= '0;
            SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_fromReg0 <= SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_toReg0;
            // Successor 1
            SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_fromReg1 <= SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_consumed0 = (~ (SE_i_next_initerations95_infect_sweep18_vt_join_backStall) & SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_wireValid) | SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_fromReg0;
    assign SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_consumed1 = (~ (redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_stall_out) & SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_wireValid) | SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_fromReg1;
    // Consuming
    assign SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_StallValid = SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_backStall & SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_wireValid;
    assign SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_toReg0 = SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_StallValid & SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_consumed0;
    assign SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_toReg1 = SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_StallValid & SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_or0 = SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_consumed0;
    assign SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_wireStall = ~ (SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_consumed1 & SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_or0);
    assign SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_backStall = SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_V0 = SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_wireValid & ~ (SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_fromReg0);
    assign SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_V1 = SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_wireValid & ~ (SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_wireValid = redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_valid_out;

    // redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo(STALLFIFO,392)
    assign redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_valid_in = SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_V1;
    assign redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_stall_in = SE_out_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_backStall;
    assign redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_data_in = redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_q;
    assign redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_valid_in_bitsignaltemp = redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_valid_in[0];
    assign redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_stall_in_bitsignaltemp = redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_stall_in[0];
    assign redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_valid_out[0] = redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_valid_out_bitsignaltemp;
    assign redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_stall_out[0] = redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(17),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo (
        .valid_in(redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_valid_in_bitsignaltemp),
        .stall_in(redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_stall_in_bitsignaltemp),
        .data_in(redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_q),
        .valid_out(redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_valid_out_bitsignaltemp),
        .stall_out(redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_stall_out_bitsignaltemp),
        .data_out(redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0(STALLENABLE,696)
    // Valid signal propagation
    assign SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_V0 = SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_R_v_0;
    assign SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_V1 = SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_s_tv_0 = SE_in_i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_backStall & SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_R_v_0;
    assign SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_s_tv_1 = redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_stall_out & SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_or0 = SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_s_tv_0;
    assign SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_backEN = ~ (SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_s_tv_1 | SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_v_s_0 = SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_backEN & SE_out_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_V0;
    // Backward Stall generation
    assign SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_backStall = ~ (SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_R_v_0 <= 1'b0;
            SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_backEN == 1'b0)
            begin
                SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_R_v_0 <= SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_R_v_0 & SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_s_tv_0;
            end
            else
            begin
                SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_R_v_0 <= SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_v_s_0;
            end

            if (SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_backEN == 1'b0)
            begin
                SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_R_v_1 <= SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_R_v_1 & SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_s_tv_1;
            end
            else
            begin
                SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_R_v_1 <= SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27(STALLENABLE,549)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_V0 = SE_in_i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_backStall = i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_and0 = SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_V2;
    assign SE_in_i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_wireValid = SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_V0 & SE_in_i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_and0;

    // SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5(STALLENABLE,800)
    // Valid signal propagation
    assign SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_V0 = SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_backStall = i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_out_stall_out | ~ (SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_wireValid = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7(BLACKBOX,49)@20
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_dest_i32_lm13275_0 thei_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7 (
        .in_intel_reserved_ffwd_31_0(in_intel_reserved_ffwd_31_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_backStall),
        .in_valid_in(SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_V0),
        .out_dest_data_out_31_0(i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_out_dest_data_out_31_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7(BITJOIN,408)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_q = i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_out_dest_data_out_31_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7(BITSELECT,409)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_q[31:0]);

    // i_cmp157_3_infect_sweep28(COMPARE,32)@20 + 1
    assign i_cmp157_3_infect_sweep28_a = $unsigned({{2{bgTrunc_i_inc_3_infect_sweep21_sel_x_b[31]}}, bgTrunc_i_inc_3_infect_sweep21_sel_x_b});
    assign i_cmp157_3_infect_sweep28_b = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp157_3_infect_sweep28_o <= 34'b0;
        end
        else if (SE_i_cmp157_3_infect_sweep28_backEN == 1'b1)
        begin
            i_cmp157_3_infect_sweep28_o <= $unsigned($signed(i_cmp157_3_infect_sweep28_a) - $signed(i_cmp157_3_infect_sweep28_b));
        end
    end
    assign i_cmp157_3_infect_sweep28_c[0] = i_cmp157_3_infect_sweep28_o[33];

    // redist18_i_cmp157_3_infect_sweep28_c_282_fifo(STALLFIFO,399)
    assign redist18_i_cmp157_3_infect_sweep28_c_282_fifo_valid_in = SE_i_cmp157_3_infect_sweep28_V0;
    assign redist18_i_cmp157_3_infect_sweep28_c_282_fifo_stall_in = SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_backStall;
    assign redist18_i_cmp157_3_infect_sweep28_c_282_fifo_data_in = i_cmp157_3_infect_sweep28_c;
    assign redist18_i_cmp157_3_infect_sweep28_c_282_fifo_valid_in_bitsignaltemp = redist18_i_cmp157_3_infect_sweep28_c_282_fifo_valid_in[0];
    assign redist18_i_cmp157_3_infect_sweep28_c_282_fifo_stall_in_bitsignaltemp = redist18_i_cmp157_3_infect_sweep28_c_282_fifo_stall_in[0];
    assign redist18_i_cmp157_3_infect_sweep28_c_282_fifo_valid_out[0] = redist18_i_cmp157_3_infect_sweep28_c_282_fifo_valid_out_bitsignaltemp;
    assign redist18_i_cmp157_3_infect_sweep28_c_282_fifo_stall_out[0] = redist18_i_cmp157_3_infect_sweep28_c_282_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(282),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist18_i_cmp157_3_infect_sweep28_c_282_fifo (
        .valid_in(redist18_i_cmp157_3_infect_sweep28_c_282_fifo_valid_in_bitsignaltemp),
        .stall_in(redist18_i_cmp157_3_infect_sweep28_c_282_fifo_stall_in_bitsignaltemp),
        .data_in(i_cmp157_3_infect_sweep28_c),
        .valid_out(redist18_i_cmp157_3_infect_sweep28_c_282_fifo_valid_out_bitsignaltemp),
        .stall_out(redist18_i_cmp157_3_infect_sweep28_c_282_fifo_stall_out_bitsignaltemp),
        .data_out(redist18_i_cmp157_3_infect_sweep28_c_282_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7(STALLENABLE,522)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_consumed1 = (~ (SE_i_cmp157_3_infect_sweep28_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_wireValid = i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_out_valid_out;

    // SE_i_cmp157_3_infect_sweep28(STALLENABLE,506)
    // Valid signal propagation
    assign SE_i_cmp157_3_infect_sweep28_V0 = SE_i_cmp157_3_infect_sweep28_R_v_0;
    // Stall signal propagation
    assign SE_i_cmp157_3_infect_sweep28_s_tv_0 = redist18_i_cmp157_3_infect_sweep28_c_282_fifo_stall_out & SE_i_cmp157_3_infect_sweep28_R_v_0;
    // Backward Enable generation
    assign SE_i_cmp157_3_infect_sweep28_backEN = ~ (SE_i_cmp157_3_infect_sweep28_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp157_3_infect_sweep28_and0 = SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_V1 & SE_i_cmp157_3_infect_sweep28_backEN;
    assign SE_i_cmp157_3_infect_sweep28_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_V1 & SE_i_cmp157_3_infect_sweep28_and0;
    // Backward Stall generation
    assign SE_i_cmp157_3_infect_sweep28_backStall = ~ (SE_i_cmp157_3_infect_sweep28_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp157_3_infect_sweep28_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp157_3_infect_sweep28_backEN == 1'b0)
            begin
                SE_i_cmp157_3_infect_sweep28_R_v_0 <= SE_i_cmp157_3_infect_sweep28_R_v_0 & SE_i_cmp157_3_infect_sweep28_s_tv_0;
            end
            else
            begin
                SE_i_cmp157_3_infect_sweep28_R_v_0 <= SE_i_cmp157_3_infect_sweep28_v_s_0;
            end

        end
    end

    // SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo(STALLENABLE,693)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_fromReg0 <= '0;
            SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_fromReg1 <= '0;
            SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_fromReg0 <= SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_toReg0;
            // Successor 1
            SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_fromReg1 <= SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_toReg1;
            // Successor 2
            SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_fromReg2 <= SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_consumed0 = (~ (redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_stall_out) & SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_wireValid) | SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_fromReg0;
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_consumed1 = (~ (SE_i_cmp157_3_infect_sweep28_backStall) & SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_wireValid) | SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_fromReg1;
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_consumed2 = (~ (SE_in_i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_backStall) & SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_wireValid) | SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_fromReg2;
    // Consuming
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_StallValid = SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_backStall & SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_wireValid;
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_toReg0 = SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_StallValid & SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_consumed0;
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_toReg1 = SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_StallValid & SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_consumed1;
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_toReg2 = SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_StallValid & SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_or0 = SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_consumed0;
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_or1 = SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_consumed1 & SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_or0;
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_wireStall = ~ (SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_consumed2 & SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_or1);
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_backStall = SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_V0 = SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_wireValid & ~ (SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_fromReg0);
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_V1 = SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_wireValid & ~ (SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_fromReg1);
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_V2 = SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_wireValid & ~ (SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_wireValid = redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_valid_out;

    // redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo(STALLFIFO,390)
    assign redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_valid_in = SE_out_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_V0;
    assign redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_stall_in = SE_out_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_backStall;
    assign redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_data_in = bubble_select_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_b;
    assign redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_valid_in_bitsignaltemp = redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_valid_in[0];
    assign redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_stall_in_bitsignaltemp = redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_stall_in[0];
    assign redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_valid_out[0] = redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_valid_out_bitsignaltemp;
    assign redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_stall_out[0] = redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(138),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo (
        .valid_in(redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_valid_in_bitsignaltemp),
        .stall_in(redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_b),
        .valid_out(redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_valid_out_bitsignaltemp),
        .stall_out(redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_stall_out_bitsignaltemp),
        .data_out(redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo(STALLENABLE,695)
    // Valid signal propagation
    assign SE_out_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_V0 = SE_out_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_backStall = SE_redist10_bgTrunc_i_add177_3_infect_sweep34_sel_x_b_1_0_backStall | ~ (SE_out_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_and0 = redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_valid_out;
    assign SE_out_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_wireValid = SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_V0 & SE_out_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_and0;

    // SE_out_i_llvm_fpga_mem_lm145_infect_sweep31(STALLENABLE,528)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_fromReg0 <= SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_fromReg1 <= SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_consumed0 = (~ (SE_out_redist12_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_154_fifo_backStall) & SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_wireValid) | SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_consumed1 = (~ (SE_i_cmp169_3_infect_sweep32_backStall) & SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_wireValid) | SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_StallValid = SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_backStall & SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_toReg0 = SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_StallValid & SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_toReg1 = SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_StallValid & SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_or0 = SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_consumed1 & SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_or0);
    assign SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_backStall = SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_V0 = SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_V1 = SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_wireValid = i_llvm_fpga_mem_lm145_infect_sweep31_out_o_valid;

    // i_arrayidx168_3_infect_sweep0_c_i64_403_x(CONSTANT,171)
    assign i_arrayidx168_3_infect_sweep0_c_i64_403_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000101000);

    // c_i32_056(CONSTANT,11)
    assign c_i32_056_q = $unsigned(32'b00000000000000000000000000000000);

    // i_idxprom167_3_infect_sweep19_sel_x(BITSELECT,218)@3
    assign i_idxprom167_3_infect_sweep19_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_b[31:0]};

    // i_idxprom167_3_infect_sweep19_vt_select_31(BITSELECT,40)@3
    assign i_idxprom167_3_infect_sweep19_vt_select_31_b = i_idxprom167_3_infect_sweep19_sel_x_b[31:0];

    // i_idxprom167_3_infect_sweep19_vt_join(BITJOIN,39)@3
    assign i_idxprom167_3_infect_sweep19_vt_join_q = {c_i32_056_q, i_idxprom167_3_infect_sweep19_vt_select_31_b};

    // i_arrayidx168_3_infect_sweep0_narrow_x(BITSELECT,174)@3
    assign i_arrayidx168_3_infect_sweep0_narrow_x_b = i_idxprom167_3_infect_sweep19_vt_join_q[61:0];

    // i_arrayidx168_3_infect_sweep0_shift_join_x(BITJOIN,175)@3
    assign i_arrayidx168_3_infect_sweep0_shift_join_x_q = {i_arrayidx168_3_infect_sweep0_narrow_x_b, i_arrayidx168_3_infect_sweep25_vt_const_1_q};

    // i_arrayidx168_3_infect_sweep0_mult_multconst_x(CONSTANT,184)
    assign i_arrayidx168_3_infect_sweep0_mult_multconst_x_q = $unsigned(57'b000000000000000000000000000000000000000000000000000000000);

    // i_arrayidx168_3_infect_sweep0_mult_x_im0_shift0(BITSHIFT,319)@1
    assign i_arrayidx168_3_infect_sweep0_mult_x_im0_shift0_qint = { i_arrayidx168_3_infect_sweep0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx168_3_infect_sweep0_mult_x_im0_shift0_q = i_arrayidx168_3_infect_sweep0_mult_x_im0_shift0_qint[11:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1(BITJOIN,412)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_q = i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_out_dest_data_out_35_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1(BITSELECT,413)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_q[63:0]);

    // i_arrayidx168_3_infect_sweep0_mult_x_bs1_merged_bit_select(BITSELECT,355)@1
    assign i_arrayidx168_3_infect_sweep0_mult_x_bs1_merged_bit_select_b = bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_b[63:54];
    assign i_arrayidx168_3_infect_sweep0_mult_x_bs1_merged_bit_select_c = bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_b[53:36];
    assign i_arrayidx168_3_infect_sweep0_mult_x_bs1_merged_bit_select_d = bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_b[35:18];
    assign i_arrayidx168_3_infect_sweep0_mult_x_bs1_merged_bit_select_e = bubble_select_i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_b[17:0];

    // i_arrayidx168_3_infect_sweep0_mult_x_im0_add_1(ADD,320)@1
    assign i_arrayidx168_3_infect_sweep0_mult_x_im0_add_1_a = {3'b000, i_arrayidx168_3_infect_sweep0_mult_x_bs1_merged_bit_select_b};
    assign i_arrayidx168_3_infect_sweep0_mult_x_im0_add_1_b = {1'b0, i_arrayidx168_3_infect_sweep0_mult_x_im0_shift0_q};
    assign i_arrayidx168_3_infect_sweep0_mult_x_im0_add_1_o = $unsigned(i_arrayidx168_3_infect_sweep0_mult_x_im0_add_1_a) + $unsigned(i_arrayidx168_3_infect_sweep0_mult_x_im0_add_1_b);
    assign i_arrayidx168_3_infect_sweep0_mult_x_im0_add_1_q = i_arrayidx168_3_infect_sweep0_mult_x_im0_add_1_o[12:0];

    // i_arrayidx168_3_infect_sweep0_mult_x_im0_shift2(BITSHIFT,321)@1
    assign i_arrayidx168_3_infect_sweep0_mult_x_im0_shift2_qint = { i_arrayidx168_3_infect_sweep0_mult_x_im0_add_1_q, 4'b0000 };
    assign i_arrayidx168_3_infect_sweep0_mult_x_im0_shift2_q = i_arrayidx168_3_infect_sweep0_mult_x_im0_shift2_qint[16:0];

    // i_arrayidx168_3_infect_sweep0_mult_x_sums_align_3(BITSHIFT,256)@1
    assign i_arrayidx168_3_infect_sweep0_mult_x_sums_align_3_qint = { i_arrayidx168_3_infect_sweep0_mult_x_im0_shift2_q, 11'b00000000000 };
    assign i_arrayidx168_3_infect_sweep0_mult_x_sums_align_3_q = i_arrayidx168_3_infect_sweep0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx168_3_infect_sweep0_mult_x_im6_shift0(BITSHIFT,325)@1
    assign i_arrayidx168_3_infect_sweep0_mult_x_im6_shift0_qint = { i_arrayidx168_3_infect_sweep0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx168_3_infect_sweep0_mult_x_im6_shift0_q = i_arrayidx168_3_infect_sweep0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx168_3_infect_sweep0_mult_x_im6_add_1(ADD,326)@1
    assign i_arrayidx168_3_infect_sweep0_mult_x_im6_add_1_a = {3'b000, i_arrayidx168_3_infect_sweep0_mult_x_bs1_merged_bit_select_d};
    assign i_arrayidx168_3_infect_sweep0_mult_x_im6_add_1_b = {1'b0, i_arrayidx168_3_infect_sweep0_mult_x_im6_shift0_q};
    assign i_arrayidx168_3_infect_sweep0_mult_x_im6_add_1_o = $unsigned(i_arrayidx168_3_infect_sweep0_mult_x_im6_add_1_a) + $unsigned(i_arrayidx168_3_infect_sweep0_mult_x_im6_add_1_b);
    assign i_arrayidx168_3_infect_sweep0_mult_x_im6_add_1_q = i_arrayidx168_3_infect_sweep0_mult_x_im6_add_1_o[20:0];

    // i_arrayidx168_3_infect_sweep0_mult_x_im6_shift2(BITSHIFT,327)@1
    assign i_arrayidx168_3_infect_sweep0_mult_x_im6_shift2_qint = { i_arrayidx168_3_infect_sweep0_mult_x_im6_add_1_q, 4'b0000 };
    assign i_arrayidx168_3_infect_sweep0_mult_x_im6_shift2_q = i_arrayidx168_3_infect_sweep0_mult_x_im6_shift2_qint[24:0];

    // i_arrayidx168_3_infect_sweep0_mult_x_sums_align_2(BITSHIFT,255)@1
    assign i_arrayidx168_3_infect_sweep0_mult_x_sums_align_2_qint = { i_arrayidx168_3_infect_sweep0_mult_x_im6_shift2_q, 18'b000000000000000000 };
    assign i_arrayidx168_3_infect_sweep0_mult_x_sums_align_2_q = i_arrayidx168_3_infect_sweep0_mult_x_sums_align_2_qint[42:0];

    // i_arrayidx168_3_infect_sweep0_mult_x_sums_join_4(BITJOIN,257)@1
    assign i_arrayidx168_3_infect_sweep0_mult_x_sums_join_4_q = {i_arrayidx168_3_infect_sweep0_mult_x_sums_align_3_q, i_arrayidx168_3_infect_sweep0_mult_x_sums_align_2_q};

    // i_arrayidx168_3_infect_sweep0_mult_x_im3_shift0(BITSHIFT,322)@1
    assign i_arrayidx168_3_infect_sweep0_mult_x_im3_shift0_qint = { i_arrayidx168_3_infect_sweep0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx168_3_infect_sweep0_mult_x_im3_shift0_q = i_arrayidx168_3_infect_sweep0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx168_3_infect_sweep0_mult_x_im3_add_1(ADD,323)@1
    assign i_arrayidx168_3_infect_sweep0_mult_x_im3_add_1_a = {3'b000, i_arrayidx168_3_infect_sweep0_mult_x_bs1_merged_bit_select_c};
    assign i_arrayidx168_3_infect_sweep0_mult_x_im3_add_1_b = {1'b0, i_arrayidx168_3_infect_sweep0_mult_x_im3_shift0_q};
    assign i_arrayidx168_3_infect_sweep0_mult_x_im3_add_1_o = $unsigned(i_arrayidx168_3_infect_sweep0_mult_x_im3_add_1_a) + $unsigned(i_arrayidx168_3_infect_sweep0_mult_x_im3_add_1_b);
    assign i_arrayidx168_3_infect_sweep0_mult_x_im3_add_1_q = i_arrayidx168_3_infect_sweep0_mult_x_im3_add_1_o[20:0];

    // i_arrayidx168_3_infect_sweep0_mult_x_im3_shift2(BITSHIFT,324)@1
    assign i_arrayidx168_3_infect_sweep0_mult_x_im3_shift2_qint = { i_arrayidx168_3_infect_sweep0_mult_x_im3_add_1_q, 4'b0000 };
    assign i_arrayidx168_3_infect_sweep0_mult_x_im3_shift2_q = i_arrayidx168_3_infect_sweep0_mult_x_im3_shift2_qint[24:0];

    // i_arrayidx168_3_infect_sweep0_mult_x_sums_align_0(BITSHIFT,253)@1
    assign i_arrayidx168_3_infect_sweep0_mult_x_sums_align_0_qint = { i_arrayidx168_3_infect_sweep0_mult_x_im3_shift2_q, 11'b00000000000 };
    assign i_arrayidx168_3_infect_sweep0_mult_x_sums_align_0_q = i_arrayidx168_3_infect_sweep0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx168_3_infect_sweep0_mult_x_im9_shift0(BITSHIFT,328)@1
    assign i_arrayidx168_3_infect_sweep0_mult_x_im9_shift0_qint = { i_arrayidx168_3_infect_sweep0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx168_3_infect_sweep0_mult_x_im9_shift0_q = i_arrayidx168_3_infect_sweep0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx168_3_infect_sweep0_mult_x_im9_add_1(ADD,329)@1
    assign i_arrayidx168_3_infect_sweep0_mult_x_im9_add_1_a = {3'b000, i_arrayidx168_3_infect_sweep0_mult_x_bs1_merged_bit_select_e};
    assign i_arrayidx168_3_infect_sweep0_mult_x_im9_add_1_b = {1'b0, i_arrayidx168_3_infect_sweep0_mult_x_im9_shift0_q};
    assign i_arrayidx168_3_infect_sweep0_mult_x_im9_add_1_o = $unsigned(i_arrayidx168_3_infect_sweep0_mult_x_im9_add_1_a) + $unsigned(i_arrayidx168_3_infect_sweep0_mult_x_im9_add_1_b);
    assign i_arrayidx168_3_infect_sweep0_mult_x_im9_add_1_q = i_arrayidx168_3_infect_sweep0_mult_x_im9_add_1_o[20:0];

    // i_arrayidx168_3_infect_sweep0_mult_x_im9_shift2(BITSHIFT,330)@1
    assign i_arrayidx168_3_infect_sweep0_mult_x_im9_shift2_qint = { i_arrayidx168_3_infect_sweep0_mult_x_im9_add_1_q, 4'b0000 };
    assign i_arrayidx168_3_infect_sweep0_mult_x_im9_shift2_q = i_arrayidx168_3_infect_sweep0_mult_x_im9_shift2_qint[24:0];

    // i_arrayidx168_3_infect_sweep0_mult_x_sums_join_1(BITJOIN,254)@1
    assign i_arrayidx168_3_infect_sweep0_mult_x_sums_join_1_q = {i_arrayidx168_3_infect_sweep0_mult_x_sums_align_0_q, i_arrayidx168_3_infect_sweep0_mult_x_im9_shift2_q};

    // i_arrayidx168_3_infect_sweep0_mult_x_sums_result_add_0_0(ADD,258)@1
    assign i_arrayidx168_3_infect_sweep0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx168_3_infect_sweep0_mult_x_sums_join_1_q};
    assign i_arrayidx168_3_infect_sweep0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx168_3_infect_sweep0_mult_x_sums_join_4_q};
    assign i_arrayidx168_3_infect_sweep0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx168_3_infect_sweep0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx168_3_infect_sweep0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx168_3_infect_sweep0_mult_x_sums_result_add_0_0_q = i_arrayidx168_3_infect_sweep0_mult_x_sums_result_add_0_0_o[71:0];

    // i_arrayidx168_3_infect_sweep0_mult_extender_x(BITJOIN,183)@1
    assign i_arrayidx168_3_infect_sweep0_mult_extender_x_q = {i_arrayidx168_3_infect_sweep0_mult_multconst_x_q, i_arrayidx168_3_infect_sweep0_mult_x_sums_result_add_0_0_q[70:0]};

    // i_arrayidx168_3_infect_sweep0_trunc_sel_x(BITSELECT,185)@1
    assign i_arrayidx168_3_infect_sweep0_trunc_sel_x_b = i_arrayidx168_3_infect_sweep0_mult_extender_x_q[63:0];

    // redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0(REG,387)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx168_3_infect_sweep0_trunc_sel_x_b);
        end
    end

    // bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0(BITJOIN,438)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_q = i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0(BITSELECT,439)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_vt_select_63(BITSELECT,67)@2
    assign i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_vt_join(BITJOIN,66)@2
    assign i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_vt_join_q = {i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_vt_const_9_q};

    // i_arrayidx168_3_infect_sweep0_add_x(ADD,169)@2
    assign i_arrayidx168_3_infect_sweep0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_vt_join_q};
    assign i_arrayidx168_3_infect_sweep0_add_x_b = {1'b0, redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx168_3_infect_sweep0_add_x_o = $unsigned(i_arrayidx168_3_infect_sweep0_add_x_a) + $unsigned(i_arrayidx168_3_infect_sweep0_add_x_b);
    assign i_arrayidx168_3_infect_sweep0_add_x_q = i_arrayidx168_3_infect_sweep0_add_x_o[64:0];

    // i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x(BITSELECT,186)@2
    assign i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b = i_arrayidx168_3_infect_sweep0_add_x_q[63:0];

    // redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0(REG,386)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b);
        end
    end

    // i_arrayidx168_3_infect_sweep0_dupName_0_add_x(ADD,178)@3
    assign i_arrayidx168_3_infect_sweep0_dupName_0_add_x_a = {1'b0, redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx168_3_infect_sweep0_dupName_0_add_x_b = {1'b0, i_arrayidx168_3_infect_sweep0_shift_join_x_q};
    assign i_arrayidx168_3_infect_sweep0_dupName_0_add_x_o = $unsigned(i_arrayidx168_3_infect_sweep0_dupName_0_add_x_a) + $unsigned(i_arrayidx168_3_infect_sweep0_dupName_0_add_x_b);
    assign i_arrayidx168_3_infect_sweep0_dupName_0_add_x_q = i_arrayidx168_3_infect_sweep0_dupName_0_add_x_o[64:0];

    // i_arrayidx168_3_infect_sweep0_dupName_2_trunc_sel_x(BITSELECT,187)@3
    assign i_arrayidx168_3_infect_sweep0_dupName_2_trunc_sel_x_b = i_arrayidx168_3_infect_sweep0_dupName_0_add_x_q[63:0];

    // i_arrayidx168_3_infect_sweep0_dupName_1_add_x(ADD,180)@3
    assign i_arrayidx168_3_infect_sweep0_dupName_1_add_x_a = {1'b0, i_arrayidx168_3_infect_sweep0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx168_3_infect_sweep0_dupName_1_add_x_b = {1'b0, i_arrayidx168_3_infect_sweep0_c_i64_403_x_q};
    assign i_arrayidx168_3_infect_sweep0_dupName_1_add_x_o = $unsigned(i_arrayidx168_3_infect_sweep0_dupName_1_add_x_a) + $unsigned(i_arrayidx168_3_infect_sweep0_dupName_1_add_x_b);
    assign i_arrayidx168_3_infect_sweep0_dupName_1_add_x_q = i_arrayidx168_3_infect_sweep0_dupName_1_add_x_o[64:0];

    // i_arrayidx168_3_infect_sweep0_dupName_3_trunc_sel_x(BITSELECT,188)@3
    assign i_arrayidx168_3_infect_sweep0_dupName_3_trunc_sel_x_b = i_arrayidx168_3_infect_sweep0_dupName_1_add_x_q[63:0];

    // i_arrayidx168_3_infect_sweep25_vt_select_63(BITSELECT,22)@3
    assign i_arrayidx168_3_infect_sweep25_vt_select_63_b = i_arrayidx168_3_infect_sweep0_dupName_3_trunc_sel_x_b[63:2];

    // i_arrayidx168_3_infect_sweep25_vt_join(BITJOIN,21)@3
    assign i_arrayidx168_3_infect_sweep25_vt_join_q = {i_arrayidx168_3_infect_sweep25_vt_select_63_b, i_arrayidx168_3_infect_sweep25_vt_const_1_q};

    // i_llvm_fpga_mem_lm145_infect_sweep31(BLACKBOX,52)@3
    // in in_i_stall@20000000
    // out out_lm145_infect_sweep_avm_address@20000000
    // out out_lm145_infect_sweep_avm_burstcount@20000000
    // out out_lm145_infect_sweep_avm_byteenable@20000000
    // out out_lm145_infect_sweep_avm_enable@20000000
    // out out_lm145_infect_sweep_avm_read@20000000
    // out out_lm145_infect_sweep_avm_write@20000000
    // out out_lm145_infect_sweep_avm_writedata@20000000
    // out out_o_readdata@157
    // out out_o_stall@20000000
    // out out_o_valid@157
    infect_sweep_i_llvm_fpga_mem_lm145_0 thei_llvm_fpga_mem_lm145_infect_sweep31 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx168_3_infect_sweep25_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm145_infect_sweep31_backStall),
        .in_i_valid(SE_i_idxprom167_3_infect_sweep19_vt_join_V0),
        .in_lm145_infect_sweep_avm_readdata(in_lm145_infect_sweep_avm_readdata),
        .in_lm145_infect_sweep_avm_readdatavalid(in_lm145_infect_sweep_avm_readdatavalid),
        .in_lm145_infect_sweep_avm_waitrequest(in_lm145_infect_sweep_avm_waitrequest),
        .in_lm145_infect_sweep_avm_writeack(in_lm145_infect_sweep_avm_writeack),
        .out_lm145_infect_sweep_avm_address(i_llvm_fpga_mem_lm145_infect_sweep31_out_lm145_infect_sweep_avm_address),
        .out_lm145_infect_sweep_avm_burstcount(i_llvm_fpga_mem_lm145_infect_sweep31_out_lm145_infect_sweep_avm_burstcount),
        .out_lm145_infect_sweep_avm_byteenable(i_llvm_fpga_mem_lm145_infect_sweep31_out_lm145_infect_sweep_avm_byteenable),
        .out_lm145_infect_sweep_avm_enable(i_llvm_fpga_mem_lm145_infect_sweep31_out_lm145_infect_sweep_avm_enable),
        .out_lm145_infect_sweep_avm_read(i_llvm_fpga_mem_lm145_infect_sweep31_out_lm145_infect_sweep_avm_read),
        .out_lm145_infect_sweep_avm_write(i_llvm_fpga_mem_lm145_infect_sweep31_out_lm145_infect_sweep_avm_write),
        .out_lm145_infect_sweep_avm_writedata(i_llvm_fpga_mem_lm145_infect_sweep31_out_lm145_infect_sweep_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm145_infect_sweep31_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm145_infect_sweep31_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm145_infect_sweep31_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12(STALLENABLE,540)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_consumed0 = (~ (redist11_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out_17_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_wireValid) | SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_consumed1 = (~ (SE_i_idxprom167_3_infect_sweep19_vt_join_backStall) & SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_wireValid) | SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_StallValid = SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_backStall & SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_toReg0 = SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_StallValid & SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_toReg1 = SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_StallValid & SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_or0 = SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_consumed1 & SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_or0);
    assign SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_backStall = SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_V0 = SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_V1 = SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_wireValid = i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_valid_out;

    // SE_i_idxprom167_3_infect_sweep19_vt_join(STALLENABLE,510)
    // Valid signal propagation
    assign SE_i_idxprom167_3_infect_sweep19_vt_join_V0 = SE_i_idxprom167_3_infect_sweep19_vt_join_wireValid;
    // Backward Stall generation
    assign SE_i_idxprom167_3_infect_sweep19_vt_join_backStall = i_llvm_fpga_mem_lm145_infect_sweep31_out_o_stall | ~ (SE_i_idxprom167_3_infect_sweep19_vt_join_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_idxprom167_3_infect_sweep19_vt_join_and0 = SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_V1;
    assign SE_i_idxprom167_3_infect_sweep19_vt_join_wireValid = SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_V0 & SE_i_idxprom167_3_infect_sweep19_vt_join_and0;

    // SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0(STALLENABLE,689)
    // Valid signal propagation
    assign SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_V0 = SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_s_tv_0 = SE_i_idxprom167_3_infect_sweep19_vt_join_backStall & SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_backEN = ~ (SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_v_s_0 = SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_V0;
    // Backward Stall generation
    assign SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_backStall = ~ (SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_R_v_0 & SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1(STALLENABLE,524)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_V0 = SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_backStall = SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_wireValid = i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_out_valid_out;

    // SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0(STALLENABLE,690)
    // Valid signal propagation
    assign SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_V0 = SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_backStall & SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_backEN = ~ (SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_v_s_0 = SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_V0;
    // Backward Stall generation
    assign SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_backStall = ~ (SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_R_v_0 & SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0(STALLENABLE,552)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_V0 = SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_backStall = SE_redist8_i_arrayidx168_3_infect_sweep0_dupName_0_trunc_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_and0 = i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_wireValid = SE_redist9_i_arrayidx168_3_infect_sweep0_trunc_sel_x_b_1_0_V0 & SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_and0;

    // i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0(BLACKBOX,64)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_sync_buffer_p100000osts_sync_buffer21_0 thei_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0 (
        .in_buffer_in(in_Hosts),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_backStall),
        .in_valid_in(SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V2),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0(REG,376)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b1)
        begin
            redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q <= $unsigned(bubble_select_infect_sweep_B16_merge_reg_aunroll_x_b);
        end
    end

    // i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12(BLACKBOX,58)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_stall_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    infect_sweep_i_llvm_fpga_pop_i32_i2_0182_3_pop23_0 thei_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12 (
        .in_data_in(c_i32_056_q),
        .in_dir(redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q),
        .in_feedback_in_23(i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i32_i2_0182_3_push23_infect_sweep27_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_backStall),
        .in_valid_in(SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V0),
        .out_data_out(i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_feedback_stall_out_23),
        .out_stall_out(i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0(STALLENABLE,675)
    // Valid signal propagation
    assign SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V0 = SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0;
    assign SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V1 = SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1;
    assign SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V2 = SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_2;
    // Stall signal propagation
    assign SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_0 = i_llvm_fpga_pop_i32_i2_0182_3_pop23_infect_sweep12_out_stall_out & SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0;
    assign SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_1 = redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_stall_out & SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1;
    assign SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_2 = i_llvm_fpga_sync_buffer_p1024s_struct_persons_hosts_sync_buffer21_infect_sweep0_out_stall_out & SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_2;
    // Backward Enable generation
    assign SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or0 = SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_0;
    assign SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or1 = SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_1 | SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or0;
    assign SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN = ~ (SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_2 | SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0 = SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN & SE_out_infect_sweep_B16_merge_reg_aunroll_x_V8;
    // Backward Stall generation
    assign SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backStall = ~ (SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0 <= 1'b0;
            SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1 <= 1'b0;
            SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0 <= SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0 & SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0 <= SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
            end

            if (SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1 <= SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1 & SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_1;
            end
            else
            begin
                SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1 <= SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
            end

            if (SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_2 <= SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_2 & SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_2;
            end
            else
            begin
                SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_2 <= SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
            end

        end
    end

    // bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg(STALLFIFO,858)
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg_valid_in = SE_out_infect_sweep_B16_merge_reg_aunroll_x_V7;
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg_stall_in = SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_backStall;
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg_valid_in_bitsignaltemp = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg_valid_in[0];
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg_stall_in_bitsignaltemp = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg_stall_in[0];
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg_valid_out[0] = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg_valid_out_bitsignaltemp;
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg_stall_out[0] = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(159),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg (
        .valid_in(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg(STALLFIFO,857)
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg_valid_in = SE_out_infect_sweep_B16_merge_reg_aunroll_x_V6;
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg_stall_in = SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_backStall;
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg_valid_in_bitsignaltemp = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg_valid_in[0];
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg_stall_in_bitsignaltemp = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg_stall_in[0];
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg_valid_out[0] = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg_valid_out_bitsignaltemp;
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg_stall_out[0] = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(159),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg (
        .valid_in(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg(STALLFIFO,854)
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg_valid_in = SE_out_infect_sweep_B16_merge_reg_aunroll_x_V4;
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg_stall_in = SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_backStall;
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg_valid_in[0];
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg_stall_in[0];
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg_valid_out[0] = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp;
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg_stall_out[0] = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(20),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg (
        .valid_in(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4(STALLENABLE,798)
    // Valid signal propagation
    assign SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_V0 = SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_backStall = i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep61_infect_sweep6_out_stall_out | ~ (SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_wireValid = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg_valid_out;

    // bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg(STALLFIFO,853)
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg_valid_in = SE_out_infect_sweep_B16_merge_reg_aunroll_x_V3;
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg_stall_in = SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_backStall;
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg_valid_in[0];
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg_stall_in[0];
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg_valid_out[0] = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg_stall_out[0] = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(302),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg (
        .valid_in(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3(STALLENABLE,796)
    // Valid signal propagation
    assign SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_V0 = SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_backStall = i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep60_infect_sweep4_out_stall_out | ~ (SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_wireValid = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg_valid_out;

    // bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg(STALLFIFO,852)
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg_valid_in = SE_out_infect_sweep_B16_merge_reg_aunroll_x_V2;
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg_stall_in = SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_backStall;
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg_valid_in[0];
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg_stall_in[0];
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg_valid_out[0] = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg_stall_out[0] = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(302),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg (
        .valid_in(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2(STALLENABLE,794)
    // Valid signal propagation
    assign SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep59_infect_sweep2_out_stall_out | ~ (SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_wireValid = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg_valid_out;

    // bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg(STALLFIFO,851)
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg_valid_in = SE_out_infect_sweep_B16_merge_reg_aunroll_x_V1;
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(302),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1(BLACKBOX,50)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_dest_i64_idxprom165_376_0 thei_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1 (
        .in_intel_reserved_ffwd_35_0(in_intel_reserved_ffwd_35_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_backStall),
        .in_valid_in(SE_out_infect_sweep_B16_merge_reg_aunroll_x_V0),
        .out_dest_data_out_35_0(i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_out_dest_data_out_35_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,447)
    assign bubble_join_stall_entry_q = {in_inc198_3179, in_forked93};

    // bubble_select_stall_entry(BITSELECT,448)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);

    // SE_stall_entry(STALLENABLE,577)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = infect_sweep_B16_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // infect_sweep_B16_merge_reg_aunroll_x(BLACKBOX,226)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    infect_sweep_B16_merge_reg theinfect_sweep_B16_merge_reg_aunroll_x (
        .in_stall_in(SE_out_infect_sweep_B16_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_c),
        .out_stall_out(infect_sweep_B16_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(infect_sweep_B16_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_infect_sweep_B16_merge_reg_aunroll_x(STALLENABLE,609)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg6 <= '0;
            SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg7 <= '0;
            SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg8 <= '0;
            SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg9 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg0 <= SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg1 <= SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg2 <= SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg3 <= SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg4 <= SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg5 <= SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg6 <= SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg6;
            // Successor 7
            SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg7 <= SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg7;
            // Successor 8
            SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg8 <= SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg8;
            // Successor 9
            SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg9 <= SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg9;
        end
    end
    // Input Stall processing
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i64_idxprom165_376_infect_sweep1_out_stall_out) & SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireValid) | SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg0;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireValid) | SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg1;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed2 = (~ (bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_reg_stall_out) & SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireValid) | SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg2;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed3 = (~ (bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_reg_stall_out) & SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireValid) | SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg3;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed4 = (~ (bubble_out_infect_sweep_B16_merge_reg_aunroll_x_5_reg_stall_out) & SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireValid) | SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg4;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed5 = (~ (bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg_stall_out) & SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireValid) | SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg5;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed6 = (~ (bubble_out_infect_sweep_B16_merge_reg_aunroll_x_8_reg_stall_out) & SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireValid) | SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg6;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed7 = (~ (bubble_out_infect_sweep_B16_merge_reg_aunroll_x_9_reg_stall_out) & SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireValid) | SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg7;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed8 = (~ (SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backStall) & SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireValid) | SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg8;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed9 = (~ (redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_stall_out) & SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireValid) | SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg9;
    // Consuming
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_StallValid = SE_out_infect_sweep_B16_merge_reg_aunroll_x_backStall & SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireValid;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg0 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_StallValid & SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed0;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg1 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_StallValid & SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed1;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg2 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_StallValid & SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed2;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg3 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_StallValid & SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed3;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg4 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_StallValid & SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed4;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg5 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_StallValid & SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed5;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg6 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_StallValid & SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed6;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg7 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_StallValid & SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed7;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg8 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_StallValid & SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed8;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_toReg9 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_StallValid & SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed9;
    // Backward Stall generation
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_or0 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed0;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_or1 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed1 & SE_out_infect_sweep_B16_merge_reg_aunroll_x_or0;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_or2 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed2 & SE_out_infect_sweep_B16_merge_reg_aunroll_x_or1;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_or3 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed3 & SE_out_infect_sweep_B16_merge_reg_aunroll_x_or2;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_or4 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed4 & SE_out_infect_sweep_B16_merge_reg_aunroll_x_or3;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_or5 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed5 & SE_out_infect_sweep_B16_merge_reg_aunroll_x_or4;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_or6 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed6 & SE_out_infect_sweep_B16_merge_reg_aunroll_x_or5;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_or7 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed7 & SE_out_infect_sweep_B16_merge_reg_aunroll_x_or6;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_or8 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed8 & SE_out_infect_sweep_B16_merge_reg_aunroll_x_or7;
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireStall = ~ (SE_out_infect_sweep_B16_merge_reg_aunroll_x_consumed9 & SE_out_infect_sweep_B16_merge_reg_aunroll_x_or8);
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_backStall = SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_V0 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireValid & ~ (SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg0);
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_V1 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireValid & ~ (SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg1);
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_V2 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireValid & ~ (SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg2);
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_V3 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireValid & ~ (SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg3);
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_V4 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireValid & ~ (SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg4);
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_V5 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireValid & ~ (SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg5);
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_V6 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireValid & ~ (SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg6);
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_V7 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireValid & ~ (SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg7);
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_V8 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireValid & ~ (SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg8);
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_V9 = SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireValid & ~ (SE_out_infect_sweep_B16_merge_reg_aunroll_x_fromReg9);
    // Computing multiple Valid(s)
    assign SE_out_infect_sweep_B16_merge_reg_aunroll_x_wireValid = infect_sweep_B16_merge_reg_aunroll_x_out_valid_out;

    // bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg(STALLFIFO,855)
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg_valid_in = SE_out_infect_sweep_B16_merge_reg_aunroll_x_V5;
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg_stall_in = SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_backStall;
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg_valid_in[0];
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg_stall_in[0];
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg_valid_out[0] = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp;
    assign bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg_stall_out[0] = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(302),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg (
        .valid_in(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6(STALLENABLE,802)
    // Valid signal propagation
    assign SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_V0 = SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_backStall = i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_out_stall_out | ~ (SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_wireValid = bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8(BLACKBOX,48)@302
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_dest_i1_unnamed_62_infect_sweep0 thei_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8 (
        .in_intel_reserved_ffwd_33_0(in_intel_reserved_ffwd_33_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_backStall),
        .in_valid_in(SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_6_V0),
        .out_dest_data_out_33_0(i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_out_dest_data_out_33_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8(STALLENABLE,520)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_consumed1 = (~ (SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_wireValid = i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep59_infect_sweep2(BLACKBOX,45)@302
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_dest_i1_unnamed_59_infect_sweep0 thei_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep59_infect_sweep2 (
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_backStall),
        .in_valid_in(SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_34_0(),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep59_infect_sweep2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep59_infect_sweep2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep60_infect_sweep4(BLACKBOX,46)@302
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_dest_i1_unnamed_60_infect_sweep0 thei_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep60_infect_sweep4 (
        .in_intel_reserved_ffwd_33_0(in_intel_reserved_ffwd_33_0),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_backStall),
        .in_valid_in(SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_3_V0),
        .out_dest_data_out_33_0(),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep60_infect_sweep4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep60_infect_sweep4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep61_infect_sweep6(BLACKBOX,47)@302
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_dest_i1_unnamed_61_infect_sweep0 thei_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep61_infect_sweep6 (
        .in_intel_reserved_ffwd_33_0(in_intel_reserved_ffwd_33_0),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_backStall),
        .in_valid_in(SE_out_bubble_out_infect_sweep_B16_merge_reg_aunroll_x_4_V0),
        .out_dest_data_out_33_0(),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep61_infect_sweep6_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep61_infect_sweep6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo(STALLENABLE,686)
    // Valid signal propagation
    assign SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_V0 = SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_backStall = i_sfc_s_c0_in_for_body164_3_infect_sweeps_c0_enter2069_infect_sweep16_aunroll_x_out_o_stall | ~ (SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_wireValid = SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_V;

    // i_sfc_s_c0_in_for_body164_3_infect_sweeps_c0_enter2069_infect_sweep16_aunroll_x(BLACKBOX,225)@298
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@302
    // out out_c0_exit211_0_tpl@302
    // out out_c0_exit211_1_tpl@302
    infect_sweep_i_sfc_s_c0_in_for_body164_30000r2069_infect_sweep16 thei_sfc_s_c0_in_for_body164_3_infect_sweeps_c0_enter2069_infect_sweep16_aunroll_x (
        .in_forked93(SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_D1),
        .in_i_stall(SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_backStall),
        .in_i_valid(SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_V0),
        .in_keep_going96(SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_D3),
        .in_c0_eni3205_0_tpl(GND_q),
        .in_c0_eni3205_1_tpl(SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_D4),
        .in_c0_eni3205_2_tpl(SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_D0),
        .in_c0_eni3205_3_tpl(SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_D2),
        .out_o_stall(i_sfc_s_c0_in_for_body164_3_infect_sweeps_c0_enter2069_infect_sweep16_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body164_3_infect_sweeps_c0_enter2069_infect_sweep16_aunroll_x_out_o_valid),
        .out_c0_exit211_0_tpl(),
        .out_c0_exit211_1_tpl(i_sfc_s_c0_in_for_body164_3_infect_sweeps_c0_enter2069_infect_sweep16_aunroll_x_out_c0_exit211_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg(STALLFIFO,849)
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_V0;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(283),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg(STALLFIFO,850)
    assign bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_V0;
    assign bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(267),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1(STALLENABLE,758)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_and0 = bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_and1 = bubble_out_i_llvm_fpga_ffwd_dest_i32_lm13275_infect_sweep7_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_and2 = i_sfc_s_c0_in_for_body164_3_infect_sweeps_c0_enter2069_infect_sweep16_aunroll_x_out_o_valid & SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_and3 = i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45_out_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_and4 = i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep61_infect_sweep6_out_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_and5 = i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep60_infect_sweep4_out_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_and6 = i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep59_infect_sweep2_out_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_and7 = SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_V1 & SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_and6;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_and7;

    // c_i16_1163(CONSTANT,6)
    assign c_i16_1163_q = $unsigned(16'b0000000000001011);

    // bubble_join_i_llvm_fpga_mem_lm21_infect_sweep38(BITJOIN,419)
    assign bubble_join_i_llvm_fpga_mem_lm21_infect_sweep38_q = i_llvm_fpga_mem_lm21_infect_sweep38_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm21_infect_sweep38(BITSELECT,420)
    assign bubble_select_i_llvm_fpga_mem_lm21_infect_sweep38_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm21_infect_sweep38_q[15:0]);

    // i_cmp181_3_infect_sweep40(COMPARE,34)@301
    assign i_cmp181_3_infect_sweep40_a = {2'b00, bubble_select_i_llvm_fpga_mem_lm21_infect_sweep38_b};
    assign i_cmp181_3_infect_sweep40_b = {2'b00, c_i16_1163_q};
    assign i_cmp181_3_infect_sweep40_o = $unsigned(i_cmp181_3_infect_sweep40_a) - $unsigned(i_cmp181_3_infect_sweep40_b);
    assign i_cmp181_3_infect_sweep40_c[0] = i_cmp181_3_infect_sweep40_o[17];

    // bubble_join_i_llvm_fpga_mem_lm24_infect_sweep39(BITJOIN,422)
    assign bubble_join_i_llvm_fpga_mem_lm24_infect_sweep39_q = i_llvm_fpga_mem_lm24_infect_sweep39_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm24_infect_sweep39(BITSELECT,423)
    assign bubble_select_i_llvm_fpga_mem_lm24_infect_sweep39_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm24_infect_sweep39_q[15:0]);

    // c_i16_1064(CONSTANT,5)
    assign c_i16_1064_q = $unsigned(16'b0000000000001010);

    // i_cmp194_3_infect_sweep41(COMPARE,35)@301
    assign i_cmp194_3_infect_sweep41_a = {2'b00, c_i16_1064_q};
    assign i_cmp194_3_infect_sweep41_b = {2'b00, bubble_select_i_llvm_fpga_mem_lm24_infect_sweep39_b};
    assign i_cmp194_3_infect_sweep41_o = $unsigned(i_cmp194_3_infect_sweep41_a) - $unsigned(i_cmp194_3_infect_sweep41_b);
    assign i_cmp194_3_infect_sweep41_c[0] = i_cmp194_3_infect_sweep41_o[17];

    // i_acl_19_infect_sweep42(LOGICAL,18)@301
    assign i_acl_19_infect_sweep42_q = i_cmp194_3_infect_sweep41_c & i_cmp181_3_infect_sweep40_c;

    // bubble_join_redist17_i_cmp169_3_infect_sweep32_c_144_fifo(BITJOIN,491)
    assign bubble_join_redist17_i_cmp169_3_infect_sweep32_c_144_fifo_q = redist17_i_cmp169_3_infect_sweep32_c_144_fifo_data_out;

    // bubble_select_redist17_i_cmp169_3_infect_sweep32_c_144_fifo(BITSELECT,492)
    assign bubble_select_redist17_i_cmp169_3_infect_sweep32_c_144_fifo_b = $unsigned(bubble_join_redist17_i_cmp169_3_infect_sweep32_c_144_fifo_q[0:0]);

    // i_narrow52_infect_sweep43(LOGICAL,78)@301 + 1
    assign i_narrow52_infect_sweep43_qi = bubble_select_redist17_i_cmp169_3_infect_sweep32_c_144_fifo_b & i_acl_19_infect_sweep42_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_narrow52_infect_sweep43_delay ( .xin(i_narrow52_infect_sweep43_qi), .xout(i_narrow52_infect_sweep43_q), .ena(SE_i_narrow52_infect_sweep43_backEN[0]), .clk(clock), .aclr(resetn) );

    // bubble_join_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9(BITJOIN,428)
    assign bubble_join_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_q = i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9(BITSELECT,429)
    assign bubble_select_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_b = $unsigned(bubble_join_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_q[16:0]);

    // i_first_cleanup101_infect_sweep13_sel_x(BITSELECT,217)@302
    assign i_first_cleanup101_infect_sweep13_sel_x_b = bubble_select_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_b[0:0];

    // i_xor102_infect_sweep22(LOGICAL,91)@302
    assign i_xor102_infect_sweep22_q = i_first_cleanup101_infect_sweep13_sel_x_b ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45(BLACKBOX,51)@302
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_37_0@20000000
    // out out_stall_out@20000000
    infect_sweep_i_llvm_fpga_ffwd_source_i1_unnamed_63_infect_sweep0 thei_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45 (
        .in_predicate_in(i_xor102_infect_sweep22_q),
        .in_src_data_in_37_0(i_narrow52_infect_sweep43_q),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45_V0),
        .out_intel_reserved_ffwd_37_0(i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45_out_intel_reserved_ffwd_37_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_narrow52_infect_sweep43(STALLENABLE,565)
    // Valid signal propagation
    assign SE_i_narrow52_infect_sweep43_V0 = SE_i_narrow52_infect_sweep43_R_v_0;
    assign SE_i_narrow52_infect_sweep43_V1 = SE_i_narrow52_infect_sweep43_R_v_1;
    // Stall signal propagation
    assign SE_i_narrow52_infect_sweep43_s_tv_0 = SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45_backStall & SE_i_narrow52_infect_sweep43_R_v_0;
    assign SE_i_narrow52_infect_sweep43_s_tv_1 = SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_backStall & SE_i_narrow52_infect_sweep43_R_v_1;
    // Backward Enable generation
    assign SE_i_narrow52_infect_sweep43_or0 = SE_i_narrow52_infect_sweep43_s_tv_0;
    assign SE_i_narrow52_infect_sweep43_backEN = ~ (SE_i_narrow52_infect_sweep43_s_tv_1 | SE_i_narrow52_infect_sweep43_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_narrow52_infect_sweep43_and0 = SE_out_i_llvm_fpga_mem_lm24_infect_sweep39_V0 & SE_i_narrow52_infect_sweep43_backEN;
    assign SE_i_narrow52_infect_sweep43_v_s_0 = SE_out_redist17_i_cmp169_3_infect_sweep32_c_144_fifo_V0 & SE_i_narrow52_infect_sweep43_and0;
    // Backward Stall generation
    assign SE_i_narrow52_infect_sweep43_backStall = ~ (SE_i_narrow52_infect_sweep43_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_narrow52_infect_sweep43_R_v_0 <= 1'b0;
            SE_i_narrow52_infect_sweep43_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_narrow52_infect_sweep43_backEN == 1'b0)
            begin
                SE_i_narrow52_infect_sweep43_R_v_0 <= SE_i_narrow52_infect_sweep43_R_v_0 & SE_i_narrow52_infect_sweep43_s_tv_0;
            end
            else
            begin
                SE_i_narrow52_infect_sweep43_R_v_0 <= SE_i_narrow52_infect_sweep43_v_s_0;
            end

            if (SE_i_narrow52_infect_sweep43_backEN == 1'b0)
            begin
                SE_i_narrow52_infect_sweep43_R_v_1 <= SE_i_narrow52_infect_sweep43_R_v_1 & SE_i_narrow52_infect_sweep43_s_tv_1;
            end
            else
            begin
                SE_i_narrow52_infect_sweep43_R_v_1 <= SE_i_narrow52_infect_sweep43_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45(STALLENABLE,525)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45_V0 = SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45_out_stall_out | ~ (SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45_and0 = SE_i_narrow52_infect_sweep43_V0;
    assign SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45_wireValid = SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_V2 & SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45_and0;

    // SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo(STALLENABLE,708)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_fromReg0 <= '0;
            SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_fromReg1 <= '0;
            SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_fromReg0 <= SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_toReg0;
            // Successor 1
            SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_fromReg1 <= SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_toReg1;
            // Successor 2
            SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_fromReg2 <= SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_consumed0 = (~ (i_llvm_fpga_push_i1_notexitcond106_infect_sweep49_out_stall_out) & SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_wireValid) | SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_fromReg0;
    assign SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_consumed1 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_backStall) & SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_wireValid) | SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_fromReg1;
    assign SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_consumed2 = (~ (SE_leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_backStall) & SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_wireValid) | SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_fromReg2;
    // Consuming
    assign SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_StallValid = SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_backStall & SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_wireValid;
    assign SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_toReg0 = SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_StallValid & SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_consumed0;
    assign SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_toReg1 = SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_StallValid & SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_consumed1;
    assign SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_toReg2 = SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_StallValid & SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_or0 = SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_consumed0;
    assign SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_or1 = SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_consumed1 & SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_or0;
    assign SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_wireStall = ~ (SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_consumed2 & SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_or1);
    assign SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_backStall = SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_V0 = SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_wireValid & ~ (SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_fromReg0);
    assign SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_V1 = SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_wireValid & ~ (SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_fromReg1);
    assign SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_V2 = SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_wireValid & ~ (SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_and0 = redist18_i_cmp157_3_infect_sweep28_c_282_fifo_valid_out;
    assign SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_and1 = SE_i_narrow52_infect_sweep43_V1 & SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_and0;
    assign SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_and2 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_V1 & SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_and1;
    assign SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_wireValid = SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_V1 & SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_and2;

    // SE_leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x(STALLENABLE,618)
    // Valid signal propagation
    assign SE_leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_V0 = SE_leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_wireValid;
    // Backward Stall generation
    assign SE_leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_backStall = i_llvm_fpga_push_i17_cleanups99_push25_infect_sweep53_out_stall_out | ~ (SE_leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_and0 = SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_V2;
    assign SE_leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_and1 = SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_V0 & SE_leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_and0;
    assign SE_leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_wireValid = SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_V0 & SE_leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_and1;

    // SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9(STALLENABLE,536)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_fromReg0 <= SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_fromReg1 <= SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_fromReg2 <= SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_consumed0 = (~ (SE_leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_backStall) & SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_wireValid) | SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_consumed1 = (~ (SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_backStall) & SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_wireValid) | SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_consumed2 = (~ (SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45_backStall) & SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_wireValid) | SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_StallValid = SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_backStall & SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_wireValid;
    assign SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_toReg0 = SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_StallValid & SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_consumed0;
    assign SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_toReg1 = SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_StallValid & SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_consumed1;
    assign SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_toReg2 = SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_StallValid & SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_or0 = SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_consumed0;
    assign SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_or1 = SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_consumed1 & SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_or0;
    assign SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_wireStall = ~ (SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_consumed2 & SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_or1);
    assign SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_backStall = SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_V0 = SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_wireValid & ~ (SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_V1 = SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_wireValid & ~ (SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_V2 = SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_wireValid & ~ (SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_wireValid = i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_llvm_fpga_push_i17_cleanups99_push25_infect_sweep53(STALLENABLE,542)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i17_cleanups99_push25_infect_sweep53_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i17_cleanups99_push25_infect_sweep53_wireValid = i_llvm_fpga_push_i17_cleanups99_push25_infect_sweep53_out_valid_out;

    // redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3(REG,397)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_backEN == 1'b1)
        begin
            redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_q <= $unsigned(SR_SE_redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_D0);
        end
    end

    // leftShiftStage0Idx1Rng1_uid263_i_cleanups_shl100_infect_sweep0_shift_x(BITSELECT,262)@302
    assign leftShiftStage0Idx1Rng1_uid263_i_cleanups_shl100_infect_sweep0_shift_x_in = bubble_select_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_b[15:0];
    assign leftShiftStage0Idx1Rng1_uid263_i_cleanups_shl100_infect_sweep0_shift_x_b = leftShiftStage0Idx1Rng1_uid263_i_cleanups_shl100_infect_sweep0_shift_x_in[15:0];

    // leftShiftStage0Idx1_uid264_i_cleanups_shl100_infect_sweep0_shift_x(BITJOIN,263)@302
    assign leftShiftStage0Idx1_uid264_i_cleanups_shl100_infect_sweep0_shift_x_q = {leftShiftStage0Idx1Rng1_uid263_i_cleanups_shl100_infect_sweep0_shift_x_b, GND_q};

    // leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x(MUX,265)@302
    assign leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_s or bubble_select_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_b or leftShiftStage0Idx1_uid264_i_cleanups_shl100_infect_sweep0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_s)
            1'b0 : leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_q = bubble_select_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_b;
            1'b1 : leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_q = leftShiftStage0Idx1_uid264_i_cleanups_shl100_infect_sweep0_shift_x_q;
            default : leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_q = 17'b0;
        endcase
    end

    // i_cleanups_shl100_infect_sweep14_vt_select_16(BITSELECT,25)@302
    assign i_cleanups_shl100_infect_sweep14_vt_select_16_b = leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_q[16:1];

    // i_cleanups_shl100_infect_sweep14_vt_join(BITJOIN,24)@302
    assign i_cleanups_shl100_infect_sweep14_vt_join_q = {i_cleanups_shl100_infect_sweep14_vt_select_16_b, GND_q};

    // i_tobool160_3_infect_sweep44(LOGICAL,85)@302
    assign i_tobool160_3_infect_sweep44_q = i_narrow52_infect_sweep43_q ^ VCC_q;

    // bubble_join_redist18_i_cmp157_3_infect_sweep28_c_282_fifo(BITJOIN,494)
    assign bubble_join_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_q = redist18_i_cmp157_3_infect_sweep28_c_282_fifo_data_out;

    // bubble_select_redist18_i_cmp157_3_infect_sweep28_c_282_fifo(BITSELECT,495)
    assign bubble_select_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_b = $unsigned(bubble_join_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_q[0:0]);

    // i_unnamed_infect_sweep46(LOGICAL,89)@302
    assign i_unnamed_infect_sweep46_q = bubble_select_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_b & i_tobool160_3_infect_sweep44_q;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8(BITJOIN,404)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_q = i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_out_dest_data_out_33_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8(BITSELECT,405)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_q[0:0]);

    // i_unnamed_infect_sweep47(LOGICAL,90)@302
    assign i_unnamed_infect_sweep47_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_infect_sweep62_infect_sweep8_b & i_unnamed_infect_sweep46_q;

    // i_notcmp92_infect_sweep48(LOGICAL,83)@302
    assign i_notcmp92_infect_sweep48_q = i_unnamed_infect_sweep47_q ^ VCC_q;

    // i_or103_infect_sweep50(LOGICAL,84)@302
    assign i_or103_infect_sweep50_q = i_notcmp92_infect_sweep48_q | i_xor102_infect_sweep22_q;

    // i_next_cleanups104_infect_sweep52(MUX,79)@302
    assign i_next_cleanups104_infect_sweep52_s = i_or103_infect_sweep50_q;
    always @(i_next_cleanups104_infect_sweep52_s or bubble_select_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_b or i_cleanups_shl100_infect_sweep14_vt_join_q)
    begin
        unique case (i_next_cleanups104_infect_sweep52_s)
            1'b0 : i_next_cleanups104_infect_sweep52_q = bubble_select_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_b;
            1'b1 : i_next_cleanups104_infect_sweep52_q = i_cleanups_shl100_infect_sweep14_vt_join_q;
            default : i_next_cleanups104_infect_sweep52_q = 17'b0;
        endcase
    end

    // i_llvm_fpga_push_i17_cleanups99_push25_infect_sweep53(BLACKBOX,59)@302
    // in in_stall_in@20000000
    // out out_data_out@303
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@303
    infect_sweep_i_llvm_fpga_push_i17_cleanups99_push25_0 thei_llvm_fpga_push_i17_cleanups99_push25_infect_sweep53 (
        .in_data_in(i_next_cleanups104_infect_sweep52_q),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_out_feedback_stall_out_25),
        .in_keep_going96(redist16_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_283_3_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i17_cleanups99_push25_infect_sweep53_backStall),
        .in_valid_in(SE_leftShiftStage0_uid266_i_cleanups_shl100_infect_sweep0_shift_x_V0),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i17_cleanups99_push25_infect_sweep53_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i17_cleanups99_push25_infect_sweep53_out_feedback_valid_out_25),
        .out_stall_out(i_llvm_fpga_push_i17_cleanups99_push25_infect_sweep53_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i17_cleanups99_push25_infect_sweep53_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0(REG,380)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_backEN == 1'b1)
        begin
            redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_q <= $unsigned(SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_D0);
        end
    end

    // redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1(REG,381)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_backEN == 1'b1)
        begin
            redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_q <= $unsigned(redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_q);
        end
    end

    // redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2(REG,382)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_backEN == 1'b1)
        begin
            redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_q <= $unsigned(redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_q);
        end
    end

    // c_i17_6553555(CONSTANT,8)
    assign c_i17_6553555_q = $unsigned(17'b01111111111111111);

    // i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9(BLACKBOX,56)@301
    // in in_stall_in@20000000
    // out out_data_out@302
    // out out_feedback_stall_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@302
    infect_sweep_i_llvm_fpga_pop_i17_cleanups99_pop25_0 thei_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9 (
        .in_data_in(c_i17_6553555_q),
        .in_dir(redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_q),
        .in_feedback_in_25(i_llvm_fpga_push_i17_cleanups99_push25_infect_sweep53_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i17_cleanups99_push25_infect_sweep53_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_backStall),
        .in_valid_in(SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_V0),
        .out_data_out(i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_out_feedback_stall_out_25),
        .out_stall_out(i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2(STALLENABLE,684)
    // Valid signal propagation
    assign SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_V0 = SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_R_v_0;
    // Stall signal propagation
    assign SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_s_tv_0 = i_llvm_fpga_pop_i17_cleanups99_pop25_infect_sweep9_out_stall_out & SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_R_v_0;
    // Backward Enable generation
    assign SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_backEN = ~ (SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_v_s_0 = SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_backEN & SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_V0;
    // Backward Stall generation
    assign SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_backStall = ~ (SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_backEN == 1'b0)
            begin
                SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_R_v_0 <= SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_R_v_0 & SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_s_tv_0;
            end
            else
            begin
                SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_R_v_0 <= SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_v_s_0;
            end

        end
    end

    // SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1(STALLENABLE,683)
    // Valid signal propagation
    assign SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_V0 = SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_R_v_0;
    // Stall signal propagation
    assign SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_s_tv_0 = SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_2_backStall & SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_R_v_0;
    // Backward Enable generation
    assign SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_backEN = ~ (SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_v_s_0 = SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_backEN & SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_V0;
    // Backward Stall generation
    assign SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_backStall = ~ (SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_backEN == 1'b0)
            begin
                SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_R_v_0 <= SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_R_v_0 & SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_s_tv_0;
            end
            else
            begin
                SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_R_v_0 <= SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_v_s_0;
            end

        end
    end

    // SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0(STALLENABLE,682)
    // Valid signal propagation
    assign SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_V0 = SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_R_v_0;
    // Stall signal propagation
    assign SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_s_tv_0 = SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_1_backStall & SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_R_v_0;
    // Backward Enable generation
    assign SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_backEN = ~ (SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_v_s_0 = SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_backEN & SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_V;
    // Backward Stall generation
    assign SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_backStall = ~ (SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_backEN == 1'b0)
            begin
                SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_R_v_0 <= SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_R_v_0 & SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_s_tv_0;
            end
            else
            begin
                SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_R_v_0 <= SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_v_s_0;
            end

        end
    end

    // SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0(STALLREG,860)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_r_valid <= 1'b0;
            SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_r_valid <= SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_backStall & (SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_r_valid | SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_i_valid);

            if (SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_r_data0 <= $unsigned(bubble_select_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_i_valid = SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_V1;
    // Stall signal propagation
    assign SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_backStall = SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_r_valid | ~ (SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_i_valid);

    // Valid
    assign SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_V = SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_r_valid == 1'b1 ? SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_r_valid : SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_i_valid;

    assign SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_D0 = SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_r_valid == 1'b1 ? SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_r_data0 : bubble_select_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_b;

    // bubble_join_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo(BITJOIN,476)
    assign bubble_join_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_q = redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_data_out;

    // bubble_select_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo(BITSELECT,477)
    assign bubble_select_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_b = $unsigned(bubble_join_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_q[31:0]);

    // SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo(STALLREG,859)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_valid <= 1'b0;
            SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_data0 <= 1'bx;
            SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_data1 <= 1'bx;
            SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_data2 <= 1'bx;
            SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_data3 <= 1'bx;
            SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_data4 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_valid <= SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_backStall & (SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_valid | SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_i_valid);

            if (SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_data0 <= $unsigned(bubble_select_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_b);
                SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_data1 <= $unsigned(bubble_select_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_b);
                SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_data2 <= $unsigned(bubble_select_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_b);
                SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_data3 <= $unsigned(bubble_select_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_b);
                SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_data4 <= $unsigned(bubble_select_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_and0 = redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_valid_out;
    assign SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_and1 = SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_V0 & SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_and0;
    assign SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_i_valid = SE_out_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_V0 & SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_and1;
    // Stall signal propagation
    assign SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_backStall = SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_valid | ~ (SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_i_valid);

    // Valid
    assign SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_V = SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_valid == 1'b1 ? SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_valid : SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_i_valid;

    // Data0
    assign SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_D0 = SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_valid == 1'b1 ? SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_data0 : bubble_select_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_b;
    // Data1
    assign SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_D1 = SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_valid == 1'b1 ? SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_data1 : bubble_select_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_b;
    // Data2
    assign SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_D2 = SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_valid == 1'b1 ? SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_data2 : bubble_select_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_b;
    // Data3
    assign SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_D3 = SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_valid == 1'b1 ? SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_data3 : bubble_select_redist15_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_279_fifo_b;
    // Data4
    assign SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_D4 = SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_valid == 1'b1 ? SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_r_data4 : bubble_select_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_b;

    // SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo(STALLENABLE,681)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_fromReg0 <= '0;
            SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_fromReg0 <= SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_toReg0;
            // Successor 1
            SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_fromReg1 <= SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_consumed0 = (~ (SR_SE_out_redist5_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_1_tpl_297_fifo_backStall) & SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_wireValid) | SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_fromReg0;
    assign SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_consumed1 = (~ (SR_SE_redist4_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_300_0_backStall) & SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_wireValid) | SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_fromReg1;
    // Consuming
    assign SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_StallValid = SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_backStall & SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_wireValid;
    assign SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_toReg0 = SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_StallValid & SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_consumed0;
    assign SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_toReg1 = SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_StallValid & SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_or0 = SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_consumed0;
    assign SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_wireStall = ~ (SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_consumed1 & SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_or0);
    assign SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_backStall = SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_V0 = SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_wireValid & ~ (SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_fromReg0);
    assign SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_V1 = SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_wireValid & ~ (SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_wireValid = redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_valid_out;

    // redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo(STALLFIFO,379)
    assign redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_valid_in = SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_V1;
    assign redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_stall_in = SE_out_redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_backStall;
    assign redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_data_in = bubble_select_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_b;
    assign redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_valid_in_bitsignaltemp = redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_valid_in[0];
    assign redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_stall_in_bitsignaltemp = redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_stall_in[0];
    assign redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_valid_out[0] = redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_valid_out_bitsignaltemp;
    assign redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_stall_out[0] = redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(264),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo (
        .valid_in(redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_valid_in_bitsignaltemp),
        .stall_in(redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_b),
        .valid_out(redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_valid_out_bitsignaltemp),
        .stall_out(redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_stall_out_bitsignaltemp),
        .data_out(redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11(BLACKBOX,57)@35
    // in in_stall_in@20000000
    // out out_data_out@36
    // out out_feedback_stall_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@36
    infect_sweep_i_llvm_fpga_pop_i17_initerations94_pop24_0 thei_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11 (
        .in_data_in(c_i17_6553555_q),
        .in_dir(bubble_select_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_b),
        .in_feedback_in_24(i_llvm_fpga_push_i17_initerations94_push24_infect_sweep23_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i17_initerations94_push24_infect_sweep23_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_backStall),
        .in_valid_in(SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_out_feedback_stall_out_24),
        .out_stall_out(i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo(STALLENABLE,679)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_fromReg0 <= '0;
            SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_fromReg0 <= SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_toReg0;
            // Successor 1
            SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_fromReg1 <= SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_consumed0 = (~ (i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_out_stall_out) & SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_wireValid) | SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_fromReg0;
    assign SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_consumed1 = (~ (redist3_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_297_fifo_stall_out) & SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_wireValid) | SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_fromReg1;
    // Consuming
    assign SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_StallValid = SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_backStall & SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_wireValid;
    assign SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_toReg0 = SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_StallValid & SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_consumed0;
    assign SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_toReg1 = SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_StallValid & SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_or0 = SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_consumed0;
    assign SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_wireStall = ~ (SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_consumed1 & SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_or0);
    assign SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_backStall = SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_V0 = SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_wireValid & ~ (SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_fromReg0);
    assign SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_V1 = SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_wireValid & ~ (SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_wireValid = redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_valid_out;

    // redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo(STALLFIFO,378)
    assign redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_valid_in = SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_V1;
    assign redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_stall_in = SE_out_redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_backStall;
    assign redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_data_in = bubble_select_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_b;
    assign redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_valid_in_bitsignaltemp = redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_valid_in[0];
    assign redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_stall_in_bitsignaltemp = redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_stall_in[0];
    assign redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_valid_out[0] = redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_valid_out_bitsignaltemp;
    assign redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_stall_out[0] = redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(18),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo (
        .valid_in(redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_valid_in_bitsignaltemp),
        .stall_in(redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_b),
        .valid_out(redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_valid_out_bitsignaltemp),
        .stall_out(redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_stall_out_bitsignaltemp),
        .data_out(redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo(STALLFIFO,377)
    assign redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_valid_in = SE_redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V1;
    assign redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_stall_in = SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_backStall;
    assign redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_data_in = redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q;
    assign redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_valid_in_bitsignaltemp = redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_valid_in[0];
    assign redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_stall_in_bitsignaltemp = redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_stall_in[0];
    assign redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_valid_out[0] = redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_valid_out_bitsignaltemp;
    assign redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_stall_out[0] = redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(17),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo (
        .valid_in(redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_valid_in_bitsignaltemp),
        .stall_in(redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_stall_in_bitsignaltemp),
        .data_in(redist0_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q),
        .valid_out(redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_valid_out_bitsignaltemp),
        .stall_out(redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_stall_out_bitsignaltemp),
        .data_out(redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo(STALLENABLE,677)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_fromReg0 <= '0;
            SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_fromReg0 <= SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_toReg0;
            // Successor 1
            SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_fromReg1 <= SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_consumed0 = (~ (i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_stall_out) & SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_wireValid) | SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_fromReg0;
    assign SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_consumed1 = (~ (redist2_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_34_fifo_stall_out) & SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_wireValid) | SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_fromReg1;
    // Consuming
    assign SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_StallValid = SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_backStall & SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_wireValid;
    assign SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_toReg0 = SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_StallValid & SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_consumed0;
    assign SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_toReg1 = SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_StallValid & SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_or0 = SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_consumed0;
    assign SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_wireStall = ~ (SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_consumed1 & SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_or0);
    assign SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_backStall = SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_V0 = SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_wireValid & ~ (SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_fromReg0);
    assign SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_V1 = SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_wireValid & ~ (SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_wireValid = redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_valid_out;

    // SE_out_i_llvm_fpga_pipeline_keep_going96_infect_sweep10(STALLENABLE,534)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_V0 = SE_out_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_backStall = SE_redist13_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_1_0_backStall | ~ (SE_out_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_wireValid = i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notexitcond106_infect_sweep49(STALLENABLE,548)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond106_infect_sweep49_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond106_infect_sweep49_wireValid = i_llvm_fpga_push_i1_notexitcond106_infect_sweep49_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond106_infect_sweep49(BLACKBOX,62)@302
    // in in_stall_in@20000000
    // out out_data_out@303
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    // out out_stall_out@20000000
    // out out_valid_out@303
    infect_sweep_i_llvm_fpga_push_i1_notexitcond106_0 thei_llvm_fpga_push_i1_notexitcond106_infect_sweep49 (
        .in_data_in(i_unnamed_infect_sweep47_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_not_exitcond_stall_out),
        .in_first_cleanup101(i_first_cleanup101_infect_sweep13_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond106_infect_sweep49_backStall),
        .in_valid_in(SE_out_redist18_i_cmp157_3_infect_sweep28_c_282_fifo_V0),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_notexitcond106_infect_sweep49_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_notexitcond106_infect_sweep49_out_feedback_valid_out_4),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond106_infect_sweep49_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond106_infect_sweep49_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration98_infect_sweep30(STALLENABLE,546)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration98_infect_sweep30_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration98_infect_sweep30_wireValid = i_llvm_fpga_push_i1_lastiniteration98_infect_sweep30_out_valid_out;

    // i_last_initeration97_infect_sweep24_sel_x(BITSELECT,220)@36
    assign i_last_initeration97_infect_sweep24_sel_x_b = i_next_initerations95_infect_sweep18_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration98_infect_sweep30(BLACKBOX,61)@36
    // in in_stall_in@20000000
    // out out_data_out@37
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@37
    infect_sweep_i_llvm_fpga_push_i1_lastiniteration98_0 thei_llvm_fpga_push_i1_lastiniteration98_infect_sweep30 (
        .in_data_in(i_last_initeration97_infect_sweep24_sel_x_b),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_initeration_stall_out),
        .in_keep_going96(bubble_select_redist14_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out_17_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration98_infect_sweep30_backStall),
        .in_valid_in(SE_i_next_initerations95_infect_sweep18_vt_join_V1),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_lastiniteration98_infect_sweep30_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_lastiniteration98_infect_sweep30_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration98_infect_sweep30_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration98_infect_sweep30_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo(BITJOIN,467)
    assign bubble_join_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_q = redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_data_out;

    // bubble_select_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo(BITSELECT,468)
    assign bubble_select_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_b = $unsigned(bubble_join_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_q[0:0]);

    // i_llvm_fpga_pipeline_keep_going96_infect_sweep10(BLACKBOX,55)@18
    // in in_stall_in@20000000
    // out out_data_out@19
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@19
    infect_sweep_i_llvm_fpga_pipeline_keep_going96_0 thei_llvm_fpga_pipeline_keep_going96_infect_sweep10 (
        .in_data_in(bubble_select_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_b),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration98_infect_sweep30_out_feedback_out_3),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration98_infect_sweep30_out_feedback_valid_out_3),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond106_infect_sweep49_out_feedback_out_4),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond106_infect_sweep49_out_feedback_valid_out_4),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_backStall),
        .in_valid_in(SE_out_redist1_infect_sweep_B16_merge_reg_aunroll_x_out_data_out_0_tpl_17_fifo_V0),
        .out_data_out(i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,17)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_exiting_valid_out = i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going96_infect_sweep10_exiting_stall_out = i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,144)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going96_infect_sweep10_out_pipeline_valid_out;

    // regfree_osync(GPOUT,152)
    assign out_intel_reserved_ffwd_37_0 = i_llvm_fpga_ffwd_source_i1_unnamed_infect_sweep63_infect_sweep45_out_intel_reserved_ffwd_37_0;

    // sync_out(GPOUT,157)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,164)
    assign out_lm145_infect_sweep_avm_address = i_llvm_fpga_mem_lm145_infect_sweep31_out_lm145_infect_sweep_avm_address;
    assign out_lm145_infect_sweep_avm_enable = i_llvm_fpga_mem_lm145_infect_sweep31_out_lm145_infect_sweep_avm_enable;
    assign out_lm145_infect_sweep_avm_read = i_llvm_fpga_mem_lm145_infect_sweep31_out_lm145_infect_sweep_avm_read;
    assign out_lm145_infect_sweep_avm_write = i_llvm_fpga_mem_lm145_infect_sweep31_out_lm145_infect_sweep_avm_write;
    assign out_lm145_infect_sweep_avm_writedata = i_llvm_fpga_mem_lm145_infect_sweep31_out_lm145_infect_sweep_avm_writedata;
    assign out_lm145_infect_sweep_avm_byteenable = i_llvm_fpga_mem_lm145_infect_sweep31_out_lm145_infect_sweep_avm_byteenable;
    assign out_lm145_infect_sweep_avm_burstcount = i_llvm_fpga_mem_lm145_infect_sweep31_out_lm145_infect_sweep_avm_burstcount;

    // i_masked105_infect_sweep51(LOGICAL,76)@302
    assign i_masked105_infect_sweep51_q = i_notcmp92_infect_sweep48_q & i_first_cleanup101_infect_sweep13_sel_x_b;

    // bubble_join_i_sfc_s_c0_in_for_body164_3_infect_sweeps_c0_enter2069_infect_sweep16_aunroll_x(BITJOIN,451)
    assign bubble_join_i_sfc_s_c0_in_for_body164_3_infect_sweeps_c0_enter2069_infect_sweep16_aunroll_x_q = i_sfc_s_c0_in_for_body164_3_infect_sweeps_c0_enter2069_infect_sweep16_aunroll_x_out_c0_exit211_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_body164_3_infect_sweeps_c0_enter2069_infect_sweep16_aunroll_x(BITSELECT,452)
    assign bubble_select_i_sfc_s_c0_in_for_body164_3_infect_sweeps_c0_enter2069_infect_sweep16_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body164_3_infect_sweeps_c0_enter2069_infect_sweep16_aunroll_x_q[31:0]);

    // dupName_0_sync_out_x(GPOUT,165)@302
    assign out_c0_exe1212 = bubble_select_i_sfc_s_c0_in_for_body164_3_infect_sweeps_c0_enter2069_infect_sweep16_aunroll_x_b;
    assign out_masked105 = i_masked105_infect_sweep51_q;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i17_initerations94_pop24_infect_sweep11_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,167)
    assign out_lm21_infect_sweep_avm_address = i_llvm_fpga_mem_lm21_infect_sweep38_out_lm21_infect_sweep_avm_address;
    assign out_lm21_infect_sweep_avm_enable = i_llvm_fpga_mem_lm21_infect_sweep38_out_lm21_infect_sweep_avm_enable;
    assign out_lm21_infect_sweep_avm_read = i_llvm_fpga_mem_lm21_infect_sweep38_out_lm21_infect_sweep_avm_read;
    assign out_lm21_infect_sweep_avm_write = i_llvm_fpga_mem_lm21_infect_sweep38_out_lm21_infect_sweep_avm_write;
    assign out_lm21_infect_sweep_avm_writedata = i_llvm_fpga_mem_lm21_infect_sweep38_out_lm21_infect_sweep_avm_writedata;
    assign out_lm21_infect_sweep_avm_byteenable = i_llvm_fpga_mem_lm21_infect_sweep38_out_lm21_infect_sweep_avm_byteenable;
    assign out_lm21_infect_sweep_avm_burstcount = i_llvm_fpga_mem_lm21_infect_sweep38_out_lm21_infect_sweep_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,168)
    assign out_lm24_infect_sweep_avm_address = i_llvm_fpga_mem_lm24_infect_sweep39_out_lm24_infect_sweep_avm_address;
    assign out_lm24_infect_sweep_avm_enable = i_llvm_fpga_mem_lm24_infect_sweep39_out_lm24_infect_sweep_avm_enable;
    assign out_lm24_infect_sweep_avm_read = i_llvm_fpga_mem_lm24_infect_sweep39_out_lm24_infect_sweep_avm_read;
    assign out_lm24_infect_sweep_avm_write = i_llvm_fpga_mem_lm24_infect_sweep39_out_lm24_infect_sweep_avm_write;
    assign out_lm24_infect_sweep_avm_writedata = i_llvm_fpga_mem_lm24_infect_sweep39_out_lm24_infect_sweep_avm_writedata;
    assign out_lm24_infect_sweep_avm_byteenable = i_llvm_fpga_mem_lm24_infect_sweep39_out_lm24_infect_sweep_avm_byteenable;
    assign out_lm24_infect_sweep_avm_burstcount = i_llvm_fpga_mem_lm24_infect_sweep39_out_lm24_infect_sweep_avm_burstcount;

endmodule
