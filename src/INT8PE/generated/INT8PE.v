module INT8MAC(
  input  [7:0] io_a,
  input  [7:0] io_b,
  input  [7:0] io_c,
  output [7:0] io_out
);
  wire [15:0] _io_out_T = io_a * io_b; // @[PE_INT8.scala 11:19]
  wire [15:0] _GEN_0 = {{8'd0}, io_c}; // @[PE_INT8.scala 11:27]
  wire [15:0] _io_out_T_2 = _io_out_T + _GEN_0; // @[PE_INT8.scala 11:27]
  assign io_out = _io_out_T_2[7:0]; // @[PE_INT8.scala 11:10]
endmodule
module INT8PE(
  input        clock,
  input        reset,
  input  [7:0] io_vecA_0,
  input  [7:0] io_vecA_1,
  input  [7:0] io_vecA_2,
  input  [7:0] io_vecA_3,
  input  [7:0] io_vecA_4,
  input  [7:0] io_vecA_5,
  input  [7:0] io_vecA_6,
  input  [7:0] io_vecA_7,
  input  [7:0] io_vecA_8,
  input  [7:0] io_vecA_9,
  input  [7:0] io_vecA_10,
  input  [7:0] io_vecA_11,
  input  [7:0] io_vecA_12,
  input  [7:0] io_vecA_13,
  input  [7:0] io_vecA_14,
  input  [7:0] io_vecA_15,
  input  [7:0] io_vecB_0,
  input  [7:0] io_vecB_1,
  input  [7:0] io_vecB_2,
  input  [7:0] io_vecB_3,
  input  [7:0] io_vecB_4,
  input  [7:0] io_vecB_5,
  input  [7:0] io_vecB_6,
  input  [7:0] io_vecB_7,
  input  [7:0] io_vecB_8,
  input  [7:0] io_vecB_9,
  input  [7:0] io_vecB_10,
  input  [7:0] io_vecB_11,
  input  [7:0] io_vecB_12,
  input  [7:0] io_vecB_13,
  input  [7:0] io_vecB_14,
  input  [7:0] io_vecB_15,
  input        io_mode,
  input        io_enable,
  output [7:0] io_resultADD_0,
  output [7:0] io_resultADD_1,
  output [7:0] io_resultADD_2,
  output [7:0] io_resultADD_3,
  output [7:0] io_resultADD_4,
  output [7:0] io_resultADD_5,
  output [7:0] io_resultADD_6,
  output [7:0] io_resultADD_7,
  output [7:0] io_resultADD_8,
  output [7:0] io_resultADD_9,
  output [7:0] io_resultADD_10,
  output [7:0] io_resultADD_11,
  output [7:0] io_resultADD_12,
  output [7:0] io_resultADD_13,
  output [7:0] io_resultADD_14,
  output [7:0] io_resultADD_15,
  output [7:0] io_resultMAC
);
  wire [7:0] macs_0_io_a; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_0_io_b; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_0_io_c; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_0_io_out; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_1_io_a; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_1_io_b; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_1_io_c; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_1_io_out; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_2_io_a; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_2_io_b; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_2_io_c; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_2_io_out; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_3_io_a; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_3_io_b; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_3_io_c; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_3_io_out; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_4_io_a; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_4_io_b; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_4_io_c; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_4_io_out; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_5_io_a; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_5_io_b; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_5_io_c; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_5_io_out; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_6_io_a; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_6_io_b; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_6_io_c; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_6_io_out; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_7_io_a; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_7_io_b; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_7_io_c; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_7_io_out; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_8_io_a; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_8_io_b; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_8_io_c; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_8_io_out; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_9_io_a; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_9_io_b; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_9_io_c; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_9_io_out; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_10_io_a; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_10_io_b; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_10_io_c; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_10_io_out; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_11_io_a; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_11_io_b; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_11_io_c; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_11_io_out; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_12_io_a; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_12_io_b; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_12_io_c; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_12_io_out; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_13_io_a; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_13_io_b; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_13_io_c; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_13_io_out; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_14_io_a; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_14_io_b; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_14_io_c; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_14_io_out; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_15_io_a; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_15_io_b; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_15_io_c; // @[PE_INT8.scala 26:33]
  wire [7:0] macs_15_io_out; // @[PE_INT8.scala 26:33]
  wire [7:0] _resultADD_0_T_1 = io_vecA_0 + io_vecB_0; // @[PE_INT8.scala 43:36]
  wire [7:0] _GEN_0 = io_mode ? io_vecA_0 : 8'h0; // @[PE_INT8.scala 31:21 32:22 39:22]
  wire [7:0] _GEN_1 = io_mode ? io_vecB_0 : 8'h0; // @[PE_INT8.scala 31:21 33:22 40:22]
  wire [7:0] _GEN_3 = io_mode ? 8'h0 : _resultADD_0_T_1; // @[PE_INT8.scala 31:21 36:22 43:22]
  wire [7:0] _resultADD_1_T_1 = io_vecA_1 + io_vecB_1; // @[PE_INT8.scala 43:36]
  wire [7:0] _GEN_8 = io_mode ? io_vecA_1 : 8'h0; // @[PE_INT8.scala 31:21 32:22 39:22]
  wire [7:0] _GEN_9 = io_mode ? io_vecB_1 : 8'h0; // @[PE_INT8.scala 31:21 33:22 40:22]
  wire [7:0] _GEN_10 = io_mode ? macs_0_io_out : 8'h0; // @[PE_INT8.scala 31:21 34:22 41:22]
  wire [7:0] _GEN_11 = io_mode ? 8'h0 : _resultADD_1_T_1; // @[PE_INT8.scala 31:21 36:22 43:22]
  wire [7:0] _resultADD_2_T_1 = io_vecA_2 + io_vecB_2; // @[PE_INT8.scala 43:36]
  wire [7:0] _GEN_16 = io_mode ? io_vecA_2 : 8'h0; // @[PE_INT8.scala 31:21 32:22 39:22]
  wire [7:0] _GEN_17 = io_mode ? io_vecB_2 : 8'h0; // @[PE_INT8.scala 31:21 33:22 40:22]
  wire [7:0] _GEN_18 = io_mode ? macs_1_io_out : 8'h0; // @[PE_INT8.scala 31:21 34:22 41:22]
  wire [7:0] _GEN_19 = io_mode ? 8'h0 : _resultADD_2_T_1; // @[PE_INT8.scala 31:21 36:22 43:22]
  wire [7:0] _resultADD_3_T_1 = io_vecA_3 + io_vecB_3; // @[PE_INT8.scala 43:36]
  wire [7:0] _GEN_24 = io_mode ? io_vecA_3 : 8'h0; // @[PE_INT8.scala 31:21 32:22 39:22]
  wire [7:0] _GEN_25 = io_mode ? io_vecB_3 : 8'h0; // @[PE_INT8.scala 31:21 33:22 40:22]
  wire [7:0] _GEN_26 = io_mode ? macs_2_io_out : 8'h0; // @[PE_INT8.scala 31:21 34:22 41:22]
  wire [7:0] _GEN_27 = io_mode ? 8'h0 : _resultADD_3_T_1; // @[PE_INT8.scala 31:21 36:22 43:22]
  wire [7:0] _resultADD_4_T_1 = io_vecA_4 + io_vecB_4; // @[PE_INT8.scala 43:36]
  wire [7:0] _GEN_32 = io_mode ? io_vecA_4 : 8'h0; // @[PE_INT8.scala 31:21 32:22 39:22]
  wire [7:0] _GEN_33 = io_mode ? io_vecB_4 : 8'h0; // @[PE_INT8.scala 31:21 33:22 40:22]
  wire [7:0] _GEN_34 = io_mode ? macs_3_io_out : 8'h0; // @[PE_INT8.scala 31:21 34:22 41:22]
  wire [7:0] _GEN_35 = io_mode ? 8'h0 : _resultADD_4_T_1; // @[PE_INT8.scala 31:21 36:22 43:22]
  wire [7:0] _resultADD_5_T_1 = io_vecA_5 + io_vecB_5; // @[PE_INT8.scala 43:36]
  wire [7:0] _GEN_40 = io_mode ? io_vecA_5 : 8'h0; // @[PE_INT8.scala 31:21 32:22 39:22]
  wire [7:0] _GEN_41 = io_mode ? io_vecB_5 : 8'h0; // @[PE_INT8.scala 31:21 33:22 40:22]
  wire [7:0] _GEN_42 = io_mode ? macs_4_io_out : 8'h0; // @[PE_INT8.scala 31:21 34:22 41:22]
  wire [7:0] _GEN_43 = io_mode ? 8'h0 : _resultADD_5_T_1; // @[PE_INT8.scala 31:21 36:22 43:22]
  wire [7:0] _resultADD_6_T_1 = io_vecA_6 + io_vecB_6; // @[PE_INT8.scala 43:36]
  wire [7:0] _GEN_48 = io_mode ? io_vecA_6 : 8'h0; // @[PE_INT8.scala 31:21 32:22 39:22]
  wire [7:0] _GEN_49 = io_mode ? io_vecB_6 : 8'h0; // @[PE_INT8.scala 31:21 33:22 40:22]
  wire [7:0] _GEN_50 = io_mode ? macs_5_io_out : 8'h0; // @[PE_INT8.scala 31:21 34:22 41:22]
  wire [7:0] _GEN_51 = io_mode ? 8'h0 : _resultADD_6_T_1; // @[PE_INT8.scala 31:21 36:22 43:22]
  wire [7:0] _resultADD_7_T_1 = io_vecA_7 + io_vecB_7; // @[PE_INT8.scala 43:36]
  wire [7:0] _GEN_56 = io_mode ? io_vecA_7 : 8'h0; // @[PE_INT8.scala 31:21 32:22 39:22]
  wire [7:0] _GEN_57 = io_mode ? io_vecB_7 : 8'h0; // @[PE_INT8.scala 31:21 33:22 40:22]
  wire [7:0] _GEN_58 = io_mode ? macs_6_io_out : 8'h0; // @[PE_INT8.scala 31:21 34:22 41:22]
  wire [7:0] _GEN_59 = io_mode ? 8'h0 : _resultADD_7_T_1; // @[PE_INT8.scala 31:21 36:22 43:22]
  wire [7:0] _resultADD_8_T_1 = io_vecA_8 + io_vecB_8; // @[PE_INT8.scala 43:36]
  wire [7:0] _GEN_64 = io_mode ? io_vecA_8 : 8'h0; // @[PE_INT8.scala 31:21 32:22 39:22]
  wire [7:0] _GEN_65 = io_mode ? io_vecB_8 : 8'h0; // @[PE_INT8.scala 31:21 33:22 40:22]
  wire [7:0] _GEN_66 = io_mode ? macs_7_io_out : 8'h0; // @[PE_INT8.scala 31:21 34:22 41:22]
  wire [7:0] _GEN_67 = io_mode ? 8'h0 : _resultADD_8_T_1; // @[PE_INT8.scala 31:21 36:22 43:22]
  wire [7:0] _resultADD_9_T_1 = io_vecA_9 + io_vecB_9; // @[PE_INT8.scala 43:36]
  wire [7:0] _GEN_72 = io_mode ? io_vecA_9 : 8'h0; // @[PE_INT8.scala 31:21 32:22 39:22]
  wire [7:0] _GEN_73 = io_mode ? io_vecB_9 : 8'h0; // @[PE_INT8.scala 31:21 33:22 40:22]
  wire [7:0] _GEN_74 = io_mode ? macs_8_io_out : 8'h0; // @[PE_INT8.scala 31:21 34:22 41:22]
  wire [7:0] _GEN_75 = io_mode ? 8'h0 : _resultADD_9_T_1; // @[PE_INT8.scala 31:21 36:22 43:22]
  wire [7:0] _resultADD_10_T_1 = io_vecA_10 + io_vecB_10; // @[PE_INT8.scala 43:36]
  wire [7:0] _GEN_80 = io_mode ? io_vecA_10 : 8'h0; // @[PE_INT8.scala 31:21 32:22 39:22]
  wire [7:0] _GEN_81 = io_mode ? io_vecB_10 : 8'h0; // @[PE_INT8.scala 31:21 33:22 40:22]
  wire [7:0] _GEN_82 = io_mode ? macs_9_io_out : 8'h0; // @[PE_INT8.scala 31:21 34:22 41:22]
  wire [7:0] _GEN_83 = io_mode ? 8'h0 : _resultADD_10_T_1; // @[PE_INT8.scala 31:21 36:22 43:22]
  wire [7:0] _resultADD_11_T_1 = io_vecA_11 + io_vecB_11; // @[PE_INT8.scala 43:36]
  wire [7:0] _GEN_88 = io_mode ? io_vecA_11 : 8'h0; // @[PE_INT8.scala 31:21 32:22 39:22]
  wire [7:0] _GEN_89 = io_mode ? io_vecB_11 : 8'h0; // @[PE_INT8.scala 31:21 33:22 40:22]
  wire [7:0] _GEN_90 = io_mode ? macs_10_io_out : 8'h0; // @[PE_INT8.scala 31:21 34:22 41:22]
  wire [7:0] _GEN_91 = io_mode ? 8'h0 : _resultADD_11_T_1; // @[PE_INT8.scala 31:21 36:22 43:22]
  wire [7:0] _resultADD_12_T_1 = io_vecA_12 + io_vecB_12; // @[PE_INT8.scala 43:36]
  wire [7:0] _GEN_96 = io_mode ? io_vecA_12 : 8'h0; // @[PE_INT8.scala 31:21 32:22 39:22]
  wire [7:0] _GEN_97 = io_mode ? io_vecB_12 : 8'h0; // @[PE_INT8.scala 31:21 33:22 40:22]
  wire [7:0] _GEN_98 = io_mode ? macs_11_io_out : 8'h0; // @[PE_INT8.scala 31:21 34:22 41:22]
  wire [7:0] _GEN_99 = io_mode ? 8'h0 : _resultADD_12_T_1; // @[PE_INT8.scala 31:21 36:22 43:22]
  wire [7:0] _resultADD_13_T_1 = io_vecA_13 + io_vecB_13; // @[PE_INT8.scala 43:36]
  wire [7:0] _GEN_104 = io_mode ? io_vecA_13 : 8'h0; // @[PE_INT8.scala 31:21 32:22 39:22]
  wire [7:0] _GEN_105 = io_mode ? io_vecB_13 : 8'h0; // @[PE_INT8.scala 31:21 33:22 40:22]
  wire [7:0] _GEN_106 = io_mode ? macs_12_io_out : 8'h0; // @[PE_INT8.scala 31:21 34:22 41:22]
  wire [7:0] _GEN_107 = io_mode ? 8'h0 : _resultADD_13_T_1; // @[PE_INT8.scala 31:21 36:22 43:22]
  wire [7:0] _resultADD_14_T_1 = io_vecA_14 + io_vecB_14; // @[PE_INT8.scala 43:36]
  wire [7:0] _GEN_112 = io_mode ? io_vecA_14 : 8'h0; // @[PE_INT8.scala 31:21 32:22 39:22]
  wire [7:0] _GEN_113 = io_mode ? io_vecB_14 : 8'h0; // @[PE_INT8.scala 31:21 33:22 40:22]
  wire [7:0] _GEN_114 = io_mode ? macs_13_io_out : 8'h0; // @[PE_INT8.scala 31:21 34:22 41:22]
  wire [7:0] _GEN_115 = io_mode ? 8'h0 : _resultADD_14_T_1; // @[PE_INT8.scala 31:21 36:22 43:22]
  wire [7:0] _resultADD_15_T_1 = io_vecA_15 + io_vecB_15; // @[PE_INT8.scala 43:36]
  wire [7:0] _GEN_120 = io_mode ? io_vecA_15 : 8'h0; // @[PE_INT8.scala 31:21 32:22 39:22]
  wire [7:0] _GEN_121 = io_mode ? io_vecB_15 : 8'h0; // @[PE_INT8.scala 31:21 33:22 40:22]
  wire [7:0] _GEN_122 = io_mode ? macs_14_io_out : 8'h0; // @[PE_INT8.scala 31:21 34:22 41:22]
  wire [7:0] _GEN_123 = io_mode ? 8'h0 : _resultADD_15_T_1; // @[PE_INT8.scala 31:21 36:22 43:22]
  INT8MAC macs_0 ( // @[PE_INT8.scala 26:33]
    .io_a(macs_0_io_a),
    .io_b(macs_0_io_b),
    .io_c(macs_0_io_c),
    .io_out(macs_0_io_out)
  );
  INT8MAC macs_1 ( // @[PE_INT8.scala 26:33]
    .io_a(macs_1_io_a),
    .io_b(macs_1_io_b),
    .io_c(macs_1_io_c),
    .io_out(macs_1_io_out)
  );
  INT8MAC macs_2 ( // @[PE_INT8.scala 26:33]
    .io_a(macs_2_io_a),
    .io_b(macs_2_io_b),
    .io_c(macs_2_io_c),
    .io_out(macs_2_io_out)
  );
  INT8MAC macs_3 ( // @[PE_INT8.scala 26:33]
    .io_a(macs_3_io_a),
    .io_b(macs_3_io_b),
    .io_c(macs_3_io_c),
    .io_out(macs_3_io_out)
  );
  INT8MAC macs_4 ( // @[PE_INT8.scala 26:33]
    .io_a(macs_4_io_a),
    .io_b(macs_4_io_b),
    .io_c(macs_4_io_c),
    .io_out(macs_4_io_out)
  );
  INT8MAC macs_5 ( // @[PE_INT8.scala 26:33]
    .io_a(macs_5_io_a),
    .io_b(macs_5_io_b),
    .io_c(macs_5_io_c),
    .io_out(macs_5_io_out)
  );
  INT8MAC macs_6 ( // @[PE_INT8.scala 26:33]
    .io_a(macs_6_io_a),
    .io_b(macs_6_io_b),
    .io_c(macs_6_io_c),
    .io_out(macs_6_io_out)
  );
  INT8MAC macs_7 ( // @[PE_INT8.scala 26:33]
    .io_a(macs_7_io_a),
    .io_b(macs_7_io_b),
    .io_c(macs_7_io_c),
    .io_out(macs_7_io_out)
  );
  INT8MAC macs_8 ( // @[PE_INT8.scala 26:33]
    .io_a(macs_8_io_a),
    .io_b(macs_8_io_b),
    .io_c(macs_8_io_c),
    .io_out(macs_8_io_out)
  );
  INT8MAC macs_9 ( // @[PE_INT8.scala 26:33]
    .io_a(macs_9_io_a),
    .io_b(macs_9_io_b),
    .io_c(macs_9_io_c),
    .io_out(macs_9_io_out)
  );
  INT8MAC macs_10 ( // @[PE_INT8.scala 26:33]
    .io_a(macs_10_io_a),
    .io_b(macs_10_io_b),
    .io_c(macs_10_io_c),
    .io_out(macs_10_io_out)
  );
  INT8MAC macs_11 ( // @[PE_INT8.scala 26:33]
    .io_a(macs_11_io_a),
    .io_b(macs_11_io_b),
    .io_c(macs_11_io_c),
    .io_out(macs_11_io_out)
  );
  INT8MAC macs_12 ( // @[PE_INT8.scala 26:33]
    .io_a(macs_12_io_a),
    .io_b(macs_12_io_b),
    .io_c(macs_12_io_c),
    .io_out(macs_12_io_out)
  );
  INT8MAC macs_13 ( // @[PE_INT8.scala 26:33]
    .io_a(macs_13_io_a),
    .io_b(macs_13_io_b),
    .io_c(macs_13_io_c),
    .io_out(macs_13_io_out)
  );
  INT8MAC macs_14 ( // @[PE_INT8.scala 26:33]
    .io_a(macs_14_io_a),
    .io_b(macs_14_io_b),
    .io_c(macs_14_io_c),
    .io_out(macs_14_io_out)
  );
  INT8MAC macs_15 ( // @[PE_INT8.scala 26:33]
    .io_a(macs_15_io_a),
    .io_b(macs_15_io_b),
    .io_c(macs_15_io_c),
    .io_out(macs_15_io_out)
  );
  assign io_resultADD_0 = io_enable ? _GEN_3 : 8'h0; // @[PE_INT8.scala 30:21 49:20]
  assign io_resultADD_1 = io_enable ? _GEN_11 : 8'h0; // @[PE_INT8.scala 30:21 49:20]
  assign io_resultADD_2 = io_enable ? _GEN_19 : 8'h0; // @[PE_INT8.scala 30:21 49:20]
  assign io_resultADD_3 = io_enable ? _GEN_27 : 8'h0; // @[PE_INT8.scala 30:21 49:20]
  assign io_resultADD_4 = io_enable ? _GEN_35 : 8'h0; // @[PE_INT8.scala 30:21 49:20]
  assign io_resultADD_5 = io_enable ? _GEN_43 : 8'h0; // @[PE_INT8.scala 30:21 49:20]
  assign io_resultADD_6 = io_enable ? _GEN_51 : 8'h0; // @[PE_INT8.scala 30:21 49:20]
  assign io_resultADD_7 = io_enable ? _GEN_59 : 8'h0; // @[PE_INT8.scala 30:21 49:20]
  assign io_resultADD_8 = io_enable ? _GEN_67 : 8'h0; // @[PE_INT8.scala 30:21 49:20]
  assign io_resultADD_9 = io_enable ? _GEN_75 : 8'h0; // @[PE_INT8.scala 30:21 49:20]
  assign io_resultADD_10 = io_enable ? _GEN_83 : 8'h0; // @[PE_INT8.scala 30:21 49:20]
  assign io_resultADD_11 = io_enable ? _GEN_91 : 8'h0; // @[PE_INT8.scala 30:21 49:20]
  assign io_resultADD_12 = io_enable ? _GEN_99 : 8'h0; // @[PE_INT8.scala 30:21 49:20]
  assign io_resultADD_13 = io_enable ? _GEN_107 : 8'h0; // @[PE_INT8.scala 30:21 49:20]
  assign io_resultADD_14 = io_enable ? _GEN_115 : 8'h0; // @[PE_INT8.scala 30:21 49:20]
  assign io_resultADD_15 = io_enable ? _GEN_123 : 8'h0; // @[PE_INT8.scala 30:21 49:20]
  assign io_resultMAC = io_enable & io_mode ? macs_15_io_out : 8'h0; // @[PE_INT8.scala 54:22]
  assign macs_0_io_a = io_enable ? _GEN_0 : 8'h0; // @[PE_INT8.scala 30:21 46:20]
  assign macs_0_io_b = io_enable ? _GEN_1 : 8'h0; // @[PE_INT8.scala 30:21 47:20]
  assign macs_0_io_c = 8'h0; // @[PE_INT8.scala 30:21 48:20]
  assign macs_1_io_a = io_enable ? _GEN_8 : 8'h0; // @[PE_INT8.scala 30:21 46:20]
  assign macs_1_io_b = io_enable ? _GEN_9 : 8'h0; // @[PE_INT8.scala 30:21 47:20]
  assign macs_1_io_c = io_enable ? _GEN_10 : 8'h0; // @[PE_INT8.scala 30:21 48:20]
  assign macs_2_io_a = io_enable ? _GEN_16 : 8'h0; // @[PE_INT8.scala 30:21 46:20]
  assign macs_2_io_b = io_enable ? _GEN_17 : 8'h0; // @[PE_INT8.scala 30:21 47:20]
  assign macs_2_io_c = io_enable ? _GEN_18 : 8'h0; // @[PE_INT8.scala 30:21 48:20]
  assign macs_3_io_a = io_enable ? _GEN_24 : 8'h0; // @[PE_INT8.scala 30:21 46:20]
  assign macs_3_io_b = io_enable ? _GEN_25 : 8'h0; // @[PE_INT8.scala 30:21 47:20]
  assign macs_3_io_c = io_enable ? _GEN_26 : 8'h0; // @[PE_INT8.scala 30:21 48:20]
  assign macs_4_io_a = io_enable ? _GEN_32 : 8'h0; // @[PE_INT8.scala 30:21 46:20]
  assign macs_4_io_b = io_enable ? _GEN_33 : 8'h0; // @[PE_INT8.scala 30:21 47:20]
  assign macs_4_io_c = io_enable ? _GEN_34 : 8'h0; // @[PE_INT8.scala 30:21 48:20]
  assign macs_5_io_a = io_enable ? _GEN_40 : 8'h0; // @[PE_INT8.scala 30:21 46:20]
  assign macs_5_io_b = io_enable ? _GEN_41 : 8'h0; // @[PE_INT8.scala 30:21 47:20]
  assign macs_5_io_c = io_enable ? _GEN_42 : 8'h0; // @[PE_INT8.scala 30:21 48:20]
  assign macs_6_io_a = io_enable ? _GEN_48 : 8'h0; // @[PE_INT8.scala 30:21 46:20]
  assign macs_6_io_b = io_enable ? _GEN_49 : 8'h0; // @[PE_INT8.scala 30:21 47:20]
  assign macs_6_io_c = io_enable ? _GEN_50 : 8'h0; // @[PE_INT8.scala 30:21 48:20]
  assign macs_7_io_a = io_enable ? _GEN_56 : 8'h0; // @[PE_INT8.scala 30:21 46:20]
  assign macs_7_io_b = io_enable ? _GEN_57 : 8'h0; // @[PE_INT8.scala 30:21 47:20]
  assign macs_7_io_c = io_enable ? _GEN_58 : 8'h0; // @[PE_INT8.scala 30:21 48:20]
  assign macs_8_io_a = io_enable ? _GEN_64 : 8'h0; // @[PE_INT8.scala 30:21 46:20]
  assign macs_8_io_b = io_enable ? _GEN_65 : 8'h0; // @[PE_INT8.scala 30:21 47:20]
  assign macs_8_io_c = io_enable ? _GEN_66 : 8'h0; // @[PE_INT8.scala 30:21 48:20]
  assign macs_9_io_a = io_enable ? _GEN_72 : 8'h0; // @[PE_INT8.scala 30:21 46:20]
  assign macs_9_io_b = io_enable ? _GEN_73 : 8'h0; // @[PE_INT8.scala 30:21 47:20]
  assign macs_9_io_c = io_enable ? _GEN_74 : 8'h0; // @[PE_INT8.scala 30:21 48:20]
  assign macs_10_io_a = io_enable ? _GEN_80 : 8'h0; // @[PE_INT8.scala 30:21 46:20]
  assign macs_10_io_b = io_enable ? _GEN_81 : 8'h0; // @[PE_INT8.scala 30:21 47:20]
  assign macs_10_io_c = io_enable ? _GEN_82 : 8'h0; // @[PE_INT8.scala 30:21 48:20]
  assign macs_11_io_a = io_enable ? _GEN_88 : 8'h0; // @[PE_INT8.scala 30:21 46:20]
  assign macs_11_io_b = io_enable ? _GEN_89 : 8'h0; // @[PE_INT8.scala 30:21 47:20]
  assign macs_11_io_c = io_enable ? _GEN_90 : 8'h0; // @[PE_INT8.scala 30:21 48:20]
  assign macs_12_io_a = io_enable ? _GEN_96 : 8'h0; // @[PE_INT8.scala 30:21 46:20]
  assign macs_12_io_b = io_enable ? _GEN_97 : 8'h0; // @[PE_INT8.scala 30:21 47:20]
  assign macs_12_io_c = io_enable ? _GEN_98 : 8'h0; // @[PE_INT8.scala 30:21 48:20]
  assign macs_13_io_a = io_enable ? _GEN_104 : 8'h0; // @[PE_INT8.scala 30:21 46:20]
  assign macs_13_io_b = io_enable ? _GEN_105 : 8'h0; // @[PE_INT8.scala 30:21 47:20]
  assign macs_13_io_c = io_enable ? _GEN_106 : 8'h0; // @[PE_INT8.scala 30:21 48:20]
  assign macs_14_io_a = io_enable ? _GEN_112 : 8'h0; // @[PE_INT8.scala 30:21 46:20]
  assign macs_14_io_b = io_enable ? _GEN_113 : 8'h0; // @[PE_INT8.scala 30:21 47:20]
  assign macs_14_io_c = io_enable ? _GEN_114 : 8'h0; // @[PE_INT8.scala 30:21 48:20]
  assign macs_15_io_a = io_enable ? _GEN_120 : 8'h0; // @[PE_INT8.scala 30:21 46:20]
  assign macs_15_io_b = io_enable ? _GEN_121 : 8'h0; // @[PE_INT8.scala 30:21 47:20]
  assign macs_15_io_c = io_enable ? _GEN_122 : 8'h0; // @[PE_INT8.scala 30:21 48:20]
endmodule
