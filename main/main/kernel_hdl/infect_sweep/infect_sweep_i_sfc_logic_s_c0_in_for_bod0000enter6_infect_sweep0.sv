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

// SystemVerilog created from infect_sweep_i_sfc_logic_s_c0_in_for_bod0000enter6_infect_sweep0
// SystemVerilog created on Tue Nov 24 22:05:07 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module infect_sweep_i_sfc_logic_s_c0_in_for_bod0000enter6_infect_sweep0 (
    output wire [0:0] out_c0_exi1_0_tpl,
    output wire [31:0] out_c0_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_infect_sweep23,
    input wire [0:0] in_c0_eni3_0_tpl,
    input wire [31:0] in_c0_eni3_1_tpl,
    input wire [0:0] in_c0_eni3_2_tpl,
    input wire [0:0] in_c0_eni3_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_llvm_fpga_pop_i32_inc198168_pop14_infect_sweep2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_inc198168_pop14_infect_sweep2_out_feedback_stall_out_14;
    wire [31:0] i_llvm_fpga_push_i32_inc198168_push14_infect_sweep3_out_data_out;
    wire [31:0] i_llvm_fpga_push_i32_inc198168_push14_infect_sweep3_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i32_inc198168_push14_infect_sweep3_out_feedback_valid_out_14;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    reg [31:0] redist0_sync_together11_aunroll_x_in_c0_eni3_1_tpl_1_q;
    reg [0:0] redist1_sync_together11_aunroll_x_in_c0_eni3_2_tpl_1_q;
    reg [0:0] redist2_sync_together11_aunroll_x_in_c0_eni3_3_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,9)@298 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg2(REG,11)@298 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg1(REG,10)@298 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // redist1_sync_together11_aunroll_x_in_c0_eni3_2_tpl_1(DELAY,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together11_aunroll_x_in_c0_eni3_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together11_aunroll_x_in_c0_eni3_2_tpl_1_q <= $unsigned(in_c0_eni3_2_tpl);
        end
    end

    // redist0_sync_together11_aunroll_x_in_c0_eni3_1_tpl_1(DELAY,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together11_aunroll_x_in_c0_eni3_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together11_aunroll_x_in_c0_eni3_1_tpl_1_q <= $unsigned(in_c0_eni3_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_inc198168_pop14_infect_sweep2(BLACKBOX,4)@299
    // out out_feedback_stall_out_14@20000000
    infect_sweep_i_llvm_fpga_pop_i32_inc198168_pop14_0 thei_llvm_fpga_pop_i32_inc198168_pop14_infect_sweep2 (
        .in_data_in(redist0_sync_together11_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_dir(redist1_sync_together11_aunroll_x_in_c0_eni3_2_tpl_1_q),
        .in_feedback_in_14(i_llvm_fpga_push_i32_inc198168_push14_infect_sweep3_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i32_inc198168_push14_infect_sweep3_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_inc198168_pop14_infect_sweep2_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i32_inc198168_pop14_infect_sweep2_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together11_aunroll_x_in_c0_eni3_3_tpl_1(DELAY,14)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together11_aunroll_x_in_c0_eni3_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together11_aunroll_x_in_c0_eni3_3_tpl_1_q <= $unsigned(in_c0_eni3_3_tpl);
        end
    end

    // i_llvm_fpga_push_i32_inc198168_push14_infect_sweep3(BLACKBOX,5)@299
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    infect_sweep_i_llvm_fpga_push_i32_inc198168_push14_0 thei_llvm_fpga_push_i32_inc198168_push14_infect_sweep3 (
        .in_c0_ene3(redist2_sync_together11_aunroll_x_in_c0_eni3_3_tpl_1_q),
        .in_data_in(i_llvm_fpga_pop_i32_inc198168_pop14_infect_sweep2_out_data_out),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i32_inc198168_pop14_infect_sweep2_out_feedback_stall_out_14),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_push_i32_inc198168_push14_infect_sweep3_out_data_out),
        .out_feedback_out_14(i_llvm_fpga_push_i32_inc198168_push14_infect_sweep3_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i32_inc198168_push14_infect_sweep3_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,7)@299
    assign out_c0_exi1_0_tpl = GND_q;
    assign out_c0_exi1_1_tpl = i_llvm_fpga_push_i32_inc198168_push14_infect_sweep3_out_data_out;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_infect_sweep23 = GND_q;

endmodule
