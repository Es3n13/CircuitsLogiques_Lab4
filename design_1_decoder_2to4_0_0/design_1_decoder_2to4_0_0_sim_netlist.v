// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Apr  7 10:55:49 2026
// Host        : LAPTOP-6GRJ86SI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/UQAR/2026 Hiver/Circuits
//               Logiques/Laboratoires/Lab4/Experience4/Experience4.srcs/sources_1/bd/design_1/ip/design_1_decoder_2to4_0_0/design_1_decoder_2to4_0_0_sim_netlist.v}
// Design      : design_1_decoder_2to4_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_decoder_2to4_0_0,decoder_2to4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "decoder_2to4,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_decoder_2to4_0_0
   (sel,
    an);
  input [1:0]sel;
  output [3:0]an;

  wire [3:0]an;
  wire [1:0]sel;

  design_1_decoder_2to4_0_0_decoder_2to4 U0
       (.an({an[3],an[0]}),
        .sel(sel));
  LUT2 #(
    .INIT(4'hB)) 
    \an[1]_INST_0 
       (.I0(sel[1]),
        .I1(sel[0]),
        .O(an[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \an[2]_INST_0 
       (.I0(sel[0]),
        .I1(sel[1]),
        .O(an[2]));
endmodule

(* ORIG_REF_NAME = "decoder_2to4" *) 
module design_1_decoder_2to4_0_0_decoder_2to4
   (an,
    sel);
  output [1:0]an;
  input [1:0]sel;

  wire [1:0]an;
  wire [1:0]sel;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \an[0]_INST_0 
       (.I0(sel[0]),
        .I1(sel[1]),
        .O(an[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \an[3]_INST_0 
       (.I0(sel[0]),
        .I1(sel[1]),
        .O(an[1]));
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
