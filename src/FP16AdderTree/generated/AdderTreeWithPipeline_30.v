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
module ibex_core(
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
