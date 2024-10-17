module MAC(
  input         clock,
  input         reset,
  input  [15:0] io_a,
  input  [15:0] io_b,
  input  [15:0] io_c,
  output [15:0] io_out
);
  wire [31:0] _io_out_T = io_a * io_b; // @[ibex_core.scala 12:19]
  wire [31:0] _GEN_0 = {{16'd0}, io_c}; // @[ibex_core.scala 12:27]
  wire [31:0] _io_out_T_2 = _io_out_T + _GEN_0; // @[ibex_core.scala 12:27]
  assign io_out = _io_out_T_2[15:0]; // @[ibex_core.scala 12:10]
endmodule
