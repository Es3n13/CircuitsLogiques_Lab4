// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Apr  9 18:25:08 2026
// Host        : LAPTOP-6GRJ86SI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {D:/UQAR/2026 Hiver/Circuits
//               Logiques/Laboratoires/Lab4/Experience4/Experience4.srcs/sources_1/bd/design_3/ip/design_3_decoder_bcd_7seg_0_0/design_3_decoder_bcd_7seg_0_0_sim_netlist.v}
// Design      : design_3_decoder_bcd_7seg_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_3_decoder_bcd_7seg_0_0,decoder_bcd_7seg,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "decoder_bcd_7seg,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_3_decoder_bcd_7seg_0_0
   (bcd,
    segments);
  input [3:0]bcd;
  output [6:0]segments;

  wire [3:0]bcd;
  wire [6:0]segments;

  design_3_decoder_bcd_7seg_0_0_decoder_bcd_7seg U0
       (.bcd(bcd),
        .segments(segments));
endmodule

(* ORIG_REF_NAME = "decoder_bcd_7seg" *) 
module design_3_decoder_bcd_7seg_0_0_decoder_bcd_7seg
   (segments,
    bcd);
  output [6:0]segments;
  input [3:0]bcd;

  wire [3:0]bcd;
  wire [6:0]segments;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEAA5)) 
    \segments[0]_INST_0 
       (.I0(bcd[3]),
        .I1(bcd[0]),
        .I2(bcd[2]),
        .I3(bcd[1]),
        .O(segments[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFB98)) 
    \segments[1]_INST_0 
       (.I0(bcd[3]),
        .I1(bcd[2]),
        .I2(bcd[0]),
        .I3(bcd[1]),
        .O(segments[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFB8)) 
    \segments[2]_INST_0 
       (.I0(bcd[3]),
        .I1(bcd[1]),
        .I2(bcd[2]),
        .I3(bcd[0]),
        .O(segments[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hEA9C)) 
    \segments[3]_INST_0 
       (.I0(bcd[3]),
        .I1(bcd[2]),
        .I2(bcd[0]),
        .I3(bcd[1]),
        .O(segments[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAAB0)) 
    \segments[4]_INST_0 
       (.I0(bcd[3]),
        .I1(bcd[0]),
        .I2(bcd[1]),
        .I3(bcd[2]),
        .O(segments[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAEC8)) 
    \segments[5]_INST_0 
       (.I0(bcd[3]),
        .I1(bcd[2]),
        .I2(bcd[0]),
        .I3(bcd[1]),
        .O(segments[5]));
  LUT4 #(
    .INIT(16'hAA9C)) 
    \segments[6]_INST_0 
       (.I0(bcd[3]),
        .I1(bcd[2]),
        .I2(bcd[0]),
        .I3(bcd[1]),
        .O(segments[6]));
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
