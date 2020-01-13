//
// Generated by Bluespec Compiler, version 2019.05.beta2 (build a88bf40db, 2019-05-24)
//
//
//
//
// Ports:
// Name                         I/O  size props
// checkForException              O     5
// checkForException_dInst        I    72
// checkForException_regs         I    27 unused
// checkForException_csrState     I    15
//
// Combinational paths from inputs to outputs:
//   (checkForException_dInst, checkForException_csrState) -> checkForException
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module module_checkForException(checkForException_dInst,
				checkForException_regs,
				checkForException_csrState,
				checkForException);
  // value method checkForException
  input  [71 : 0] checkForException_dInst;
  input  [26 : 0] checkForException_regs;
  input  [14 : 0] checkForException_csrState;
  output [4 : 0] checkForException;

  // signals for module outputs
  wire [4 : 0] checkForException;

  // remaining internal signals
  reg [11 : 0] CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2;
  reg [5 : 0] IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92;
  reg [2 : 0] CASE_checkForException_csrState_BITS_14_TO_12__ETC__q1;
  reg IF_checkForException_dInst_BITS_71_TO_67_EQ_20_ETC___d219;
  wire [2 : 0] IF_NOT_checkForException_dInst_BITS_49_TO_47_7_ETC___d199;

  // value method checkForException
  assign checkForException =
	     { checkForException_dInst[71:67] == 5'd17 ||
	       checkForException_dInst[71:67] == 5'd18 ||
	       IF_checkForException_dInst_BITS_71_TO_67_EQ_20_ETC___d219,
	       ((checkForException_dInst[71:67] == 5'd17) ?
		  checkForException_csrState[10:9] != 2'd0 &&
		  checkForException_csrState[10:9] != 2'd1 &&
		  checkForException_csrState[10:9] != 2'd3 :
		  checkForException_dInst[71:67] != 5'd18) ?
		 4'd2 :
		 ((checkForException_dInst[71:67] == 5'd18) ?
		    4'd3 :
		    ((checkForException_dInst[71:67] == 5'd17 &&
		      checkForException_csrState[10:9] == 2'd0) ?
		       4'd8 :
		       ((checkForException_dInst[71:67] == 5'd17 &&
			 checkForException_csrState[10:9] == 2'd1) ?
			  4'd9 :
			  ((checkForException_dInst[71:67] == 5'd17 &&
			    checkForException_csrState[10:9] == 2'd3) ?
			     4'd11 :
			     4'd15)))) } ;

  // remaining internal signals
  assign IF_NOT_checkForException_dInst_BITS_49_TO_47_7_ETC___d199 =
	     (checkForException_dInst[49:47] != 3'd0 &&
	      checkForException_dInst[49:47] != 3'd1 &&
	      checkForException_dInst[49:47] != 3'd2 &&
	      checkForException_dInst[49:47] != 3'd3 &&
	      checkForException_dInst[49:47] != 3'd4) ?
	       CASE_checkForException_csrState_BITS_14_TO_12__ETC__q1 :
	       checkForException_dInst[49:47] ;
  always@(checkForException_dInst)
  begin
    case (checkForException_dInst[44:33])
      12'd1: IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd0;
      12'd2: IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd1;
      12'd3: IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd2;
      12'd256:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd8;
      12'd260:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd9;
      12'd261:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd10;
      12'd262:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd11;
      12'd320:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd12;
      12'd321:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd13;
      12'd322:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd14;
      12'd323:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd15;
      12'd324:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd16;
      12'd384:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd17;
      12'd768:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd18;
      12'd769:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd19;
      12'd770:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd20;
      12'd771:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd21;
      12'd772:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd22;
      12'd773:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd23;
      12'd774:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd24;
      12'd832:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd25;
      12'd833:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd26;
      12'd834:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd27;
      12'd835:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd28;
      12'd836:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd29;
      12'd2048:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd6;
      12'd2049:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd7;
      12'd2816:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd30;
      12'd2818:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd31;
      12'd3072:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd3;
      12'd3073:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd4;
      12'd3074:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd5;
      12'd3857:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd32;
      12'd3858:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd33;
      12'd3859:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd34;
      12'd3860:
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 = 6'd35;
      default: IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 =
		   6'd36;
    endcase
  end
  always@(checkForException_csrState)
  begin
    case (checkForException_csrState[14:12])
      3'd0, 3'd1, 3'd2, 3'd3, 3'd4:
	  CASE_checkForException_csrState_BITS_14_TO_12__ETC__q1 =
	      checkForException_csrState[14:12];
      default: CASE_checkForException_csrState_BITS_14_TO_12__ETC__q1 = 3'd5;
    endcase
  end
  always@(IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92)
  begin
    case (IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92)
      6'd0: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd1;
      6'd1: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd2;
      6'd2: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd3;
      6'd3: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd3072;
      6'd4: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd3073;
      6'd5: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd3074;
      6'd6: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd2048;
      6'd7: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd2049;
      6'd8: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd256;
      6'd9: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd260;
      6'd10: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd261;
      6'd11: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd262;
      6'd12: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd320;
      6'd13: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd321;
      6'd14: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd322;
      6'd15: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd323;
      6'd16: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd324;
      6'd17: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd384;
      6'd18: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd768;
      6'd19: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd769;
      6'd20: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd770;
      6'd21: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd771;
      6'd22: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd772;
      6'd23: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd773;
      6'd24: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd774;
      6'd25: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd832;
      6'd26: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd833;
      6'd27: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd834;
      6'd28: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd835;
      6'd29: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd836;
      6'd30:
	  CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd2816;
      6'd31:
	  CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd2818;
      6'd32:
	  CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd3857;
      6'd33:
	  CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd3858;
      6'd34:
	  CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd3859;
      6'd35:
	  CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 = 12'd3860;
      default: CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 =
		   12'd2303;
    endcase
  end
  always@(checkForException_dInst or
	  IF_NOT_checkForException_dInst_BITS_49_TO_47_7_ETC___d199 or
	  checkForException_csrState or
	  CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2 or
	  IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92)
  begin
    case (checkForException_dInst[71:67])
      5'd13:
	  IF_checkForException_dInst_BITS_71_TO_67_EQ_20_ETC___d219 =
	      checkForException_csrState[10:9] <
	      CASE_IF_checkForException_dInst_BIT_45_8_THEN__ETC__q2[9:8] ||
	      checkForException_csrState[10:9] == 2'd1 &&
	      checkForException_csrState[8] &&
	      IF_checkForException_dInst_BIT_45_8_THEN_IF_ch_ETC___d92 ==
	      6'd17;
      5'd16:
	  IF_checkForException_dInst_BITS_71_TO_67_EQ_20_ETC___d219 =
	      checkForException_csrState[10:9] == 2'd1 &&
	      checkForException_csrState[8];
      5'd19:
	  IF_checkForException_dInst_BITS_71_TO_67_EQ_20_ETC___d219 =
	      checkForException_csrState[10:9] == 2'd0 ||
	      checkForException_csrState[10:9] == 2'd1 &&
	      checkForException_csrState[6];
      5'd20:
	  IF_checkForException_dInst_BITS_71_TO_67_EQ_20_ETC___d219 =
	      checkForException_csrState[10:9] != 2'd3;
      default: IF_checkForException_dInst_BITS_71_TO_67_EQ_20_ETC___d219 =
		   checkForException_dInst[71:67] == 5'd12 &&
		   (checkForException_dInst[66:64] != 3'd4 ||
		    IF_NOT_checkForException_dInst_BITS_49_TO_47_7_ETC___d199 !=
		    3'd0 &&
		    IF_NOT_checkForException_dInst_BITS_49_TO_47_7_ETC___d199 !=
		    3'd1 &&
		    IF_NOT_checkForException_dInst_BITS_49_TO_47_7_ETC___d199 !=
		    3'd2 &&
		    IF_NOT_checkForException_dInst_BITS_49_TO_47_7_ETC___d199 !=
		    3'd3 &&
		    IF_NOT_checkForException_dInst_BITS_49_TO_47_7_ETC___d199 !=
		    3'd4);
    endcase
  end
endmodule  // module_checkForException

