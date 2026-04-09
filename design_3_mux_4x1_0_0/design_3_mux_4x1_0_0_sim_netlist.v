// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Apr  9 18:25:07 2026
// Host        : LAPTOP-6GRJ86SI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {D:/UQAR/2026 Hiver/Circuits
//               Logiques/Laboratoires/Lab4/Experience4/Experience4.srcs/sources_1/bd/design_3/ip/design_3_mux_4x1_0_0/design_3_mux_4x1_0_0_sim_netlist.v}
// Design      : design_3_mux_4x1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_3_mux_4x1_0_0,mux_4x1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mux_4x1,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_3_mux_4x1_0_0
   (in0,
    in1,
    in2,
    in3,
    select_in,
    bcd_out);
  input [3:0]in0;
  input [3:0]in1;
  input [3:0]in2;
  input [3:0]in3;
  input [1:0]select_in;
  output [3:0]bcd_out;

  wire [3:0]bcd_out;
  wire [3:0]in0;
  wire [3:0]in1;
  wire [3:0]in2;
  wire [3:0]in3;
  wire [1:0]select_in;

  design_3_mux_4x1_0_0_mux_4x1 U0
       (.bcd_out(bcd_out),
        .in0(in0),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .select_in(select_in));
endmodule

(* ORIG_REF_NAME = "mux_4x1" *) 
module design_3_mux_4x1_0_0_mux_4x1
   (bcd_out,
    in1,
    in0,
    in3,
    select_in,
    in2);
  output [3:0]bcd_out;
  input [3:0]in1;
  input [3:0]in0;
  input [3:0]in3;
  input [1:0]select_in;
  input [3:0]in2;

  wire [3:0]bcd_out;
  wire [3:0]in0;
  wire [3:0]in1;
  wire [3:0]in2;
  wire [3:0]in3;
  wire [1:0]select_in;

  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \bcd_out[0]_INST_0 
       (.I0(in1[0]),
        .I1(in0[0]),
        .I2(in3[0]),
        .I3(select_in[0]),
        .I4(select_in[1]),
        .I5(in2[0]),
        .O(bcd_out[0]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \bcd_out[1]_INST_0 
       (.I0(in1[1]),
        .I1(in0[1]),
        .I2(in3[1]),
        .I3(select_in[0]),
        .I4(select_in[1]),
        .I5(in2[1]),
        .O(bcd_out[1]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \bcd_out[2]_INST_0 
       (.I0(in1[2]),
        .I1(in0[2]),
        .I2(in3[2]),
        .I3(select_in[0]),
        .I4(select_in[1]),
        .I5(in2[2]),
        .O(bcd_out[2]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \bcd_out[3]_INST_0 
       (.I0(in1[3]),
        .I1(in0[3]),
        .I2(in3[3]),
        .I3(select_in[0]),
        .I4(select_in[1]),
        .I5(in2[3]),
        .O(bcd_out[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
