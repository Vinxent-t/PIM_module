module PEArray(
  input         clock,
  input         reset,
  input  [15:0] a_in_0,
  input  [15:0] a_in_1,
  input  [15:0] a_in_2,
  input  [15:0] a_in_3,
  input  [15:0] b_in_0,
  input  [15:0] b_in_1,
  input  [15:0] b_in_2,
  input  [15:0] b_in_3,
  input  [15:0] c_in_0,
  input  [15:0] c_in_1,
  input  [15:0] c_in_2,
  input  [15:0] c_in_3,
  output [15:0] c_out_0,
  output [15:0] c_out_1,
  output [15:0] c_out_2,
  output [15:0] c_out_3,
  input         stationaryCtrl
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
`endif // RANDOMIZE_REG_INIT
  reg [15:0] a_reg_0_0; // @[ibex_core.scala 16:18]
  reg [15:0] a_reg_0_1; // @[ibex_core.scala 16:18]
  reg [15:0] a_reg_0_2; // @[ibex_core.scala 16:18]
  reg [15:0] a_reg_0_3; // @[ibex_core.scala 16:18]
  reg [15:0] a_reg_1_0; // @[ibex_core.scala 16:18]
  reg [15:0] a_reg_1_1; // @[ibex_core.scala 16:18]
  reg [15:0] a_reg_1_2; // @[ibex_core.scala 16:18]
  reg [15:0] a_reg_1_3; // @[ibex_core.scala 16:18]
  reg [15:0] a_reg_2_0; // @[ibex_core.scala 16:18]
  reg [15:0] a_reg_2_1; // @[ibex_core.scala 16:18]
  reg [15:0] a_reg_2_2; // @[ibex_core.scala 16:18]
  reg [15:0] a_reg_2_3; // @[ibex_core.scala 16:18]
  reg [15:0] a_reg_3_0; // @[ibex_core.scala 16:18]
  reg [15:0] a_reg_3_1; // @[ibex_core.scala 16:18]
  reg [15:0] a_reg_3_2; // @[ibex_core.scala 16:18]
  reg [15:0] a_reg_3_3; // @[ibex_core.scala 16:18]
  reg [15:0] b_reg_0_0; // @[ibex_core.scala 17:18]
  reg [15:0] b_reg_0_1; // @[ibex_core.scala 17:18]
  reg [15:0] b_reg_0_2; // @[ibex_core.scala 17:18]
  reg [15:0] b_reg_0_3; // @[ibex_core.scala 17:18]
  reg [15:0] b_reg_1_0; // @[ibex_core.scala 17:18]
  reg [15:0] b_reg_1_1; // @[ibex_core.scala 17:18]
  reg [15:0] b_reg_1_2; // @[ibex_core.scala 17:18]
  reg [15:0] b_reg_1_3; // @[ibex_core.scala 17:18]
  reg [15:0] b_reg_2_0; // @[ibex_core.scala 17:18]
  reg [15:0] b_reg_2_1; // @[ibex_core.scala 17:18]
  reg [15:0] b_reg_2_2; // @[ibex_core.scala 17:18]
  reg [15:0] b_reg_2_3; // @[ibex_core.scala 17:18]
  reg [15:0] b_reg_3_0; // @[ibex_core.scala 17:18]
  reg [15:0] b_reg_3_1; // @[ibex_core.scala 17:18]
  reg [15:0] b_reg_3_2; // @[ibex_core.scala 17:18]
  reg [15:0] b_reg_3_3; // @[ibex_core.scala 17:18]
  reg [15:0] c_reg_0_0; // @[ibex_core.scala 18:18]
  reg [15:0] c_reg_0_1; // @[ibex_core.scala 18:18]
  reg [15:0] c_reg_0_2; // @[ibex_core.scala 18:18]
  reg [15:0] c_reg_0_3; // @[ibex_core.scala 18:18]
  reg [15:0] c_reg_1_0; // @[ibex_core.scala 18:18]
  reg [15:0] c_reg_1_1; // @[ibex_core.scala 18:18]
  reg [15:0] c_reg_1_2; // @[ibex_core.scala 18:18]
  reg [15:0] c_reg_1_3; // @[ibex_core.scala 18:18]
  reg [15:0] c_reg_2_0; // @[ibex_core.scala 18:18]
  reg [15:0] c_reg_2_1; // @[ibex_core.scala 18:18]
  reg [15:0] c_reg_2_2; // @[ibex_core.scala 18:18]
  reg [15:0] c_reg_2_3; // @[ibex_core.scala 18:18]
  reg [15:0] c_reg_3_0; // @[ibex_core.scala 18:18]
  reg [15:0] c_reg_3_1; // @[ibex_core.scala 18:18]
  reg [15:0] c_reg_3_2; // @[ibex_core.scala 18:18]
  reg [15:0] c_reg_3_3; // @[ibex_core.scala 18:18]
  wire [31:0] _c_reg_0_0_T = a_reg_0_0 * b_reg_0_0; // @[ibex_core.scala 41:34]
  wire [31:0] _GEN_32 = {{16'd0}, c_in_0}; // @[ibex_core.scala 41:48]
  wire [31:0] _c_reg_0_0_T_2 = _c_reg_0_0_T + _GEN_32; // @[ibex_core.scala 41:48]
  wire [31:0] _c_reg_0_1_T = a_reg_0_1 * b_reg_0_1; // @[ibex_core.scala 43:36]
  wire [31:0] _GEN_33 = {{16'd0}, c_reg_0_0}; // @[ibex_core.scala 43:50]
  wire [31:0] _c_reg_0_1_T_2 = _c_reg_0_1_T + _GEN_33; // @[ibex_core.scala 43:50]
  wire [31:0] _c_reg_0_2_T = a_reg_0_2 * b_reg_0_2; // @[ibex_core.scala 43:36]
  wire [31:0] _GEN_34 = {{16'd0}, c_reg_0_1}; // @[ibex_core.scala 43:50]
  wire [31:0] _c_reg_0_2_T_2 = _c_reg_0_2_T + _GEN_34; // @[ibex_core.scala 43:50]
  wire [31:0] _c_reg_0_3_T = a_reg_0_3 * b_reg_0_3; // @[ibex_core.scala 43:36]
  wire [31:0] _GEN_35 = {{16'd0}, c_reg_0_2}; // @[ibex_core.scala 43:50]
  wire [31:0] _c_reg_0_3_T_2 = _c_reg_0_3_T + _GEN_35; // @[ibex_core.scala 43:50]
  wire [31:0] _c_reg_1_0_T = a_reg_1_0 * b_reg_1_0; // @[ibex_core.scala 41:34]
  wire [31:0] _GEN_36 = {{16'd0}, c_in_1}; // @[ibex_core.scala 41:48]
  wire [31:0] _c_reg_1_0_T_2 = _c_reg_1_0_T + _GEN_36; // @[ibex_core.scala 41:48]
  wire [31:0] _c_reg_1_1_T = a_reg_1_1 * b_reg_1_1; // @[ibex_core.scala 43:36]
  wire [31:0] _GEN_37 = {{16'd0}, c_reg_1_0}; // @[ibex_core.scala 43:50]
  wire [31:0] _c_reg_1_1_T_2 = _c_reg_1_1_T + _GEN_37; // @[ibex_core.scala 43:50]
  wire [31:0] _c_reg_1_2_T = a_reg_1_2 * b_reg_1_2; // @[ibex_core.scala 43:36]
  wire [31:0] _GEN_38 = {{16'd0}, c_reg_1_1}; // @[ibex_core.scala 43:50]
  wire [31:0] _c_reg_1_2_T_2 = _c_reg_1_2_T + _GEN_38; // @[ibex_core.scala 43:50]
  wire [31:0] _c_reg_1_3_T = a_reg_1_3 * b_reg_1_3; // @[ibex_core.scala 43:36]
  wire [31:0] _GEN_39 = {{16'd0}, c_reg_1_2}; // @[ibex_core.scala 43:50]
  wire [31:0] _c_reg_1_3_T_2 = _c_reg_1_3_T + _GEN_39; // @[ibex_core.scala 43:50]
  wire [31:0] _c_reg_2_0_T = a_reg_2_0 * b_reg_2_0; // @[ibex_core.scala 41:34]
  wire [31:0] _GEN_40 = {{16'd0}, c_in_2}; // @[ibex_core.scala 41:48]
  wire [31:0] _c_reg_2_0_T_2 = _c_reg_2_0_T + _GEN_40; // @[ibex_core.scala 41:48]
  wire [31:0] _c_reg_2_1_T = a_reg_2_1 * b_reg_2_1; // @[ibex_core.scala 43:36]
  wire [31:0] _GEN_41 = {{16'd0}, c_reg_2_0}; // @[ibex_core.scala 43:50]
  wire [31:0] _c_reg_2_1_T_2 = _c_reg_2_1_T + _GEN_41; // @[ibex_core.scala 43:50]
  wire [31:0] _c_reg_2_2_T = a_reg_2_2 * b_reg_2_2; // @[ibex_core.scala 43:36]
  wire [31:0] _GEN_42 = {{16'd0}, c_reg_2_1}; // @[ibex_core.scala 43:50]
  wire [31:0] _c_reg_2_2_T_2 = _c_reg_2_2_T + _GEN_42; // @[ibex_core.scala 43:50]
  wire [31:0] _c_reg_2_3_T = a_reg_2_3 * b_reg_2_3; // @[ibex_core.scala 43:36]
  wire [31:0] _GEN_43 = {{16'd0}, c_reg_2_2}; // @[ibex_core.scala 43:50]
  wire [31:0] _c_reg_2_3_T_2 = _c_reg_2_3_T + _GEN_43; // @[ibex_core.scala 43:50]
  wire [31:0] _c_reg_3_0_T = a_reg_3_0 * b_reg_3_0; // @[ibex_core.scala 41:34]
  wire [31:0] _GEN_44 = {{16'd0}, c_in_3}; // @[ibex_core.scala 41:48]
  wire [31:0] _c_reg_3_0_T_2 = _c_reg_3_0_T + _GEN_44; // @[ibex_core.scala 41:48]
  wire [31:0] _c_reg_3_1_T = a_reg_3_1 * b_reg_3_1; // @[ibex_core.scala 43:36]
  wire [31:0] _GEN_45 = {{16'd0}, c_reg_3_0}; // @[ibex_core.scala 43:50]
  wire [31:0] _c_reg_3_1_T_2 = _c_reg_3_1_T + _GEN_45; // @[ibex_core.scala 43:50]
  wire [31:0] _c_reg_3_2_T = a_reg_3_2 * b_reg_3_2; // @[ibex_core.scala 43:36]
  wire [31:0] _GEN_46 = {{16'd0}, c_reg_3_1}; // @[ibex_core.scala 43:50]
  wire [31:0] _c_reg_3_2_T_2 = _c_reg_3_2_T + _GEN_46; // @[ibex_core.scala 43:50]
  wire [31:0] _c_reg_3_3_T = a_reg_3_3 * b_reg_3_3; // @[ibex_core.scala 43:36]
  wire [31:0] _GEN_47 = {{16'd0}, c_reg_3_2}; // @[ibex_core.scala 43:50]
  wire [31:0] _c_reg_3_3_T_2 = _c_reg_3_3_T + _GEN_47; // @[ibex_core.scala 43:50]
  wire [31:0] _GEN_16 = ~stationaryCtrl ? _c_reg_0_0_T_2 : {{16'd0}, c_reg_0_0}; // @[ibex_core.scala 18:18 39:26 41:19]
  wire [31:0] _GEN_17 = ~stationaryCtrl ? _c_reg_0_1_T_2 : {{16'd0}, c_reg_0_1}; // @[ibex_core.scala 18:18 39:26 43:21]
  wire [31:0] _GEN_18 = ~stationaryCtrl ? _c_reg_0_2_T_2 : {{16'd0}, c_reg_0_2}; // @[ibex_core.scala 18:18 39:26 43:21]
  wire [31:0] _GEN_19 = ~stationaryCtrl ? _c_reg_0_3_T_2 : {{16'd0}, c_reg_0_3}; // @[ibex_core.scala 18:18 39:26 43:21]
  wire [31:0] _GEN_20 = ~stationaryCtrl ? _c_reg_1_0_T_2 : {{16'd0}, c_reg_1_0}; // @[ibex_core.scala 18:18 39:26 41:19]
  wire [31:0] _GEN_21 = ~stationaryCtrl ? _c_reg_1_1_T_2 : {{16'd0}, c_reg_1_1}; // @[ibex_core.scala 18:18 39:26 43:21]
  wire [31:0] _GEN_22 = ~stationaryCtrl ? _c_reg_1_2_T_2 : {{16'd0}, c_reg_1_2}; // @[ibex_core.scala 18:18 39:26 43:21]
  wire [31:0] _GEN_23 = ~stationaryCtrl ? _c_reg_1_3_T_2 : {{16'd0}, c_reg_1_3}; // @[ibex_core.scala 18:18 39:26 43:21]
  wire [31:0] _GEN_24 = ~stationaryCtrl ? _c_reg_2_0_T_2 : {{16'd0}, c_reg_2_0}; // @[ibex_core.scala 18:18 39:26 41:19]
  wire [31:0] _GEN_25 = ~stationaryCtrl ? _c_reg_2_1_T_2 : {{16'd0}, c_reg_2_1}; // @[ibex_core.scala 18:18 39:26 43:21]
  wire [31:0] _GEN_26 = ~stationaryCtrl ? _c_reg_2_2_T_2 : {{16'd0}, c_reg_2_2}; // @[ibex_core.scala 18:18 39:26 43:21]
  wire [31:0] _GEN_27 = ~stationaryCtrl ? _c_reg_2_3_T_2 : {{16'd0}, c_reg_2_3}; // @[ibex_core.scala 18:18 39:26 43:21]
  wire [31:0] _GEN_28 = ~stationaryCtrl ? _c_reg_3_0_T_2 : {{16'd0}, c_reg_3_0}; // @[ibex_core.scala 18:18 39:26 41:19]
  wire [31:0] _GEN_29 = ~stationaryCtrl ? _c_reg_3_1_T_2 : {{16'd0}, c_reg_3_1}; // @[ibex_core.scala 18:18 39:26 43:21]
  wire [31:0] _GEN_30 = ~stationaryCtrl ? _c_reg_3_2_T_2 : {{16'd0}, c_reg_3_2}; // @[ibex_core.scala 18:18 39:26 43:21]
  wire [31:0] _GEN_31 = ~stationaryCtrl ? _c_reg_3_3_T_2 : {{16'd0}, c_reg_3_3}; // @[ibex_core.scala 18:18 39:26 43:21]
  assign c_out_0 = c_reg_0_3; // @[ibex_core.scala 50:14]
  assign c_out_1 = c_reg_1_3; // @[ibex_core.scala 50:14]
  assign c_out_2 = c_reg_2_3; // @[ibex_core.scala 50:14]
  assign c_out_3 = c_reg_3_3; // @[ibex_core.scala 50:14]
  always @(posedge clock) begin
    a_reg_0_0 <= a_in_0; // @[ibex_core.scala 22:17]
    a_reg_0_1 <= a_in_1; // @[ibex_core.scala 22:17]
    a_reg_0_2 <= a_in_2; // @[ibex_core.scala 22:17]
    a_reg_0_3 <= a_in_3; // @[ibex_core.scala 22:17]
    a_reg_1_0 <= a_reg_0_0; // @[ibex_core.scala 24:19]
    a_reg_1_1 <= a_reg_0_1; // @[ibex_core.scala 24:19]
    a_reg_1_2 <= a_reg_0_2; // @[ibex_core.scala 24:19]
    a_reg_1_3 <= a_reg_0_3; // @[ibex_core.scala 24:19]
    a_reg_2_0 <= a_reg_1_0; // @[ibex_core.scala 24:19]
    a_reg_2_1 <= a_reg_1_1; // @[ibex_core.scala 24:19]
    a_reg_2_2 <= a_reg_1_2; // @[ibex_core.scala 24:19]
    a_reg_2_3 <= a_reg_1_3; // @[ibex_core.scala 24:19]
    a_reg_3_0 <= a_reg_2_0; // @[ibex_core.scala 24:19]
    a_reg_3_1 <= a_reg_2_1; // @[ibex_core.scala 24:19]
    a_reg_3_2 <= a_reg_2_2; // @[ibex_core.scala 24:19]
    a_reg_3_3 <= a_reg_2_3; // @[ibex_core.scala 24:19]
    if (stationaryCtrl) begin // @[ibex_core.scala 29:25]
      b_reg_0_0 <= b_in_0; // @[ibex_core.scala 31:19]
    end
    if (stationaryCtrl) begin // @[ibex_core.scala 29:25]
      b_reg_0_1 <= b_reg_0_0; // @[ibex_core.scala 33:21]
    end
    if (stationaryCtrl) begin // @[ibex_core.scala 29:25]
      b_reg_0_2 <= b_reg_0_1; // @[ibex_core.scala 33:21]
    end
    if (stationaryCtrl) begin // @[ibex_core.scala 29:25]
      b_reg_0_3 <= b_reg_0_2; // @[ibex_core.scala 33:21]
    end
    if (stationaryCtrl) begin // @[ibex_core.scala 29:25]
      b_reg_1_0 <= b_in_1; // @[ibex_core.scala 31:19]
    end
    if (stationaryCtrl) begin // @[ibex_core.scala 29:25]
      b_reg_1_1 <= b_reg_1_0; // @[ibex_core.scala 33:21]
    end
    if (stationaryCtrl) begin // @[ibex_core.scala 29:25]
      b_reg_1_2 <= b_reg_1_1; // @[ibex_core.scala 33:21]
    end
    if (stationaryCtrl) begin // @[ibex_core.scala 29:25]
      b_reg_1_3 <= b_reg_1_2; // @[ibex_core.scala 33:21]
    end
    if (stationaryCtrl) begin // @[ibex_core.scala 29:25]
      b_reg_2_0 <= b_in_2; // @[ibex_core.scala 31:19]
    end
    if (stationaryCtrl) begin // @[ibex_core.scala 29:25]
      b_reg_2_1 <= b_reg_2_0; // @[ibex_core.scala 33:21]
    end
    if (stationaryCtrl) begin // @[ibex_core.scala 29:25]
      b_reg_2_2 <= b_reg_2_1; // @[ibex_core.scala 33:21]
    end
    if (stationaryCtrl) begin // @[ibex_core.scala 29:25]
      b_reg_2_3 <= b_reg_2_2; // @[ibex_core.scala 33:21]
    end
    if (stationaryCtrl) begin // @[ibex_core.scala 29:25]
      b_reg_3_0 <= b_in_3; // @[ibex_core.scala 31:19]
    end
    if (stationaryCtrl) begin // @[ibex_core.scala 29:25]
      b_reg_3_1 <= b_reg_3_0; // @[ibex_core.scala 33:21]
    end
    if (stationaryCtrl) begin // @[ibex_core.scala 29:25]
      b_reg_3_2 <= b_reg_3_1; // @[ibex_core.scala 33:21]
    end
    if (stationaryCtrl) begin // @[ibex_core.scala 29:25]
      b_reg_3_3 <= b_reg_3_2; // @[ibex_core.scala 33:21]
    end
    c_reg_0_0 <= _GEN_16[15:0];
    c_reg_0_1 <= _GEN_17[15:0];
    c_reg_0_2 <= _GEN_18[15:0];
    c_reg_0_3 <= _GEN_19[15:0];
    c_reg_1_0 <= _GEN_20[15:0];
    c_reg_1_1 <= _GEN_21[15:0];
    c_reg_1_2 <= _GEN_22[15:0];
    c_reg_1_3 <= _GEN_23[15:0];
    c_reg_2_0 <= _GEN_24[15:0];
    c_reg_2_1 <= _GEN_25[15:0];
    c_reg_2_2 <= _GEN_26[15:0];
    c_reg_2_3 <= _GEN_27[15:0];
    c_reg_3_0 <= _GEN_28[15:0];
    c_reg_3_1 <= _GEN_29[15:0];
    c_reg_3_2 <= _GEN_30[15:0];
    c_reg_3_3 <= _GEN_31[15:0];
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  a_reg_0_0 = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  a_reg_0_1 = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  a_reg_0_2 = _RAND_2[15:0];
  _RAND_3 = {1{`RANDOM}};
  a_reg_0_3 = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  a_reg_1_0 = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  a_reg_1_1 = _RAND_5[15:0];
  _RAND_6 = {1{`RANDOM}};
  a_reg_1_2 = _RAND_6[15:0];
  _RAND_7 = {1{`RANDOM}};
  a_reg_1_3 = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  a_reg_2_0 = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  a_reg_2_1 = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  a_reg_2_2 = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  a_reg_2_3 = _RAND_11[15:0];
  _RAND_12 = {1{`RANDOM}};
  a_reg_3_0 = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  a_reg_3_1 = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  a_reg_3_2 = _RAND_14[15:0];
  _RAND_15 = {1{`RANDOM}};
  a_reg_3_3 = _RAND_15[15:0];
  _RAND_16 = {1{`RANDOM}};
  b_reg_0_0 = _RAND_16[15:0];
  _RAND_17 = {1{`RANDOM}};
  b_reg_0_1 = _RAND_17[15:0];
  _RAND_18 = {1{`RANDOM}};
  b_reg_0_2 = _RAND_18[15:0];
  _RAND_19 = {1{`RANDOM}};
  b_reg_0_3 = _RAND_19[15:0];
  _RAND_20 = {1{`RANDOM}};
  b_reg_1_0 = _RAND_20[15:0];
  _RAND_21 = {1{`RANDOM}};
  b_reg_1_1 = _RAND_21[15:0];
  _RAND_22 = {1{`RANDOM}};
  b_reg_1_2 = _RAND_22[15:0];
  _RAND_23 = {1{`RANDOM}};
  b_reg_1_3 = _RAND_23[15:0];
  _RAND_24 = {1{`RANDOM}};
  b_reg_2_0 = _RAND_24[15:0];
  _RAND_25 = {1{`RANDOM}};
  b_reg_2_1 = _RAND_25[15:0];
  _RAND_26 = {1{`RANDOM}};
  b_reg_2_2 = _RAND_26[15:0];
  _RAND_27 = {1{`RANDOM}};
  b_reg_2_3 = _RAND_27[15:0];
  _RAND_28 = {1{`RANDOM}};
  b_reg_3_0 = _RAND_28[15:0];
  _RAND_29 = {1{`RANDOM}};
  b_reg_3_1 = _RAND_29[15:0];
  _RAND_30 = {1{`RANDOM}};
  b_reg_3_2 = _RAND_30[15:0];
  _RAND_31 = {1{`RANDOM}};
  b_reg_3_3 = _RAND_31[15:0];
  _RAND_32 = {1{`RANDOM}};
  c_reg_0_0 = _RAND_32[15:0];
  _RAND_33 = {1{`RANDOM}};
  c_reg_0_1 = _RAND_33[15:0];
  _RAND_34 = {1{`RANDOM}};
  c_reg_0_2 = _RAND_34[15:0];
  _RAND_35 = {1{`RANDOM}};
  c_reg_0_3 = _RAND_35[15:0];
  _RAND_36 = {1{`RANDOM}};
  c_reg_1_0 = _RAND_36[15:0];
  _RAND_37 = {1{`RANDOM}};
  c_reg_1_1 = _RAND_37[15:0];
  _RAND_38 = {1{`RANDOM}};
  c_reg_1_2 = _RAND_38[15:0];
  _RAND_39 = {1{`RANDOM}};
  c_reg_1_3 = _RAND_39[15:0];
  _RAND_40 = {1{`RANDOM}};
  c_reg_2_0 = _RAND_40[15:0];
  _RAND_41 = {1{`RANDOM}};
  c_reg_2_1 = _RAND_41[15:0];
  _RAND_42 = {1{`RANDOM}};
  c_reg_2_2 = _RAND_42[15:0];
  _RAND_43 = {1{`RANDOM}};
  c_reg_2_3 = _RAND_43[15:0];
  _RAND_44 = {1{`RANDOM}};
  c_reg_3_0 = _RAND_44[15:0];
  _RAND_45 = {1{`RANDOM}};
  c_reg_3_1 = _RAND_45[15:0];
  _RAND_46 = {1{`RANDOM}};
  c_reg_3_2 = _RAND_46[15:0];
  _RAND_47 = {1{`RANDOM}};
  c_reg_3_3 = _RAND_47[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
