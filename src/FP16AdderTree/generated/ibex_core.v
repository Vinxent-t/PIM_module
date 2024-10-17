module MAC(
  input  [15:0] io_a,
  input  [15:0] io_b,
  output [15:0] io_out
);
  wire [31:0] _io_out_T = io_a * io_b; // @[ibex_core.scala 12:19]
  wire [32:0] _io_out_T_1 = {{1'd0}, _io_out_T}; // @[ibex_core.scala 12:27]
  assign io_out = _io_out_T_1[15:0]; // @[ibex_core.scala 12:10]
endmodule
module ADD(
  input  [15:0] io_a,
  input  [15:0] io_b,
  output [15:0] io_out
);
  assign io_out = io_a + io_b; // @[ibex_core.scala 21:19]
endmodule
module AdderTreeWithPipeline(
  input  [15:0] io_operands_0,
  output [15:0] io_result
);
  assign io_result = io_operands_0; // @[ibex_core.scala 34:15]
endmodule
module AdderTreeWithPipeline_2(
  input         clock,
  input         reset,
  input  [15:0] io_operands_0,
  input  [15:0] io_operands_1,
  output [16:0] io_result
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [15:0] leftTree_io_operands_0; // @[ibex_core.scala 39:26]
  wire [15:0] leftTree_io_result; // @[ibex_core.scala 39:26]
  wire [15:0] rightTree_io_operands_0; // @[ibex_core.scala 40:27]
  wire [15:0] rightTree_io_result; // @[ibex_core.scala 40:27]
  reg [15:0] regLeft; // @[ibex_core.scala 47:26]
  reg [15:0] regRight; // @[ibex_core.scala 48:27]
  wire [15:0] _io_result_T_1 = regLeft + regRight; // @[ibex_core.scala 60:26]
  AdderTreeWithPipeline leftTree ( // @[ibex_core.scala 39:26]
    .io_operands_0(leftTree_io_operands_0),
    .io_result(leftTree_io_result)
  );
  AdderTreeWithPipeline rightTree ( // @[ibex_core.scala 40:27]
    .io_operands_0(rightTree_io_operands_0),
    .io_result(rightTree_io_result)
  );
  assign io_result = {{1'd0}, _io_result_T_1}; // @[ibex_core.scala 60:15]
  assign leftTree_io_operands_0 = io_operands_0; // @[ibex_core.scala 43:26]
  assign rightTree_io_operands_0 = io_operands_1; // @[ibex_core.scala 44:27]
  always @(posedge clock) begin
    if (reset) begin // @[ibex_core.scala 47:26]
      regLeft <= 16'h0; // @[ibex_core.scala 47:26]
    end else begin
      regLeft <= leftTree_io_result; // @[ibex_core.scala 52:15]
    end
    if (reset) begin // @[ibex_core.scala 48:27]
      regRight <= 16'h0; // @[ibex_core.scala 48:27]
    end else begin
      regRight <= rightTree_io_result; // @[ibex_core.scala 53:16]
    end
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
  regLeft = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  regRight = _RAND_1[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AdderTreeWithPipeline_6(
  input         clock,
  input         reset,
  input  [15:0] io_operands_0,
  input  [15:0] io_operands_1,
  input  [15:0] io_operands_2,
  input  [15:0] io_operands_3,
  output [17:0] io_result
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  leftTree_clock; // @[ibex_core.scala 39:26]
  wire  leftTree_reset; // @[ibex_core.scala 39:26]
  wire [15:0] leftTree_io_operands_0; // @[ibex_core.scala 39:26]
  wire [15:0] leftTree_io_operands_1; // @[ibex_core.scala 39:26]
  wire [16:0] leftTree_io_result; // @[ibex_core.scala 39:26]
  wire  rightTree_clock; // @[ibex_core.scala 40:27]
  wire  rightTree_reset; // @[ibex_core.scala 40:27]
  wire [15:0] rightTree_io_operands_0; // @[ibex_core.scala 40:27]
  wire [15:0] rightTree_io_operands_1; // @[ibex_core.scala 40:27]
  wire [16:0] rightTree_io_result; // @[ibex_core.scala 40:27]
  reg [16:0] regLeft; // @[ibex_core.scala 47:26]
  reg [16:0] regRight; // @[ibex_core.scala 48:27]
  wire [16:0] _io_result_T_1 = regLeft + regRight; // @[ibex_core.scala 60:26]
  AdderTreeWithPipeline_2 leftTree ( // @[ibex_core.scala 39:26]
    .clock(leftTree_clock),
    .reset(leftTree_reset),
    .io_operands_0(leftTree_io_operands_0),
    .io_operands_1(leftTree_io_operands_1),
    .io_result(leftTree_io_result)
  );
  AdderTreeWithPipeline_2 rightTree ( // @[ibex_core.scala 40:27]
    .clock(rightTree_clock),
    .reset(rightTree_reset),
    .io_operands_0(rightTree_io_operands_0),
    .io_operands_1(rightTree_io_operands_1),
    .io_result(rightTree_io_result)
  );
  assign io_result = {{1'd0}, _io_result_T_1}; // @[ibex_core.scala 60:15]
  assign leftTree_clock = clock;
  assign leftTree_reset = reset;
  assign leftTree_io_operands_0 = io_operands_0; // @[ibex_core.scala 43:26]
  assign leftTree_io_operands_1 = io_operands_1; // @[ibex_core.scala 43:26]
  assign rightTree_clock = clock;
  assign rightTree_reset = reset;
  assign rightTree_io_operands_0 = io_operands_2; // @[ibex_core.scala 44:27]
  assign rightTree_io_operands_1 = io_operands_3; // @[ibex_core.scala 44:27]
  always @(posedge clock) begin
    if (reset) begin // @[ibex_core.scala 47:26]
      regLeft <= 17'h0; // @[ibex_core.scala 47:26]
    end else begin
      regLeft <= leftTree_io_result; // @[ibex_core.scala 52:15]
    end
    if (reset) begin // @[ibex_core.scala 48:27]
      regRight <= 17'h0; // @[ibex_core.scala 48:27]
    end else begin
      regRight <= rightTree_io_result; // @[ibex_core.scala 53:16]
    end
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
  regLeft = _RAND_0[16:0];
  _RAND_1 = {1{`RANDOM}};
  regRight = _RAND_1[16:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AdderTreeWithPipeline_14(
  input         clock,
  input         reset,
  input  [15:0] io_operands_0,
  input  [15:0] io_operands_1,
  input  [15:0] io_operands_2,
  input  [15:0] io_operands_3,
  input  [15:0] io_operands_4,
  input  [15:0] io_operands_5,
  input  [15:0] io_operands_6,
  input  [15:0] io_operands_7,
  output [18:0] io_result
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  leftTree_clock; // @[ibex_core.scala 39:26]
  wire  leftTree_reset; // @[ibex_core.scala 39:26]
  wire [15:0] leftTree_io_operands_0; // @[ibex_core.scala 39:26]
  wire [15:0] leftTree_io_operands_1; // @[ibex_core.scala 39:26]
  wire [15:0] leftTree_io_operands_2; // @[ibex_core.scala 39:26]
  wire [15:0] leftTree_io_operands_3; // @[ibex_core.scala 39:26]
  wire [17:0] leftTree_io_result; // @[ibex_core.scala 39:26]
  wire  rightTree_clock; // @[ibex_core.scala 40:27]
  wire  rightTree_reset; // @[ibex_core.scala 40:27]
  wire [15:0] rightTree_io_operands_0; // @[ibex_core.scala 40:27]
  wire [15:0] rightTree_io_operands_1; // @[ibex_core.scala 40:27]
  wire [15:0] rightTree_io_operands_2; // @[ibex_core.scala 40:27]
  wire [15:0] rightTree_io_operands_3; // @[ibex_core.scala 40:27]
  wire [17:0] rightTree_io_result; // @[ibex_core.scala 40:27]
  reg [17:0] regLeft; // @[ibex_core.scala 47:26]
  reg [17:0] regRight; // @[ibex_core.scala 48:27]
  wire [17:0] _io_result_T_1 = regLeft + regRight; // @[ibex_core.scala 60:26]
  AdderTreeWithPipeline_6 leftTree ( // @[ibex_core.scala 39:26]
    .clock(leftTree_clock),
    .reset(leftTree_reset),
    .io_operands_0(leftTree_io_operands_0),
    .io_operands_1(leftTree_io_operands_1),
    .io_operands_2(leftTree_io_operands_2),
    .io_operands_3(leftTree_io_operands_3),
    .io_result(leftTree_io_result)
  );
  AdderTreeWithPipeline_6 rightTree ( // @[ibex_core.scala 40:27]
    .clock(rightTree_clock),
    .reset(rightTree_reset),
    .io_operands_0(rightTree_io_operands_0),
    .io_operands_1(rightTree_io_operands_1),
    .io_operands_2(rightTree_io_operands_2),
    .io_operands_3(rightTree_io_operands_3),
    .io_result(rightTree_io_result)
  );
  assign io_result = {{1'd0}, _io_result_T_1}; // @[ibex_core.scala 60:15]
  assign leftTree_clock = clock;
  assign leftTree_reset = reset;
  assign leftTree_io_operands_0 = io_operands_0; // @[ibex_core.scala 43:26]
  assign leftTree_io_operands_1 = io_operands_1; // @[ibex_core.scala 43:26]
  assign leftTree_io_operands_2 = io_operands_2; // @[ibex_core.scala 43:26]
  assign leftTree_io_operands_3 = io_operands_3; // @[ibex_core.scala 43:26]
  assign rightTree_clock = clock;
  assign rightTree_reset = reset;
  assign rightTree_io_operands_0 = io_operands_4; // @[ibex_core.scala 44:27]
  assign rightTree_io_operands_1 = io_operands_5; // @[ibex_core.scala 44:27]
  assign rightTree_io_operands_2 = io_operands_6; // @[ibex_core.scala 44:27]
  assign rightTree_io_operands_3 = io_operands_7; // @[ibex_core.scala 44:27]
  always @(posedge clock) begin
    if (reset) begin // @[ibex_core.scala 47:26]
      regLeft <= 18'h0; // @[ibex_core.scala 47:26]
    end else begin
      regLeft <= leftTree_io_result; // @[ibex_core.scala 52:15]
    end
    if (reset) begin // @[ibex_core.scala 48:27]
      regRight <= 18'h0; // @[ibex_core.scala 48:27]
    end else begin
      regRight <= rightTree_io_result; // @[ibex_core.scala 53:16]
    end
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
  regLeft = _RAND_0[17:0];
  _RAND_1 = {1{`RANDOM}};
  regRight = _RAND_1[17:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AdderTreeWithPipeline_30(
  input         clock,
  input         reset,
  input  [15:0] io_operands_0,
  input  [15:0] io_operands_1,
  input  [15:0] io_operands_2,
  input  [15:0] io_operands_3,
  input  [15:0] io_operands_4,
  input  [15:0] io_operands_5,
  input  [15:0] io_operands_6,
  input  [15:0] io_operands_7,
  input  [15:0] io_operands_8,
  input  [15:0] io_operands_9,
  input  [15:0] io_operands_10,
  input  [15:0] io_operands_11,
  input  [15:0] io_operands_12,
  input  [15:0] io_operands_13,
  input  [15:0] io_operands_14,
  input  [15:0] io_operands_15,
  output [19:0] io_result
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  leftTree_clock; // @[ibex_core.scala 39:26]
  wire  leftTree_reset; // @[ibex_core.scala 39:26]
  wire [15:0] leftTree_io_operands_0; // @[ibex_core.scala 39:26]
  wire [15:0] leftTree_io_operands_1; // @[ibex_core.scala 39:26]
  wire [15:0] leftTree_io_operands_2; // @[ibex_core.scala 39:26]
  wire [15:0] leftTree_io_operands_3; // @[ibex_core.scala 39:26]
  wire [15:0] leftTree_io_operands_4; // @[ibex_core.scala 39:26]
  wire [15:0] leftTree_io_operands_5; // @[ibex_core.scala 39:26]
  wire [15:0] leftTree_io_operands_6; // @[ibex_core.scala 39:26]
  wire [15:0] leftTree_io_operands_7; // @[ibex_core.scala 39:26]
  wire [18:0] leftTree_io_result; // @[ibex_core.scala 39:26]
  wire  rightTree_clock; // @[ibex_core.scala 40:27]
  wire  rightTree_reset; // @[ibex_core.scala 40:27]
  wire [15:0] rightTree_io_operands_0; // @[ibex_core.scala 40:27]
  wire [15:0] rightTree_io_operands_1; // @[ibex_core.scala 40:27]
  wire [15:0] rightTree_io_operands_2; // @[ibex_core.scala 40:27]
  wire [15:0] rightTree_io_operands_3; // @[ibex_core.scala 40:27]
  wire [15:0] rightTree_io_operands_4; // @[ibex_core.scala 40:27]
  wire [15:0] rightTree_io_operands_5; // @[ibex_core.scala 40:27]
  wire [15:0] rightTree_io_operands_6; // @[ibex_core.scala 40:27]
  wire [15:0] rightTree_io_operands_7; // @[ibex_core.scala 40:27]
  wire [18:0] rightTree_io_result; // @[ibex_core.scala 40:27]
  reg [18:0] regLeft; // @[ibex_core.scala 47:26]
  reg [18:0] regRight; // @[ibex_core.scala 48:27]
  wire [18:0] _io_result_T_1 = regLeft + regRight; // @[ibex_core.scala 60:26]
  AdderTreeWithPipeline_14 leftTree ( // @[ibex_core.scala 39:26]
    .clock(leftTree_clock),
    .reset(leftTree_reset),
    .io_operands_0(leftTree_io_operands_0),
    .io_operands_1(leftTree_io_operands_1),
    .io_operands_2(leftTree_io_operands_2),
    .io_operands_3(leftTree_io_operands_3),
    .io_operands_4(leftTree_io_operands_4),
    .io_operands_5(leftTree_io_operands_5),
    .io_operands_6(leftTree_io_operands_6),
    .io_operands_7(leftTree_io_operands_7),
    .io_result(leftTree_io_result)
  );
  AdderTreeWithPipeline_14 rightTree ( // @[ibex_core.scala 40:27]
    .clock(rightTree_clock),
    .reset(rightTree_reset),
    .io_operands_0(rightTree_io_operands_0),
    .io_operands_1(rightTree_io_operands_1),
    .io_operands_2(rightTree_io_operands_2),
    .io_operands_3(rightTree_io_operands_3),
    .io_operands_4(rightTree_io_operands_4),
    .io_operands_5(rightTree_io_operands_5),
    .io_operands_6(rightTree_io_operands_6),
    .io_operands_7(rightTree_io_operands_7),
    .io_result(rightTree_io_result)
  );
  assign io_result = {{1'd0}, _io_result_T_1}; // @[ibex_core.scala 60:15]
  assign leftTree_clock = clock;
  assign leftTree_reset = reset;
  assign leftTree_io_operands_0 = io_operands_0; // @[ibex_core.scala 43:26]
  assign leftTree_io_operands_1 = io_operands_1; // @[ibex_core.scala 43:26]
  assign leftTree_io_operands_2 = io_operands_2; // @[ibex_core.scala 43:26]
  assign leftTree_io_operands_3 = io_operands_3; // @[ibex_core.scala 43:26]
  assign leftTree_io_operands_4 = io_operands_4; // @[ibex_core.scala 43:26]
  assign leftTree_io_operands_5 = io_operands_5; // @[ibex_core.scala 43:26]
  assign leftTree_io_operands_6 = io_operands_6; // @[ibex_core.scala 43:26]
  assign leftTree_io_operands_7 = io_operands_7; // @[ibex_core.scala 43:26]
  assign rightTree_clock = clock;
  assign rightTree_reset = reset;
  assign rightTree_io_operands_0 = io_operands_8; // @[ibex_core.scala 44:27]
  assign rightTree_io_operands_1 = io_operands_9; // @[ibex_core.scala 44:27]
  assign rightTree_io_operands_2 = io_operands_10; // @[ibex_core.scala 44:27]
  assign rightTree_io_operands_3 = io_operands_11; // @[ibex_core.scala 44:27]
  assign rightTree_io_operands_4 = io_operands_12; // @[ibex_core.scala 44:27]
  assign rightTree_io_operands_5 = io_operands_13; // @[ibex_core.scala 44:27]
  assign rightTree_io_operands_6 = io_operands_14; // @[ibex_core.scala 44:27]
  assign rightTree_io_operands_7 = io_operands_15; // @[ibex_core.scala 44:27]
  always @(posedge clock) begin
    if (reset) begin // @[ibex_core.scala 47:26]
      regLeft <= 19'h0; // @[ibex_core.scala 47:26]
    end else begin
      regLeft <= leftTree_io_result; // @[ibex_core.scala 52:15]
    end
    if (reset) begin // @[ibex_core.scala 48:27]
      regRight <= 19'h0; // @[ibex_core.scala 48:27]
    end else begin
      regRight <= rightTree_io_result; // @[ibex_core.scala 53:16]
    end
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
  regLeft = _RAND_0[18:0];
  _RAND_1 = {1{`RANDOM}};
  regRight = _RAND_1[18:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ibex_core(
  input         clock,
  input         reset,
  input  [15:0] io_vecA_0,
  input  [15:0] io_vecA_1,
  input  [15:0] io_vecA_2,
  input  [15:0] io_vecA_3,
  input  [15:0] io_vecA_4,
  input  [15:0] io_vecA_5,
  input  [15:0] io_vecA_6,
  input  [15:0] io_vecA_7,
  input  [15:0] io_vecA_8,
  input  [15:0] io_vecA_9,
  input  [15:0] io_vecA_10,
  input  [15:0] io_vecA_11,
  input  [15:0] io_vecA_12,
  input  [15:0] io_vecA_13,
  input  [15:0] io_vecA_14,
  input  [15:0] io_vecA_15,
  input  [15:0] io_vecB_0,
  input  [15:0] io_vecB_1,
  input  [15:0] io_vecB_2,
  input  [15:0] io_vecB_3,
  input  [15:0] io_vecB_4,
  input  [15:0] io_vecB_5,
  input  [15:0] io_vecB_6,
  input  [15:0] io_vecB_7,
  input  [15:0] io_vecB_8,
  input  [15:0] io_vecB_9,
  input  [15:0] io_vecB_10,
  input  [15:0] io_vecB_11,
  input  [15:0] io_vecB_12,
  input  [15:0] io_vecB_13,
  input  [15:0] io_vecB_14,
  input  [15:0] io_vecB_15,
  input         io_mode,
  output [15:0] io_resultMAC,
  output [15:0] io_resultADD_0,
  output [15:0] io_resultADD_1,
  output [15:0] io_resultADD_2,
  output [15:0] io_resultADD_3,
  output [15:0] io_resultADD_4,
  output [15:0] io_resultADD_5,
  output [15:0] io_resultADD_6,
  output [15:0] io_resultADD_7,
  output [15:0] io_resultADD_8,
  output [15:0] io_resultADD_9,
  output [15:0] io_resultADD_10,
  output [15:0] io_resultADD_11,
  output [15:0] io_resultADD_12,
  output [15:0] io_resultADD_13,
  output [15:0] io_resultADD_14,
  output [15:0] io_resultADD_15
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
`endif // RANDOMIZE_REG_INIT
  wire [15:0] macs_0_io_a; // @[ibex_core.scala 75:33]
  wire [15:0] macs_0_io_b; // @[ibex_core.scala 75:33]
  wire [15:0] macs_0_io_out; // @[ibex_core.scala 75:33]
  wire [15:0] macs_1_io_a; // @[ibex_core.scala 75:33]
  wire [15:0] macs_1_io_b; // @[ibex_core.scala 75:33]
  wire [15:0] macs_1_io_out; // @[ibex_core.scala 75:33]
  wire [15:0] macs_2_io_a; // @[ibex_core.scala 75:33]
  wire [15:0] macs_2_io_b; // @[ibex_core.scala 75:33]
  wire [15:0] macs_2_io_out; // @[ibex_core.scala 75:33]
  wire [15:0] macs_3_io_a; // @[ibex_core.scala 75:33]
  wire [15:0] macs_3_io_b; // @[ibex_core.scala 75:33]
  wire [15:0] macs_3_io_out; // @[ibex_core.scala 75:33]
  wire [15:0] macs_4_io_a; // @[ibex_core.scala 75:33]
  wire [15:0] macs_4_io_b; // @[ibex_core.scala 75:33]
  wire [15:0] macs_4_io_out; // @[ibex_core.scala 75:33]
  wire [15:0] macs_5_io_a; // @[ibex_core.scala 75:33]
  wire [15:0] macs_5_io_b; // @[ibex_core.scala 75:33]
  wire [15:0] macs_5_io_out; // @[ibex_core.scala 75:33]
  wire [15:0] macs_6_io_a; // @[ibex_core.scala 75:33]
  wire [15:0] macs_6_io_b; // @[ibex_core.scala 75:33]
  wire [15:0] macs_6_io_out; // @[ibex_core.scala 75:33]
  wire [15:0] macs_7_io_a; // @[ibex_core.scala 75:33]
  wire [15:0] macs_7_io_b; // @[ibex_core.scala 75:33]
  wire [15:0] macs_7_io_out; // @[ibex_core.scala 75:33]
  wire [15:0] macs_8_io_a; // @[ibex_core.scala 75:33]
  wire [15:0] macs_8_io_b; // @[ibex_core.scala 75:33]
  wire [15:0] macs_8_io_out; // @[ibex_core.scala 75:33]
  wire [15:0] macs_9_io_a; // @[ibex_core.scala 75:33]
  wire [15:0] macs_9_io_b; // @[ibex_core.scala 75:33]
  wire [15:0] macs_9_io_out; // @[ibex_core.scala 75:33]
  wire [15:0] macs_10_io_a; // @[ibex_core.scala 75:33]
  wire [15:0] macs_10_io_b; // @[ibex_core.scala 75:33]
  wire [15:0] macs_10_io_out; // @[ibex_core.scala 75:33]
  wire [15:0] macs_11_io_a; // @[ibex_core.scala 75:33]
  wire [15:0] macs_11_io_b; // @[ibex_core.scala 75:33]
  wire [15:0] macs_11_io_out; // @[ibex_core.scala 75:33]
  wire [15:0] macs_12_io_a; // @[ibex_core.scala 75:33]
  wire [15:0] macs_12_io_b; // @[ibex_core.scala 75:33]
  wire [15:0] macs_12_io_out; // @[ibex_core.scala 75:33]
  wire [15:0] macs_13_io_a; // @[ibex_core.scala 75:33]
  wire [15:0] macs_13_io_b; // @[ibex_core.scala 75:33]
  wire [15:0] macs_13_io_out; // @[ibex_core.scala 75:33]
  wire [15:0] macs_14_io_a; // @[ibex_core.scala 75:33]
  wire [15:0] macs_14_io_b; // @[ibex_core.scala 75:33]
  wire [15:0] macs_14_io_out; // @[ibex_core.scala 75:33]
  wire [15:0] macs_15_io_a; // @[ibex_core.scala 75:33]
  wire [15:0] macs_15_io_b; // @[ibex_core.scala 75:33]
  wire [15:0] macs_15_io_out; // @[ibex_core.scala 75:33]
  wire [15:0] adds_0_io_a; // @[ibex_core.scala 76:33]
  wire [15:0] adds_0_io_b; // @[ibex_core.scala 76:33]
  wire [15:0] adds_0_io_out; // @[ibex_core.scala 76:33]
  wire [15:0] adds_1_io_a; // @[ibex_core.scala 76:33]
  wire [15:0] adds_1_io_b; // @[ibex_core.scala 76:33]
  wire [15:0] adds_1_io_out; // @[ibex_core.scala 76:33]
  wire [15:0] adds_2_io_a; // @[ibex_core.scala 76:33]
  wire [15:0] adds_2_io_b; // @[ibex_core.scala 76:33]
  wire [15:0] adds_2_io_out; // @[ibex_core.scala 76:33]
  wire [15:0] adds_3_io_a; // @[ibex_core.scala 76:33]
  wire [15:0] adds_3_io_b; // @[ibex_core.scala 76:33]
  wire [15:0] adds_3_io_out; // @[ibex_core.scala 76:33]
  wire [15:0] adds_4_io_a; // @[ibex_core.scala 76:33]
  wire [15:0] adds_4_io_b; // @[ibex_core.scala 76:33]
  wire [15:0] adds_4_io_out; // @[ibex_core.scala 76:33]
  wire [15:0] adds_5_io_a; // @[ibex_core.scala 76:33]
  wire [15:0] adds_5_io_b; // @[ibex_core.scala 76:33]
  wire [15:0] adds_5_io_out; // @[ibex_core.scala 76:33]
  wire [15:0] adds_6_io_a; // @[ibex_core.scala 76:33]
  wire [15:0] adds_6_io_b; // @[ibex_core.scala 76:33]
  wire [15:0] adds_6_io_out; // @[ibex_core.scala 76:33]
  wire [15:0] adds_7_io_a; // @[ibex_core.scala 76:33]
  wire [15:0] adds_7_io_b; // @[ibex_core.scala 76:33]
  wire [15:0] adds_7_io_out; // @[ibex_core.scala 76:33]
  wire [15:0] adds_8_io_a; // @[ibex_core.scala 76:33]
  wire [15:0] adds_8_io_b; // @[ibex_core.scala 76:33]
  wire [15:0] adds_8_io_out; // @[ibex_core.scala 76:33]
  wire [15:0] adds_9_io_a; // @[ibex_core.scala 76:33]
  wire [15:0] adds_9_io_b; // @[ibex_core.scala 76:33]
  wire [15:0] adds_9_io_out; // @[ibex_core.scala 76:33]
  wire [15:0] adds_10_io_a; // @[ibex_core.scala 76:33]
  wire [15:0] adds_10_io_b; // @[ibex_core.scala 76:33]
  wire [15:0] adds_10_io_out; // @[ibex_core.scala 76:33]
  wire [15:0] adds_11_io_a; // @[ibex_core.scala 76:33]
  wire [15:0] adds_11_io_b; // @[ibex_core.scala 76:33]
  wire [15:0] adds_11_io_out; // @[ibex_core.scala 76:33]
  wire [15:0] adds_12_io_a; // @[ibex_core.scala 76:33]
  wire [15:0] adds_12_io_b; // @[ibex_core.scala 76:33]
  wire [15:0] adds_12_io_out; // @[ibex_core.scala 76:33]
  wire [15:0] adds_13_io_a; // @[ibex_core.scala 76:33]
  wire [15:0] adds_13_io_b; // @[ibex_core.scala 76:33]
  wire [15:0] adds_13_io_out; // @[ibex_core.scala 76:33]
  wire [15:0] adds_14_io_a; // @[ibex_core.scala 76:33]
  wire [15:0] adds_14_io_b; // @[ibex_core.scala 76:33]
  wire [15:0] adds_14_io_out; // @[ibex_core.scala 76:33]
  wire [15:0] adds_15_io_a; // @[ibex_core.scala 76:33]
  wire [15:0] adds_15_io_b; // @[ibex_core.scala 76:33]
  wire [15:0] adds_15_io_out; // @[ibex_core.scala 76:33]
  wire  adderTree_clock; // @[ibex_core.scala 105:25]
  wire  adderTree_reset; // @[ibex_core.scala 105:25]
  wire [15:0] adderTree_io_operands_0; // @[ibex_core.scala 105:25]
  wire [15:0] adderTree_io_operands_1; // @[ibex_core.scala 105:25]
  wire [15:0] adderTree_io_operands_2; // @[ibex_core.scala 105:25]
  wire [15:0] adderTree_io_operands_3; // @[ibex_core.scala 105:25]
  wire [15:0] adderTree_io_operands_4; // @[ibex_core.scala 105:25]
  wire [15:0] adderTree_io_operands_5; // @[ibex_core.scala 105:25]
  wire [15:0] adderTree_io_operands_6; // @[ibex_core.scala 105:25]
  wire [15:0] adderTree_io_operands_7; // @[ibex_core.scala 105:25]
  wire [15:0] adderTree_io_operands_8; // @[ibex_core.scala 105:25]
  wire [15:0] adderTree_io_operands_9; // @[ibex_core.scala 105:25]
  wire [15:0] adderTree_io_operands_10; // @[ibex_core.scala 105:25]
  wire [15:0] adderTree_io_operands_11; // @[ibex_core.scala 105:25]
  wire [15:0] adderTree_io_operands_12; // @[ibex_core.scala 105:25]
  wire [15:0] adderTree_io_operands_13; // @[ibex_core.scala 105:25]
  wire [15:0] adderTree_io_operands_14; // @[ibex_core.scala 105:25]
  wire [15:0] adderTree_io_operands_15; // @[ibex_core.scala 105:25]
  wire [19:0] adderTree_io_result; // @[ibex_core.scala 105:25]
  reg [15:0] macResults_0; // @[ibex_core.scala 80:23]
  reg [15:0] macResults_1; // @[ibex_core.scala 80:23]
  reg [15:0] macResults_2; // @[ibex_core.scala 80:23]
  reg [15:0] macResults_3; // @[ibex_core.scala 80:23]
  reg [15:0] macResults_4; // @[ibex_core.scala 80:23]
  reg [15:0] macResults_5; // @[ibex_core.scala 80:23]
  reg [15:0] macResults_6; // @[ibex_core.scala 80:23]
  reg [15:0] macResults_7; // @[ibex_core.scala 80:23]
  reg [15:0] macResults_8; // @[ibex_core.scala 80:23]
  reg [15:0] macResults_9; // @[ibex_core.scala 80:23]
  reg [15:0] macResults_10; // @[ibex_core.scala 80:23]
  reg [15:0] macResults_11; // @[ibex_core.scala 80:23]
  reg [15:0] macResults_12; // @[ibex_core.scala 80:23]
  reg [15:0] macResults_13; // @[ibex_core.scala 80:23]
  reg [15:0] macResults_14; // @[ibex_core.scala 80:23]
  reg [15:0] macResults_15; // @[ibex_core.scala 80:23]
  reg [15:0] addResults_0; // @[ibex_core.scala 81:23]
  reg [15:0] addResults_1; // @[ibex_core.scala 81:23]
  reg [15:0] addResults_2; // @[ibex_core.scala 81:23]
  reg [15:0] addResults_3; // @[ibex_core.scala 81:23]
  reg [15:0] addResults_4; // @[ibex_core.scala 81:23]
  reg [15:0] addResults_5; // @[ibex_core.scala 81:23]
  reg [15:0] addResults_6; // @[ibex_core.scala 81:23]
  reg [15:0] addResults_7; // @[ibex_core.scala 81:23]
  reg [15:0] addResults_8; // @[ibex_core.scala 81:23]
  reg [15:0] addResults_9; // @[ibex_core.scala 81:23]
  reg [15:0] addResults_10; // @[ibex_core.scala 81:23]
  reg [15:0] addResults_11; // @[ibex_core.scala 81:23]
  reg [15:0] addResults_12; // @[ibex_core.scala 81:23]
  reg [15:0] addResults_13; // @[ibex_core.scala 81:23]
  reg [15:0] addResults_14; // @[ibex_core.scala 81:23]
  reg [15:0] addResults_15; // @[ibex_core.scala 81:23]
  MAC macs_0 ( // @[ibex_core.scala 75:33]
    .io_a(macs_0_io_a),
    .io_b(macs_0_io_b),
    .io_out(macs_0_io_out)
  );
  MAC macs_1 ( // @[ibex_core.scala 75:33]
    .io_a(macs_1_io_a),
    .io_b(macs_1_io_b),
    .io_out(macs_1_io_out)
  );
  MAC macs_2 ( // @[ibex_core.scala 75:33]
    .io_a(macs_2_io_a),
    .io_b(macs_2_io_b),
    .io_out(macs_2_io_out)
  );
  MAC macs_3 ( // @[ibex_core.scala 75:33]
    .io_a(macs_3_io_a),
    .io_b(macs_3_io_b),
    .io_out(macs_3_io_out)
  );
  MAC macs_4 ( // @[ibex_core.scala 75:33]
    .io_a(macs_4_io_a),
    .io_b(macs_4_io_b),
    .io_out(macs_4_io_out)
  );
  MAC macs_5 ( // @[ibex_core.scala 75:33]
    .io_a(macs_5_io_a),
    .io_b(macs_5_io_b),
    .io_out(macs_5_io_out)
  );
  MAC macs_6 ( // @[ibex_core.scala 75:33]
    .io_a(macs_6_io_a),
    .io_b(macs_6_io_b),
    .io_out(macs_6_io_out)
  );
  MAC macs_7 ( // @[ibex_core.scala 75:33]
    .io_a(macs_7_io_a),
    .io_b(macs_7_io_b),
    .io_out(macs_7_io_out)
  );
  MAC macs_8 ( // @[ibex_core.scala 75:33]
    .io_a(macs_8_io_a),
    .io_b(macs_8_io_b),
    .io_out(macs_8_io_out)
  );
  MAC macs_9 ( // @[ibex_core.scala 75:33]
    .io_a(macs_9_io_a),
    .io_b(macs_9_io_b),
    .io_out(macs_9_io_out)
  );
  MAC macs_10 ( // @[ibex_core.scala 75:33]
    .io_a(macs_10_io_a),
    .io_b(macs_10_io_b),
    .io_out(macs_10_io_out)
  );
  MAC macs_11 ( // @[ibex_core.scala 75:33]
    .io_a(macs_11_io_a),
    .io_b(macs_11_io_b),
    .io_out(macs_11_io_out)
  );
  MAC macs_12 ( // @[ibex_core.scala 75:33]
    .io_a(macs_12_io_a),
    .io_b(macs_12_io_b),
    .io_out(macs_12_io_out)
  );
  MAC macs_13 ( // @[ibex_core.scala 75:33]
    .io_a(macs_13_io_a),
    .io_b(macs_13_io_b),
    .io_out(macs_13_io_out)
  );
  MAC macs_14 ( // @[ibex_core.scala 75:33]
    .io_a(macs_14_io_a),
    .io_b(macs_14_io_b),
    .io_out(macs_14_io_out)
  );
  MAC macs_15 ( // @[ibex_core.scala 75:33]
    .io_a(macs_15_io_a),
    .io_b(macs_15_io_b),
    .io_out(macs_15_io_out)
  );
  ADD adds_0 ( // @[ibex_core.scala 76:33]
    .io_a(adds_0_io_a),
    .io_b(adds_0_io_b),
    .io_out(adds_0_io_out)
  );
  ADD adds_1 ( // @[ibex_core.scala 76:33]
    .io_a(adds_1_io_a),
    .io_b(adds_1_io_b),
    .io_out(adds_1_io_out)
  );
  ADD adds_2 ( // @[ibex_core.scala 76:33]
    .io_a(adds_2_io_a),
    .io_b(adds_2_io_b),
    .io_out(adds_2_io_out)
  );
  ADD adds_3 ( // @[ibex_core.scala 76:33]
    .io_a(adds_3_io_a),
    .io_b(adds_3_io_b),
    .io_out(adds_3_io_out)
  );
  ADD adds_4 ( // @[ibex_core.scala 76:33]
    .io_a(adds_4_io_a),
    .io_b(adds_4_io_b),
    .io_out(adds_4_io_out)
  );
  ADD adds_5 ( // @[ibex_core.scala 76:33]
    .io_a(adds_5_io_a),
    .io_b(adds_5_io_b),
    .io_out(adds_5_io_out)
  );
  ADD adds_6 ( // @[ibex_core.scala 76:33]
    .io_a(adds_6_io_a),
    .io_b(adds_6_io_b),
    .io_out(adds_6_io_out)
  );
  ADD adds_7 ( // @[ibex_core.scala 76:33]
    .io_a(adds_7_io_a),
    .io_b(adds_7_io_b),
    .io_out(adds_7_io_out)
  );
  ADD adds_8 ( // @[ibex_core.scala 76:33]
    .io_a(adds_8_io_a),
    .io_b(adds_8_io_b),
    .io_out(adds_8_io_out)
  );
  ADD adds_9 ( // @[ibex_core.scala 76:33]
    .io_a(adds_9_io_a),
    .io_b(adds_9_io_b),
    .io_out(adds_9_io_out)
  );
  ADD adds_10 ( // @[ibex_core.scala 76:33]
    .io_a(adds_10_io_a),
    .io_b(adds_10_io_b),
    .io_out(adds_10_io_out)
  );
  ADD adds_11 ( // @[ibex_core.scala 76:33]
    .io_a(adds_11_io_a),
    .io_b(adds_11_io_b),
    .io_out(adds_11_io_out)
  );
  ADD adds_12 ( // @[ibex_core.scala 76:33]
    .io_a(adds_12_io_a),
    .io_b(adds_12_io_b),
    .io_out(adds_12_io_out)
  );
  ADD adds_13 ( // @[ibex_core.scala 76:33]
    .io_a(adds_13_io_a),
    .io_b(adds_13_io_b),
    .io_out(adds_13_io_out)
  );
  ADD adds_14 ( // @[ibex_core.scala 76:33]
    .io_a(adds_14_io_a),
    .io_b(adds_14_io_b),
    .io_out(adds_14_io_out)
  );
  ADD adds_15 ( // @[ibex_core.scala 76:33]
    .io_a(adds_15_io_a),
    .io_b(adds_15_io_b),
    .io_out(adds_15_io_out)
  );
  AdderTreeWithPipeline_30 adderTree ( // @[ibex_core.scala 105:25]
    .clock(adderTree_clock),
    .reset(adderTree_reset),
    .io_operands_0(adderTree_io_operands_0),
    .io_operands_1(adderTree_io_operands_1),
    .io_operands_2(adderTree_io_operands_2),
    .io_operands_3(adderTree_io_operands_3),
    .io_operands_4(adderTree_io_operands_4),
    .io_operands_5(adderTree_io_operands_5),
    .io_operands_6(adderTree_io_operands_6),
    .io_operands_7(adderTree_io_operands_7),
    .io_operands_8(adderTree_io_operands_8),
    .io_operands_9(adderTree_io_operands_9),
    .io_operands_10(adderTree_io_operands_10),
    .io_operands_11(adderTree_io_operands_11),
    .io_operands_12(adderTree_io_operands_12),
    .io_operands_13(adderTree_io_operands_13),
    .io_operands_14(adderTree_io_operands_14),
    .io_operands_15(adderTree_io_operands_15),
    .io_result(adderTree_io_result)
  );
  assign io_resultMAC = adderTree_io_result[15:0]; // @[ibex_core.scala 111:16]
  assign io_resultADD_0 = addResults_0; // @[ibex_core.scala 112:16]
  assign io_resultADD_1 = addResults_1; // @[ibex_core.scala 112:16]
  assign io_resultADD_2 = addResults_2; // @[ibex_core.scala 112:16]
  assign io_resultADD_3 = addResults_3; // @[ibex_core.scala 112:16]
  assign io_resultADD_4 = addResults_4; // @[ibex_core.scala 112:16]
  assign io_resultADD_5 = addResults_5; // @[ibex_core.scala 112:16]
  assign io_resultADD_6 = addResults_6; // @[ibex_core.scala 112:16]
  assign io_resultADD_7 = addResults_7; // @[ibex_core.scala 112:16]
  assign io_resultADD_8 = addResults_8; // @[ibex_core.scala 112:16]
  assign io_resultADD_9 = addResults_9; // @[ibex_core.scala 112:16]
  assign io_resultADD_10 = addResults_10; // @[ibex_core.scala 112:16]
  assign io_resultADD_11 = addResults_11; // @[ibex_core.scala 112:16]
  assign io_resultADD_12 = addResults_12; // @[ibex_core.scala 112:16]
  assign io_resultADD_13 = addResults_13; // @[ibex_core.scala 112:16]
  assign io_resultADD_14 = addResults_14; // @[ibex_core.scala 112:16]
  assign io_resultADD_15 = addResults_15; // @[ibex_core.scala 112:16]
  assign macs_0_io_a = io_vecA_0; // @[ibex_core.scala 84:18]
  assign macs_0_io_b = io_vecB_0; // @[ibex_core.scala 85:18]
  assign macs_1_io_a = io_vecA_1; // @[ibex_core.scala 84:18]
  assign macs_1_io_b = io_vecB_1; // @[ibex_core.scala 85:18]
  assign macs_2_io_a = io_vecA_2; // @[ibex_core.scala 84:18]
  assign macs_2_io_b = io_vecB_2; // @[ibex_core.scala 85:18]
  assign macs_3_io_a = io_vecA_3; // @[ibex_core.scala 84:18]
  assign macs_3_io_b = io_vecB_3; // @[ibex_core.scala 85:18]
  assign macs_4_io_a = io_vecA_4; // @[ibex_core.scala 84:18]
  assign macs_4_io_b = io_vecB_4; // @[ibex_core.scala 85:18]
  assign macs_5_io_a = io_vecA_5; // @[ibex_core.scala 84:18]
  assign macs_5_io_b = io_vecB_5; // @[ibex_core.scala 85:18]
  assign macs_6_io_a = io_vecA_6; // @[ibex_core.scala 84:18]
  assign macs_6_io_b = io_vecB_6; // @[ibex_core.scala 85:18]
  assign macs_7_io_a = io_vecA_7; // @[ibex_core.scala 84:18]
  assign macs_7_io_b = io_vecB_7; // @[ibex_core.scala 85:18]
  assign macs_8_io_a = io_vecA_8; // @[ibex_core.scala 84:18]
  assign macs_8_io_b = io_vecB_8; // @[ibex_core.scala 85:18]
  assign macs_9_io_a = io_vecA_9; // @[ibex_core.scala 84:18]
  assign macs_9_io_b = io_vecB_9; // @[ibex_core.scala 85:18]
  assign macs_10_io_a = io_vecA_10; // @[ibex_core.scala 84:18]
  assign macs_10_io_b = io_vecB_10; // @[ibex_core.scala 85:18]
  assign macs_11_io_a = io_vecA_11; // @[ibex_core.scala 84:18]
  assign macs_11_io_b = io_vecB_11; // @[ibex_core.scala 85:18]
  assign macs_12_io_a = io_vecA_12; // @[ibex_core.scala 84:18]
  assign macs_12_io_b = io_vecB_12; // @[ibex_core.scala 85:18]
  assign macs_13_io_a = io_vecA_13; // @[ibex_core.scala 84:18]
  assign macs_13_io_b = io_vecB_13; // @[ibex_core.scala 85:18]
  assign macs_14_io_a = io_vecA_14; // @[ibex_core.scala 84:18]
  assign macs_14_io_b = io_vecB_14; // @[ibex_core.scala 85:18]
  assign macs_15_io_a = io_vecA_15; // @[ibex_core.scala 84:18]
  assign macs_15_io_b = io_vecB_15; // @[ibex_core.scala 85:18]
  assign adds_0_io_a = io_vecA_0; // @[ibex_core.scala 87:18]
  assign adds_0_io_b = io_vecB_0; // @[ibex_core.scala 88:18]
  assign adds_1_io_a = io_vecA_1; // @[ibex_core.scala 87:18]
  assign adds_1_io_b = io_vecB_1; // @[ibex_core.scala 88:18]
  assign adds_2_io_a = io_vecA_2; // @[ibex_core.scala 87:18]
  assign adds_2_io_b = io_vecB_2; // @[ibex_core.scala 88:18]
  assign adds_3_io_a = io_vecA_3; // @[ibex_core.scala 87:18]
  assign adds_3_io_b = io_vecB_3; // @[ibex_core.scala 88:18]
  assign adds_4_io_a = io_vecA_4; // @[ibex_core.scala 87:18]
  assign adds_4_io_b = io_vecB_4; // @[ibex_core.scala 88:18]
  assign adds_5_io_a = io_vecA_5; // @[ibex_core.scala 87:18]
  assign adds_5_io_b = io_vecB_5; // @[ibex_core.scala 88:18]
  assign adds_6_io_a = io_vecA_6; // @[ibex_core.scala 87:18]
  assign adds_6_io_b = io_vecB_6; // @[ibex_core.scala 88:18]
  assign adds_7_io_a = io_vecA_7; // @[ibex_core.scala 87:18]
  assign adds_7_io_b = io_vecB_7; // @[ibex_core.scala 88:18]
  assign adds_8_io_a = io_vecA_8; // @[ibex_core.scala 87:18]
  assign adds_8_io_b = io_vecB_8; // @[ibex_core.scala 88:18]
  assign adds_9_io_a = io_vecA_9; // @[ibex_core.scala 87:18]
  assign adds_9_io_b = io_vecB_9; // @[ibex_core.scala 88:18]
  assign adds_10_io_a = io_vecA_10; // @[ibex_core.scala 87:18]
  assign adds_10_io_b = io_vecB_10; // @[ibex_core.scala 88:18]
  assign adds_11_io_a = io_vecA_11; // @[ibex_core.scala 87:18]
  assign adds_11_io_b = io_vecB_11; // @[ibex_core.scala 88:18]
  assign adds_12_io_a = io_vecA_12; // @[ibex_core.scala 87:18]
  assign adds_12_io_b = io_vecB_12; // @[ibex_core.scala 88:18]
  assign adds_13_io_a = io_vecA_13; // @[ibex_core.scala 87:18]
  assign adds_13_io_b = io_vecB_13; // @[ibex_core.scala 88:18]
  assign adds_14_io_a = io_vecA_14; // @[ibex_core.scala 87:18]
  assign adds_14_io_b = io_vecB_14; // @[ibex_core.scala 88:18]
  assign adds_15_io_a = io_vecA_15; // @[ibex_core.scala 87:18]
  assign adds_15_io_b = io_vecB_15; // @[ibex_core.scala 88:18]
  assign adderTree_clock = clock;
  assign adderTree_reset = reset;
  assign adderTree_io_operands_0 = macResults_0; // @[ibex_core.scala 108:25]
  assign adderTree_io_operands_1 = macResults_1; // @[ibex_core.scala 108:25]
  assign adderTree_io_operands_2 = macResults_2; // @[ibex_core.scala 108:25]
  assign adderTree_io_operands_3 = macResults_3; // @[ibex_core.scala 108:25]
  assign adderTree_io_operands_4 = macResults_4; // @[ibex_core.scala 108:25]
  assign adderTree_io_operands_5 = macResults_5; // @[ibex_core.scala 108:25]
  assign adderTree_io_operands_6 = macResults_6; // @[ibex_core.scala 108:25]
  assign adderTree_io_operands_7 = macResults_7; // @[ibex_core.scala 108:25]
  assign adderTree_io_operands_8 = macResults_8; // @[ibex_core.scala 108:25]
  assign adderTree_io_operands_9 = macResults_9; // @[ibex_core.scala 108:25]
  assign adderTree_io_operands_10 = macResults_10; // @[ibex_core.scala 108:25]
  assign adderTree_io_operands_11 = macResults_11; // @[ibex_core.scala 108:25]
  assign adderTree_io_operands_12 = macResults_12; // @[ibex_core.scala 108:25]
  assign adderTree_io_operands_13 = macResults_13; // @[ibex_core.scala 108:25]
  assign adderTree_io_operands_14 = macResults_14; // @[ibex_core.scala 108:25]
  assign adderTree_io_operands_15 = macResults_15; // @[ibex_core.scala 108:25]
  always @(posedge clock) begin
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      macResults_0 <= macs_0_io_out; // @[ibex_core.scala 93:21]
    end else begin
      macResults_0 <= 16'h0; // @[ibex_core.scala 99:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      macResults_1 <= macs_1_io_out; // @[ibex_core.scala 93:21]
    end else begin
      macResults_1 <= 16'h0; // @[ibex_core.scala 99:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      macResults_2 <= macs_2_io_out; // @[ibex_core.scala 93:21]
    end else begin
      macResults_2 <= 16'h0; // @[ibex_core.scala 99:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      macResults_3 <= macs_3_io_out; // @[ibex_core.scala 93:21]
    end else begin
      macResults_3 <= 16'h0; // @[ibex_core.scala 99:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      macResults_4 <= macs_4_io_out; // @[ibex_core.scala 93:21]
    end else begin
      macResults_4 <= 16'h0; // @[ibex_core.scala 99:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      macResults_5 <= macs_5_io_out; // @[ibex_core.scala 93:21]
    end else begin
      macResults_5 <= 16'h0; // @[ibex_core.scala 99:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      macResults_6 <= macs_6_io_out; // @[ibex_core.scala 93:21]
    end else begin
      macResults_6 <= 16'h0; // @[ibex_core.scala 99:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      macResults_7 <= macs_7_io_out; // @[ibex_core.scala 93:21]
    end else begin
      macResults_7 <= 16'h0; // @[ibex_core.scala 99:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      macResults_8 <= macs_8_io_out; // @[ibex_core.scala 93:21]
    end else begin
      macResults_8 <= 16'h0; // @[ibex_core.scala 99:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      macResults_9 <= macs_9_io_out; // @[ibex_core.scala 93:21]
    end else begin
      macResults_9 <= 16'h0; // @[ibex_core.scala 99:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      macResults_10 <= macs_10_io_out; // @[ibex_core.scala 93:21]
    end else begin
      macResults_10 <= 16'h0; // @[ibex_core.scala 99:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      macResults_11 <= macs_11_io_out; // @[ibex_core.scala 93:21]
    end else begin
      macResults_11 <= 16'h0; // @[ibex_core.scala 99:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      macResults_12 <= macs_12_io_out; // @[ibex_core.scala 93:21]
    end else begin
      macResults_12 <= 16'h0; // @[ibex_core.scala 99:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      macResults_13 <= macs_13_io_out; // @[ibex_core.scala 93:21]
    end else begin
      macResults_13 <= 16'h0; // @[ibex_core.scala 99:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      macResults_14 <= macs_14_io_out; // @[ibex_core.scala 93:21]
    end else begin
      macResults_14 <= 16'h0; // @[ibex_core.scala 99:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      macResults_15 <= macs_15_io_out; // @[ibex_core.scala 93:21]
    end else begin
      macResults_15 <= 16'h0; // @[ibex_core.scala 99:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      addResults_0 <= 16'h0; // @[ibex_core.scala 94:21]
    end else begin
      addResults_0 <= adds_0_io_out; // @[ibex_core.scala 100:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      addResults_1 <= 16'h0; // @[ibex_core.scala 94:21]
    end else begin
      addResults_1 <= adds_1_io_out; // @[ibex_core.scala 100:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      addResults_2 <= 16'h0; // @[ibex_core.scala 94:21]
    end else begin
      addResults_2 <= adds_2_io_out; // @[ibex_core.scala 100:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      addResults_3 <= 16'h0; // @[ibex_core.scala 94:21]
    end else begin
      addResults_3 <= adds_3_io_out; // @[ibex_core.scala 100:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      addResults_4 <= 16'h0; // @[ibex_core.scala 94:21]
    end else begin
      addResults_4 <= adds_4_io_out; // @[ibex_core.scala 100:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      addResults_5 <= 16'h0; // @[ibex_core.scala 94:21]
    end else begin
      addResults_5 <= adds_5_io_out; // @[ibex_core.scala 100:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      addResults_6 <= 16'h0; // @[ibex_core.scala 94:21]
    end else begin
      addResults_6 <= adds_6_io_out; // @[ibex_core.scala 100:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      addResults_7 <= 16'h0; // @[ibex_core.scala 94:21]
    end else begin
      addResults_7 <= adds_7_io_out; // @[ibex_core.scala 100:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      addResults_8 <= 16'h0; // @[ibex_core.scala 94:21]
    end else begin
      addResults_8 <= adds_8_io_out; // @[ibex_core.scala 100:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      addResults_9 <= 16'h0; // @[ibex_core.scala 94:21]
    end else begin
      addResults_9 <= adds_9_io_out; // @[ibex_core.scala 100:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      addResults_10 <= 16'h0; // @[ibex_core.scala 94:21]
    end else begin
      addResults_10 <= adds_10_io_out; // @[ibex_core.scala 100:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      addResults_11 <= 16'h0; // @[ibex_core.scala 94:21]
    end else begin
      addResults_11 <= adds_11_io_out; // @[ibex_core.scala 100:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      addResults_12 <= 16'h0; // @[ibex_core.scala 94:21]
    end else begin
      addResults_12 <= adds_12_io_out; // @[ibex_core.scala 100:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      addResults_13 <= 16'h0; // @[ibex_core.scala 94:21]
    end else begin
      addResults_13 <= adds_13_io_out; // @[ibex_core.scala 100:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      addResults_14 <= 16'h0; // @[ibex_core.scala 94:21]
    end else begin
      addResults_14 <= adds_14_io_out; // @[ibex_core.scala 100:21]
    end
    if (~io_mode) begin // @[ibex_core.scala 91:24]
      addResults_15 <= 16'h0; // @[ibex_core.scala 94:21]
    end else begin
      addResults_15 <= adds_15_io_out; // @[ibex_core.scala 100:21]
    end
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
  macResults_0 = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  macResults_1 = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  macResults_2 = _RAND_2[15:0];
  _RAND_3 = {1{`RANDOM}};
  macResults_3 = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  macResults_4 = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  macResults_5 = _RAND_5[15:0];
  _RAND_6 = {1{`RANDOM}};
  macResults_6 = _RAND_6[15:0];
  _RAND_7 = {1{`RANDOM}};
  macResults_7 = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  macResults_8 = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  macResults_9 = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  macResults_10 = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  macResults_11 = _RAND_11[15:0];
  _RAND_12 = {1{`RANDOM}};
  macResults_12 = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  macResults_13 = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  macResults_14 = _RAND_14[15:0];
  _RAND_15 = {1{`RANDOM}};
  macResults_15 = _RAND_15[15:0];
  _RAND_16 = {1{`RANDOM}};
  addResults_0 = _RAND_16[15:0];
  _RAND_17 = {1{`RANDOM}};
  addResults_1 = _RAND_17[15:0];
  _RAND_18 = {1{`RANDOM}};
  addResults_2 = _RAND_18[15:0];
  _RAND_19 = {1{`RANDOM}};
  addResults_3 = _RAND_19[15:0];
  _RAND_20 = {1{`RANDOM}};
  addResults_4 = _RAND_20[15:0];
  _RAND_21 = {1{`RANDOM}};
  addResults_5 = _RAND_21[15:0];
  _RAND_22 = {1{`RANDOM}};
  addResults_6 = _RAND_22[15:0];
  _RAND_23 = {1{`RANDOM}};
  addResults_7 = _RAND_23[15:0];
  _RAND_24 = {1{`RANDOM}};
  addResults_8 = _RAND_24[15:0];
  _RAND_25 = {1{`RANDOM}};
  addResults_9 = _RAND_25[15:0];
  _RAND_26 = {1{`RANDOM}};
  addResults_10 = _RAND_26[15:0];
  _RAND_27 = {1{`RANDOM}};
  addResults_11 = _RAND_27[15:0];
  _RAND_28 = {1{`RANDOM}};
  addResults_12 = _RAND_28[15:0];
  _RAND_29 = {1{`RANDOM}};
  addResults_13 = _RAND_29[15:0];
  _RAND_30 = {1{`RANDOM}};
  addResults_14 = _RAND_30[15:0];
  _RAND_31 = {1{`RANDOM}};
  addResults_15 = _RAND_31[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
