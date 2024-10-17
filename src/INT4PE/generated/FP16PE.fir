circuit FP16PE :
  module FP16MAC :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT4.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT4.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT4.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT4.scala 11:10]

  module FP16MAC_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT4.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT4.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT4.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT4.scala 11:10]

  module FP16MAC_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT4.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT4.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT4.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT4.scala 11:10]

  module FP16MAC_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT4.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT4.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT4.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT4.scala 11:10]

  module FP16MAC_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT4.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT4.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT4.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT4.scala 11:10]

  module FP16MAC_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT4.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT4.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT4.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT4.scala 11:10]

  module FP16MAC_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT4.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT4.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT4.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT4.scala 11:10]

  module FP16MAC_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT4.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT4.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT4.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT4.scala 11:10]

  module FP16MAC_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT4.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT4.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT4.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT4.scala 11:10]

  module FP16MAC_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT4.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT4.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT4.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT4.scala 11:10]

  module FP16MAC_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT4.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT4.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT4.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT4.scala 11:10]

  module FP16MAC_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT4.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT4.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT4.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT4.scala 11:10]

  module FP16MAC_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT4.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT4.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT4.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT4.scala 11:10]

  module FP16MAC_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT4.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT4.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT4.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT4.scala 11:10]

  module FP16MAC_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT4.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT4.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT4.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT4.scala 11:10]

  module FP16MAC_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT4.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT4.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT4.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT4.scala 11:10]

  module FP16PE :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip vecA : UInt<4>[16], flip vecB : UInt<4>[16], resultMAC : UInt<4>}

    inst macs_0 of FP16MAC @[PE_INT4.scala 22:33]
    macs_0.clock <= clock
    macs_0.reset <= reset
    inst macs_1 of FP16MAC_1 @[PE_INT4.scala 22:33]
    macs_1.clock <= clock
    macs_1.reset <= reset
    inst macs_2 of FP16MAC_2 @[PE_INT4.scala 22:33]
    macs_2.clock <= clock
    macs_2.reset <= reset
    inst macs_3 of FP16MAC_3 @[PE_INT4.scala 22:33]
    macs_3.clock <= clock
    macs_3.reset <= reset
    inst macs_4 of FP16MAC_4 @[PE_INT4.scala 22:33]
    macs_4.clock <= clock
    macs_4.reset <= reset
    inst macs_5 of FP16MAC_5 @[PE_INT4.scala 22:33]
    macs_5.clock <= clock
    macs_5.reset <= reset
    inst macs_6 of FP16MAC_6 @[PE_INT4.scala 22:33]
    macs_6.clock <= clock
    macs_6.reset <= reset
    inst macs_7 of FP16MAC_7 @[PE_INT4.scala 22:33]
    macs_7.clock <= clock
    macs_7.reset <= reset
    inst macs_8 of FP16MAC_8 @[PE_INT4.scala 22:33]
    macs_8.clock <= clock
    macs_8.reset <= reset
    inst macs_9 of FP16MAC_9 @[PE_INT4.scala 22:33]
    macs_9.clock <= clock
    macs_9.reset <= reset
    inst macs_10 of FP16MAC_10 @[PE_INT4.scala 22:33]
    macs_10.clock <= clock
    macs_10.reset <= reset
    inst macs_11 of FP16MAC_11 @[PE_INT4.scala 22:33]
    macs_11.clock <= clock
    macs_11.reset <= reset
    inst macs_12 of FP16MAC_12 @[PE_INT4.scala 22:33]
    macs_12.clock <= clock
    macs_12.reset <= reset
    inst macs_13 of FP16MAC_13 @[PE_INT4.scala 22:33]
    macs_13.clock <= clock
    macs_13.reset <= reset
    inst macs_14 of FP16MAC_14 @[PE_INT4.scala 22:33]
    macs_14.clock <= clock
    macs_14.reset <= reset
    inst macs_15 of FP16MAC_15 @[PE_INT4.scala 22:33]
    macs_15.clock <= clock
    macs_15.reset <= reset
    wire _accumulator_WIRE : UInt<4>[16] @[PE_INT4.scala 25:36]
    _accumulator_WIRE[0] <= UInt<4>("h0") @[PE_INT4.scala 25:36]
    _accumulator_WIRE[1] <= UInt<4>("h0") @[PE_INT4.scala 25:36]
    _accumulator_WIRE[2] <= UInt<4>("h0") @[PE_INT4.scala 25:36]
    _accumulator_WIRE[3] <= UInt<4>("h0") @[PE_INT4.scala 25:36]
    _accumulator_WIRE[4] <= UInt<4>("h0") @[PE_INT4.scala 25:36]
    _accumulator_WIRE[5] <= UInt<4>("h0") @[PE_INT4.scala 25:36]
    _accumulator_WIRE[6] <= UInt<4>("h0") @[PE_INT4.scala 25:36]
    _accumulator_WIRE[7] <= UInt<4>("h0") @[PE_INT4.scala 25:36]
    _accumulator_WIRE[8] <= UInt<4>("h0") @[PE_INT4.scala 25:36]
    _accumulator_WIRE[9] <= UInt<4>("h0") @[PE_INT4.scala 25:36]
    _accumulator_WIRE[10] <= UInt<4>("h0") @[PE_INT4.scala 25:36]
    _accumulator_WIRE[11] <= UInt<4>("h0") @[PE_INT4.scala 25:36]
    _accumulator_WIRE[12] <= UInt<4>("h0") @[PE_INT4.scala 25:36]
    _accumulator_WIRE[13] <= UInt<4>("h0") @[PE_INT4.scala 25:36]
    _accumulator_WIRE[14] <= UInt<4>("h0") @[PE_INT4.scala 25:36]
    _accumulator_WIRE[15] <= UInt<4>("h0") @[PE_INT4.scala 25:36]
    reg accumulator : UInt<4>[16], clock with :
      reset => (reset, _accumulator_WIRE) @[PE_INT4.scala 25:28]
    macs_0.io.a <= io.vecA[0] @[PE_INT4.scala 27:18]
    macs_0.io.b <= io.vecB[0] @[PE_INT4.scala 28:18]
    macs_0.io.c <= UInt<1>("h0") @[PE_INT4.scala 29:18]
    accumulator[0] <= macs_0.io.out @[PE_INT4.scala 30:20]
    macs_1.io.a <= io.vecA[1] @[PE_INT4.scala 32:22]
    macs_1.io.b <= io.vecB[1] @[PE_INT4.scala 33:22]
    macs_1.io.c <= accumulator[0] @[PE_INT4.scala 34:22]
    accumulator[1] <= macs_1.io.out @[PE_INT4.scala 35:24]
    macs_2.io.a <= io.vecA[2] @[PE_INT4.scala 32:22]
    macs_2.io.b <= io.vecB[2] @[PE_INT4.scala 33:22]
    macs_2.io.c <= accumulator[1] @[PE_INT4.scala 34:22]
    accumulator[2] <= macs_2.io.out @[PE_INT4.scala 35:24]
    macs_3.io.a <= io.vecA[3] @[PE_INT4.scala 32:22]
    macs_3.io.b <= io.vecB[3] @[PE_INT4.scala 33:22]
    macs_3.io.c <= accumulator[2] @[PE_INT4.scala 34:22]
    accumulator[3] <= macs_3.io.out @[PE_INT4.scala 35:24]
    macs_4.io.a <= io.vecA[4] @[PE_INT4.scala 32:22]
    macs_4.io.b <= io.vecB[4] @[PE_INT4.scala 33:22]
    macs_4.io.c <= accumulator[3] @[PE_INT4.scala 34:22]
    accumulator[4] <= macs_4.io.out @[PE_INT4.scala 35:24]
    macs_5.io.a <= io.vecA[5] @[PE_INT4.scala 32:22]
    macs_5.io.b <= io.vecB[5] @[PE_INT4.scala 33:22]
    macs_5.io.c <= accumulator[4] @[PE_INT4.scala 34:22]
    accumulator[5] <= macs_5.io.out @[PE_INT4.scala 35:24]
    macs_6.io.a <= io.vecA[6] @[PE_INT4.scala 32:22]
    macs_6.io.b <= io.vecB[6] @[PE_INT4.scala 33:22]
    macs_6.io.c <= accumulator[5] @[PE_INT4.scala 34:22]
    accumulator[6] <= macs_6.io.out @[PE_INT4.scala 35:24]
    macs_7.io.a <= io.vecA[7] @[PE_INT4.scala 32:22]
    macs_7.io.b <= io.vecB[7] @[PE_INT4.scala 33:22]
    macs_7.io.c <= accumulator[6] @[PE_INT4.scala 34:22]
    accumulator[7] <= macs_7.io.out @[PE_INT4.scala 35:24]
    macs_8.io.a <= io.vecA[8] @[PE_INT4.scala 32:22]
    macs_8.io.b <= io.vecB[8] @[PE_INT4.scala 33:22]
    macs_8.io.c <= accumulator[7] @[PE_INT4.scala 34:22]
    accumulator[8] <= macs_8.io.out @[PE_INT4.scala 35:24]
    macs_9.io.a <= io.vecA[9] @[PE_INT4.scala 32:22]
    macs_9.io.b <= io.vecB[9] @[PE_INT4.scala 33:22]
    macs_9.io.c <= accumulator[8] @[PE_INT4.scala 34:22]
    accumulator[9] <= macs_9.io.out @[PE_INT4.scala 35:24]
    macs_10.io.a <= io.vecA[10] @[PE_INT4.scala 32:22]
    macs_10.io.b <= io.vecB[10] @[PE_INT4.scala 33:22]
    macs_10.io.c <= accumulator[9] @[PE_INT4.scala 34:22]
    accumulator[10] <= macs_10.io.out @[PE_INT4.scala 35:24]
    macs_11.io.a <= io.vecA[11] @[PE_INT4.scala 32:22]
    macs_11.io.b <= io.vecB[11] @[PE_INT4.scala 33:22]
    macs_11.io.c <= accumulator[10] @[PE_INT4.scala 34:22]
    accumulator[11] <= macs_11.io.out @[PE_INT4.scala 35:24]
    macs_12.io.a <= io.vecA[12] @[PE_INT4.scala 32:22]
    macs_12.io.b <= io.vecB[12] @[PE_INT4.scala 33:22]
    macs_12.io.c <= accumulator[11] @[PE_INT4.scala 34:22]
    accumulator[12] <= macs_12.io.out @[PE_INT4.scala 35:24]
    macs_13.io.a <= io.vecA[13] @[PE_INT4.scala 32:22]
    macs_13.io.b <= io.vecB[13] @[PE_INT4.scala 33:22]
    macs_13.io.c <= accumulator[12] @[PE_INT4.scala 34:22]
    accumulator[13] <= macs_13.io.out @[PE_INT4.scala 35:24]
    macs_14.io.a <= io.vecA[14] @[PE_INT4.scala 32:22]
    macs_14.io.b <= io.vecB[14] @[PE_INT4.scala 33:22]
    macs_14.io.c <= accumulator[13] @[PE_INT4.scala 34:22]
    accumulator[14] <= macs_14.io.out @[PE_INT4.scala 35:24]
    macs_15.io.a <= io.vecA[15] @[PE_INT4.scala 32:22]
    macs_15.io.b <= io.vecB[15] @[PE_INT4.scala 33:22]
    macs_15.io.c <= accumulator[14] @[PE_INT4.scala 34:22]
    accumulator[15] <= macs_15.io.out @[PE_INT4.scala 35:24]
    io.resultMAC <= accumulator[15] @[PE_INT4.scala 37:16]

