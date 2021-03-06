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

// SystemVerilog created from infect_sweep_B19_merge
// SystemVerilog created on Tue Nov 24 22:05:07 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module infect_sweep_B19_merge (
    input wire [0:0] in_forked79_0,
    input wire [0:0] in_forked79_1,
    input wire [31:0] in_i3_0185_4_0,
    input wire [31:0] in_i3_0185_4_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked79,
    output wire [31:0] out_i3_0185_4,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked79_mux_s;
    reg [0:0] forked79_mux_q;
    wire [0:0] i3_0185_4_mux_s;
    reg [31:0] i3_0185_4_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked79_mux(MUX,2)
    assign forked79_mux_s = in_valid_in_0;
    always @(forked79_mux_s or in_forked79_1 or in_forked79_0)
    begin
        unique case (forked79_mux_s)
            1'b0 : forked79_mux_q = in_forked79_1;
            1'b1 : forked79_mux_q = in_forked79_0;
            default : forked79_mux_q = 1'b0;
        endcase
    end

    // out_forked79(GPOUT,11)
    assign out_forked79 = forked79_mux_q;

    // i3_0185_4_mux(MUX,3)
    assign i3_0185_4_mux_s = in_valid_in_0;
    always @(i3_0185_4_mux_s or in_i3_0185_4_1 or in_i3_0185_4_0)
    begin
        unique case (i3_0185_4_mux_s)
            1'b0 : i3_0185_4_mux_q = in_i3_0185_4_1;
            1'b1 : i3_0185_4_mux_q = in_i3_0185_4_0;
            default : i3_0185_4_mux_q = 32'b0;
        endcase
    end

    // out_i3_0185_4(GPOUT,12)
    assign out_i3_0185_4 = i3_0185_4_mux_q;

    // valid_or(LOGICAL,18)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,16)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,13)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,17)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,14)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,15)
    assign out_valid_out = valid_or_q;

endmodule
