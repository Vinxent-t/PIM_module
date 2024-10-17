circuit INT8PE :
  module INT8MAC :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<8>, out : UInt<8>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT8.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT8.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT8.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT8.scala 11:10]

  module INT8MAC_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<8>, out : UInt<8>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT8.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT8.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT8.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT8.scala 11:10]

  module INT8MAC_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<8>, out : UInt<8>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT8.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT8.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT8.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT8.scala 11:10]

  module INT8MAC_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<8>, out : UInt<8>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT8.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT8.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT8.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT8.scala 11:10]

  module INT8MAC_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<8>, out : UInt<8>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT8.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT8.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT8.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT8.scala 11:10]

  module INT8MAC_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<8>, out : UInt<8>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT8.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT8.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT8.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT8.scala 11:10]

  module INT8MAC_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<8>, out : UInt<8>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT8.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT8.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT8.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT8.scala 11:10]

  module INT8MAC_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<8>, out : UInt<8>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT8.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT8.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT8.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT8.scala 11:10]

  module INT8MAC_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<8>, out : UInt<8>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT8.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT8.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT8.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT8.scala 11:10]

  module INT8MAC_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<8>, out : UInt<8>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT8.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT8.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT8.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT8.scala 11:10]

  module INT8MAC_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<8>, out : UInt<8>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT8.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT8.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT8.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT8.scala 11:10]

  module INT8MAC_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<8>, out : UInt<8>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT8.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT8.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT8.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT8.scala 11:10]

  module INT8MAC_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<8>, out : UInt<8>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT8.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT8.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT8.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT8.scala 11:10]

  module INT8MAC_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<8>, out : UInt<8>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT8.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT8.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT8.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT8.scala 11:10]

  module INT8MAC_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<8>, out : UInt<8>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT8.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT8.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT8.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT8.scala 11:10]

  module INT8MAC_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<8>, flip b : UInt<8>, flip c : UInt<8>, out : UInt<8>}

    node _io_out_T = mul(io.a, io.b) @[PE_INT8.scala 11:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[PE_INT8.scala 11:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[PE_INT8.scala 11:27]
    io.out <= _io_out_T_2 @[PE_INT8.scala 11:10]

  module INT8PE :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip vecA : UInt<8>[16], flip vecB : UInt<8>[16], flip mode : UInt<1>, flip enable : UInt<1>, resultADD : UInt<8>[16], resultMAC : UInt<8>}

    wire resultADD : UInt<8>[16] @[PE_INT8.scala 24:23]
    inst macs_0 of INT8MAC @[PE_INT8.scala 26:33]
    macs_0.clock <= clock
    macs_0.reset <= reset
    inst macs_1 of INT8MAC_1 @[PE_INT8.scala 26:33]
    macs_1.clock <= clock
    macs_1.reset <= reset
    inst macs_2 of INT8MAC_2 @[PE_INT8.scala 26:33]
    macs_2.clock <= clock
    macs_2.reset <= reset
    inst macs_3 of INT8MAC_3 @[PE_INT8.scala 26:33]
    macs_3.clock <= clock
    macs_3.reset <= reset
    inst macs_4 of INT8MAC_4 @[PE_INT8.scala 26:33]
    macs_4.clock <= clock
    macs_4.reset <= reset
    inst macs_5 of INT8MAC_5 @[PE_INT8.scala 26:33]
    macs_5.clock <= clock
    macs_5.reset <= reset
    inst macs_6 of INT8MAC_6 @[PE_INT8.scala 26:33]
    macs_6.clock <= clock
    macs_6.reset <= reset
    inst macs_7 of INT8MAC_7 @[PE_INT8.scala 26:33]
    macs_7.clock <= clock
    macs_7.reset <= reset
    inst macs_8 of INT8MAC_8 @[PE_INT8.scala 26:33]
    macs_8.clock <= clock
    macs_8.reset <= reset
    inst macs_9 of INT8MAC_9 @[PE_INT8.scala 26:33]
    macs_9.clock <= clock
    macs_9.reset <= reset
    inst macs_10 of INT8MAC_10 @[PE_INT8.scala 26:33]
    macs_10.clock <= clock
    macs_10.reset <= reset
    inst macs_11 of INT8MAC_11 @[PE_INT8.scala 26:33]
    macs_11.clock <= clock
    macs_11.reset <= reset
    inst macs_12 of INT8MAC_12 @[PE_INT8.scala 26:33]
    macs_12.clock <= clock
    macs_12.reset <= reset
    inst macs_13 of INT8MAC_13 @[PE_INT8.scala 26:33]
    macs_13.clock <= clock
    macs_13.reset <= reset
    inst macs_14 of INT8MAC_14 @[PE_INT8.scala 26:33]
    macs_14.clock <= clock
    macs_14.reset <= reset
    inst macs_15 of INT8MAC_15 @[PE_INT8.scala 26:33]
    macs_15.clock <= clock
    macs_15.reset <= reset
    when io.enable : @[PE_INT8.scala 30:21]
      when io.mode : @[PE_INT8.scala 31:21]
        macs_0.io.a <= io.vecA[0] @[PE_INT8.scala 32:22]
        macs_0.io.b <= io.vecB[0] @[PE_INT8.scala 33:22]
        macs_0.io.c <= UInt<8>("h0") @[PE_INT8.scala 34:22]
        resultADD[0] <= UInt<1>("h0") @[PE_INT8.scala 36:22]
      else :
        macs_0.io.a <= UInt<1>("h0") @[PE_INT8.scala 39:22]
        macs_0.io.b <= UInt<1>("h0") @[PE_INT8.scala 40:22]
        macs_0.io.c <= UInt<1>("h0") @[PE_INT8.scala 41:22]
        node _resultADD_0_T = add(io.vecA[0], io.vecB[0]) @[PE_INT8.scala 43:36]
        node _resultADD_0_T_1 = tail(_resultADD_0_T, 1) @[PE_INT8.scala 43:36]
        resultADD[0] <= _resultADD_0_T_1 @[PE_INT8.scala 43:22]
    else :
      macs_0.io.a <= UInt<1>("h0") @[PE_INT8.scala 46:20]
      macs_0.io.b <= UInt<1>("h0") @[PE_INT8.scala 47:20]
      macs_0.io.c <= UInt<1>("h0") @[PE_INT8.scala 48:20]
      resultADD[0] <= UInt<1>("h0") @[PE_INT8.scala 49:20]
    when io.enable : @[PE_INT8.scala 30:21]
      when io.mode : @[PE_INT8.scala 31:21]
        macs_1.io.a <= io.vecA[1] @[PE_INT8.scala 32:22]
        macs_1.io.b <= io.vecB[1] @[PE_INT8.scala 33:22]
        macs_1.io.c <= macs_0.io.out @[PE_INT8.scala 34:22]
        resultADD[1] <= UInt<1>("h0") @[PE_INT8.scala 36:22]
      else :
        macs_1.io.a <= UInt<1>("h0") @[PE_INT8.scala 39:22]
        macs_1.io.b <= UInt<1>("h0") @[PE_INT8.scala 40:22]
        macs_1.io.c <= UInt<1>("h0") @[PE_INT8.scala 41:22]
        node _resultADD_1_T = add(io.vecA[1], io.vecB[1]) @[PE_INT8.scala 43:36]
        node _resultADD_1_T_1 = tail(_resultADD_1_T, 1) @[PE_INT8.scala 43:36]
        resultADD[1] <= _resultADD_1_T_1 @[PE_INT8.scala 43:22]
    else :
      macs_1.io.a <= UInt<1>("h0") @[PE_INT8.scala 46:20]
      macs_1.io.b <= UInt<1>("h0") @[PE_INT8.scala 47:20]
      macs_1.io.c <= UInt<1>("h0") @[PE_INT8.scala 48:20]
      resultADD[1] <= UInt<1>("h0") @[PE_INT8.scala 49:20]
    when io.enable : @[PE_INT8.scala 30:21]
      when io.mode : @[PE_INT8.scala 31:21]
        macs_2.io.a <= io.vecA[2] @[PE_INT8.scala 32:22]
        macs_2.io.b <= io.vecB[2] @[PE_INT8.scala 33:22]
        macs_2.io.c <= macs_1.io.out @[PE_INT8.scala 34:22]
        resultADD[2] <= UInt<1>("h0") @[PE_INT8.scala 36:22]
      else :
        macs_2.io.a <= UInt<1>("h0") @[PE_INT8.scala 39:22]
        macs_2.io.b <= UInt<1>("h0") @[PE_INT8.scala 40:22]
        macs_2.io.c <= UInt<1>("h0") @[PE_INT8.scala 41:22]
        node _resultADD_2_T = add(io.vecA[2], io.vecB[2]) @[PE_INT8.scala 43:36]
        node _resultADD_2_T_1 = tail(_resultADD_2_T, 1) @[PE_INT8.scala 43:36]
        resultADD[2] <= _resultADD_2_T_1 @[PE_INT8.scala 43:22]
    else :
      macs_2.io.a <= UInt<1>("h0") @[PE_INT8.scala 46:20]
      macs_2.io.b <= UInt<1>("h0") @[PE_INT8.scala 47:20]
      macs_2.io.c <= UInt<1>("h0") @[PE_INT8.scala 48:20]
      resultADD[2] <= UInt<1>("h0") @[PE_INT8.scala 49:20]
    when io.enable : @[PE_INT8.scala 30:21]
      when io.mode : @[PE_INT8.scala 31:21]
        macs_3.io.a <= io.vecA[3] @[PE_INT8.scala 32:22]
        macs_3.io.b <= io.vecB[3] @[PE_INT8.scala 33:22]
        macs_3.io.c <= macs_2.io.out @[PE_INT8.scala 34:22]
        resultADD[3] <= UInt<1>("h0") @[PE_INT8.scala 36:22]
      else :
        macs_3.io.a <= UInt<1>("h0") @[PE_INT8.scala 39:22]
        macs_3.io.b <= UInt<1>("h0") @[PE_INT8.scala 40:22]
        macs_3.io.c <= UInt<1>("h0") @[PE_INT8.scala 41:22]
        node _resultADD_3_T = add(io.vecA[3], io.vecB[3]) @[PE_INT8.scala 43:36]
        node _resultADD_3_T_1 = tail(_resultADD_3_T, 1) @[PE_INT8.scala 43:36]
        resultADD[3] <= _resultADD_3_T_1 @[PE_INT8.scala 43:22]
    else :
      macs_3.io.a <= UInt<1>("h0") @[PE_INT8.scala 46:20]
      macs_3.io.b <= UInt<1>("h0") @[PE_INT8.scala 47:20]
      macs_3.io.c <= UInt<1>("h0") @[PE_INT8.scala 48:20]
      resultADD[3] <= UInt<1>("h0") @[PE_INT8.scala 49:20]
    when io.enable : @[PE_INT8.scala 30:21]
      when io.mode : @[PE_INT8.scala 31:21]
        macs_4.io.a <= io.vecA[4] @[PE_INT8.scala 32:22]
        macs_4.io.b <= io.vecB[4] @[PE_INT8.scala 33:22]
        macs_4.io.c <= macs_3.io.out @[PE_INT8.scala 34:22]
        resultADD[4] <= UInt<1>("h0") @[PE_INT8.scala 36:22]
      else :
        macs_4.io.a <= UInt<1>("h0") @[PE_INT8.scala 39:22]
        macs_4.io.b <= UInt<1>("h0") @[PE_INT8.scala 40:22]
        macs_4.io.c <= UInt<1>("h0") @[PE_INT8.scala 41:22]
        node _resultADD_4_T = add(io.vecA[4], io.vecB[4]) @[PE_INT8.scala 43:36]
        node _resultADD_4_T_1 = tail(_resultADD_4_T, 1) @[PE_INT8.scala 43:36]
        resultADD[4] <= _resultADD_4_T_1 @[PE_INT8.scala 43:22]
    else :
      macs_4.io.a <= UInt<1>("h0") @[PE_INT8.scala 46:20]
      macs_4.io.b <= UInt<1>("h0") @[PE_INT8.scala 47:20]
      macs_4.io.c <= UInt<1>("h0") @[PE_INT8.scala 48:20]
      resultADD[4] <= UInt<1>("h0") @[PE_INT8.scala 49:20]
    when io.enable : @[PE_INT8.scala 30:21]
      when io.mode : @[PE_INT8.scala 31:21]
        macs_5.io.a <= io.vecA[5] @[PE_INT8.scala 32:22]
        macs_5.io.b <= io.vecB[5] @[PE_INT8.scala 33:22]
        macs_5.io.c <= macs_4.io.out @[PE_INT8.scala 34:22]
        resultADD[5] <= UInt<1>("h0") @[PE_INT8.scala 36:22]
      else :
        macs_5.io.a <= UInt<1>("h0") @[PE_INT8.scala 39:22]
        macs_5.io.b <= UInt<1>("h0") @[PE_INT8.scala 40:22]
        macs_5.io.c <= UInt<1>("h0") @[PE_INT8.scala 41:22]
        node _resultADD_5_T = add(io.vecA[5], io.vecB[5]) @[PE_INT8.scala 43:36]
        node _resultADD_5_T_1 = tail(_resultADD_5_T, 1) @[PE_INT8.scala 43:36]
        resultADD[5] <= _resultADD_5_T_1 @[PE_INT8.scala 43:22]
    else :
      macs_5.io.a <= UInt<1>("h0") @[PE_INT8.scala 46:20]
      macs_5.io.b <= UInt<1>("h0") @[PE_INT8.scala 47:20]
      macs_5.io.c <= UInt<1>("h0") @[PE_INT8.scala 48:20]
      resultADD[5] <= UInt<1>("h0") @[PE_INT8.scala 49:20]
    when io.enable : @[PE_INT8.scala 30:21]
      when io.mode : @[PE_INT8.scala 31:21]
        macs_6.io.a <= io.vecA[6] @[PE_INT8.scala 32:22]
        macs_6.io.b <= io.vecB[6] @[PE_INT8.scala 33:22]
        macs_6.io.c <= macs_5.io.out @[PE_INT8.scala 34:22]
        resultADD[6] <= UInt<1>("h0") @[PE_INT8.scala 36:22]
      else :
        macs_6.io.a <= UInt<1>("h0") @[PE_INT8.scala 39:22]
        macs_6.io.b <= UInt<1>("h0") @[PE_INT8.scala 40:22]
        macs_6.io.c <= UInt<1>("h0") @[PE_INT8.scala 41:22]
        node _resultADD_6_T = add(io.vecA[6], io.vecB[6]) @[PE_INT8.scala 43:36]
        node _resultADD_6_T_1 = tail(_resultADD_6_T, 1) @[PE_INT8.scala 43:36]
        resultADD[6] <= _resultADD_6_T_1 @[PE_INT8.scala 43:22]
    else :
      macs_6.io.a <= UInt<1>("h0") @[PE_INT8.scala 46:20]
      macs_6.io.b <= UInt<1>("h0") @[PE_INT8.scala 47:20]
      macs_6.io.c <= UInt<1>("h0") @[PE_INT8.scala 48:20]
      resultADD[6] <= UInt<1>("h0") @[PE_INT8.scala 49:20]
    when io.enable : @[PE_INT8.scala 30:21]
      when io.mode : @[PE_INT8.scala 31:21]
        macs_7.io.a <= io.vecA[7] @[PE_INT8.scala 32:22]
        macs_7.io.b <= io.vecB[7] @[PE_INT8.scala 33:22]
        macs_7.io.c <= macs_6.io.out @[PE_INT8.scala 34:22]
        resultADD[7] <= UInt<1>("h0") @[PE_INT8.scala 36:22]
      else :
        macs_7.io.a <= UInt<1>("h0") @[PE_INT8.scala 39:22]
        macs_7.io.b <= UInt<1>("h0") @[PE_INT8.scala 40:22]
        macs_7.io.c <= UInt<1>("h0") @[PE_INT8.scala 41:22]
        node _resultADD_7_T = add(io.vecA[7], io.vecB[7]) @[PE_INT8.scala 43:36]
        node _resultADD_7_T_1 = tail(_resultADD_7_T, 1) @[PE_INT8.scala 43:36]
        resultADD[7] <= _resultADD_7_T_1 @[PE_INT8.scala 43:22]
    else :
      macs_7.io.a <= UInt<1>("h0") @[PE_INT8.scala 46:20]
      macs_7.io.b <= UInt<1>("h0") @[PE_INT8.scala 47:20]
      macs_7.io.c <= UInt<1>("h0") @[PE_INT8.scala 48:20]
      resultADD[7] <= UInt<1>("h0") @[PE_INT8.scala 49:20]
    when io.enable : @[PE_INT8.scala 30:21]
      when io.mode : @[PE_INT8.scala 31:21]
        macs_8.io.a <= io.vecA[8] @[PE_INT8.scala 32:22]
        macs_8.io.b <= io.vecB[8] @[PE_INT8.scala 33:22]
        macs_8.io.c <= macs_7.io.out @[PE_INT8.scala 34:22]
        resultADD[8] <= UInt<1>("h0") @[PE_INT8.scala 36:22]
      else :
        macs_8.io.a <= UInt<1>("h0") @[PE_INT8.scala 39:22]
        macs_8.io.b <= UInt<1>("h0") @[PE_INT8.scala 40:22]
        macs_8.io.c <= UInt<1>("h0") @[PE_INT8.scala 41:22]
        node _resultADD_8_T = add(io.vecA[8], io.vecB[8]) @[PE_INT8.scala 43:36]
        node _resultADD_8_T_1 = tail(_resultADD_8_T, 1) @[PE_INT8.scala 43:36]
        resultADD[8] <= _resultADD_8_T_1 @[PE_INT8.scala 43:22]
    else :
      macs_8.io.a <= UInt<1>("h0") @[PE_INT8.scala 46:20]
      macs_8.io.b <= UInt<1>("h0") @[PE_INT8.scala 47:20]
      macs_8.io.c <= UInt<1>("h0") @[PE_INT8.scala 48:20]
      resultADD[8] <= UInt<1>("h0") @[PE_INT8.scala 49:20]
    when io.enable : @[PE_INT8.scala 30:21]
      when io.mode : @[PE_INT8.scala 31:21]
        macs_9.io.a <= io.vecA[9] @[PE_INT8.scala 32:22]
        macs_9.io.b <= io.vecB[9] @[PE_INT8.scala 33:22]
        macs_9.io.c <= macs_8.io.out @[PE_INT8.scala 34:22]
        resultADD[9] <= UInt<1>("h0") @[PE_INT8.scala 36:22]
      else :
        macs_9.io.a <= UInt<1>("h0") @[PE_INT8.scala 39:22]
        macs_9.io.b <= UInt<1>("h0") @[PE_INT8.scala 40:22]
        macs_9.io.c <= UInt<1>("h0") @[PE_INT8.scala 41:22]
        node _resultADD_9_T = add(io.vecA[9], io.vecB[9]) @[PE_INT8.scala 43:36]
        node _resultADD_9_T_1 = tail(_resultADD_9_T, 1) @[PE_INT8.scala 43:36]
        resultADD[9] <= _resultADD_9_T_1 @[PE_INT8.scala 43:22]
    else :
      macs_9.io.a <= UInt<1>("h0") @[PE_INT8.scala 46:20]
      macs_9.io.b <= UInt<1>("h0") @[PE_INT8.scala 47:20]
      macs_9.io.c <= UInt<1>("h0") @[PE_INT8.scala 48:20]
      resultADD[9] <= UInt<1>("h0") @[PE_INT8.scala 49:20]
    when io.enable : @[PE_INT8.scala 30:21]
      when io.mode : @[PE_INT8.scala 31:21]
        macs_10.io.a <= io.vecA[10] @[PE_INT8.scala 32:22]
        macs_10.io.b <= io.vecB[10] @[PE_INT8.scala 33:22]
        macs_10.io.c <= macs_9.io.out @[PE_INT8.scala 34:22]
        resultADD[10] <= UInt<1>("h0") @[PE_INT8.scala 36:22]
      else :
        macs_10.io.a <= UInt<1>("h0") @[PE_INT8.scala 39:22]
        macs_10.io.b <= UInt<1>("h0") @[PE_INT8.scala 40:22]
        macs_10.io.c <= UInt<1>("h0") @[PE_INT8.scala 41:22]
        node _resultADD_10_T = add(io.vecA[10], io.vecB[10]) @[PE_INT8.scala 43:36]
        node _resultADD_10_T_1 = tail(_resultADD_10_T, 1) @[PE_INT8.scala 43:36]
        resultADD[10] <= _resultADD_10_T_1 @[PE_INT8.scala 43:22]
    else :
      macs_10.io.a <= UInt<1>("h0") @[PE_INT8.scala 46:20]
      macs_10.io.b <= UInt<1>("h0") @[PE_INT8.scala 47:20]
      macs_10.io.c <= UInt<1>("h0") @[PE_INT8.scala 48:20]
      resultADD[10] <= UInt<1>("h0") @[PE_INT8.scala 49:20]
    when io.enable : @[PE_INT8.scala 30:21]
      when io.mode : @[PE_INT8.scala 31:21]
        macs_11.io.a <= io.vecA[11] @[PE_INT8.scala 32:22]
        macs_11.io.b <= io.vecB[11] @[PE_INT8.scala 33:22]
        macs_11.io.c <= macs_10.io.out @[PE_INT8.scala 34:22]
        resultADD[11] <= UInt<1>("h0") @[PE_INT8.scala 36:22]
      else :
        macs_11.io.a <= UInt<1>("h0") @[PE_INT8.scala 39:22]
        macs_11.io.b <= UInt<1>("h0") @[PE_INT8.scala 40:22]
        macs_11.io.c <= UInt<1>("h0") @[PE_INT8.scala 41:22]
        node _resultADD_11_T = add(io.vecA[11], io.vecB[11]) @[PE_INT8.scala 43:36]
        node _resultADD_11_T_1 = tail(_resultADD_11_T, 1) @[PE_INT8.scala 43:36]
        resultADD[11] <= _resultADD_11_T_1 @[PE_INT8.scala 43:22]
    else :
      macs_11.io.a <= UInt<1>("h0") @[PE_INT8.scala 46:20]
      macs_11.io.b <= UInt<1>("h0") @[PE_INT8.scala 47:20]
      macs_11.io.c <= UInt<1>("h0") @[PE_INT8.scala 48:20]
      resultADD[11] <= UInt<1>("h0") @[PE_INT8.scala 49:20]
    when io.enable : @[PE_INT8.scala 30:21]
      when io.mode : @[PE_INT8.scala 31:21]
        macs_12.io.a <= io.vecA[12] @[PE_INT8.scala 32:22]
        macs_12.io.b <= io.vecB[12] @[PE_INT8.scala 33:22]
        macs_12.io.c <= macs_11.io.out @[PE_INT8.scala 34:22]
        resultADD[12] <= UInt<1>("h0") @[PE_INT8.scala 36:22]
      else :
        macs_12.io.a <= UInt<1>("h0") @[PE_INT8.scala 39:22]
        macs_12.io.b <= UInt<1>("h0") @[PE_INT8.scala 40:22]
        macs_12.io.c <= UInt<1>("h0") @[PE_INT8.scala 41:22]
        node _resultADD_12_T = add(io.vecA[12], io.vecB[12]) @[PE_INT8.scala 43:36]
        node _resultADD_12_T_1 = tail(_resultADD_12_T, 1) @[PE_INT8.scala 43:36]
        resultADD[12] <= _resultADD_12_T_1 @[PE_INT8.scala 43:22]
    else :
      macs_12.io.a <= UInt<1>("h0") @[PE_INT8.scala 46:20]
      macs_12.io.b <= UInt<1>("h0") @[PE_INT8.scala 47:20]
      macs_12.io.c <= UInt<1>("h0") @[PE_INT8.scala 48:20]
      resultADD[12] <= UInt<1>("h0") @[PE_INT8.scala 49:20]
    when io.enable : @[PE_INT8.scala 30:21]
      when io.mode : @[PE_INT8.scala 31:21]
        macs_13.io.a <= io.vecA[13] @[PE_INT8.scala 32:22]
        macs_13.io.b <= io.vecB[13] @[PE_INT8.scala 33:22]
        macs_13.io.c <= macs_12.io.out @[PE_INT8.scala 34:22]
        resultADD[13] <= UInt<1>("h0") @[PE_INT8.scala 36:22]
      else :
        macs_13.io.a <= UInt<1>("h0") @[PE_INT8.scala 39:22]
        macs_13.io.b <= UInt<1>("h0") @[PE_INT8.scala 40:22]
        macs_13.io.c <= UInt<1>("h0") @[PE_INT8.scala 41:22]
        node _resultADD_13_T = add(io.vecA[13], io.vecB[13]) @[PE_INT8.scala 43:36]
        node _resultADD_13_T_1 = tail(_resultADD_13_T, 1) @[PE_INT8.scala 43:36]
        resultADD[13] <= _resultADD_13_T_1 @[PE_INT8.scala 43:22]
    else :
      macs_13.io.a <= UInt<1>("h0") @[PE_INT8.scala 46:20]
      macs_13.io.b <= UInt<1>("h0") @[PE_INT8.scala 47:20]
      macs_13.io.c <= UInt<1>("h0") @[PE_INT8.scala 48:20]
      resultADD[13] <= UInt<1>("h0") @[PE_INT8.scala 49:20]
    when io.enable : @[PE_INT8.scala 30:21]
      when io.mode : @[PE_INT8.scala 31:21]
        macs_14.io.a <= io.vecA[14] @[PE_INT8.scala 32:22]
        macs_14.io.b <= io.vecB[14] @[PE_INT8.scala 33:22]
        macs_14.io.c <= macs_13.io.out @[PE_INT8.scala 34:22]
        resultADD[14] <= UInt<1>("h0") @[PE_INT8.scala 36:22]
      else :
        macs_14.io.a <= UInt<1>("h0") @[PE_INT8.scala 39:22]
        macs_14.io.b <= UInt<1>("h0") @[PE_INT8.scala 40:22]
        macs_14.io.c <= UInt<1>("h0") @[PE_INT8.scala 41:22]
        node _resultADD_14_T = add(io.vecA[14], io.vecB[14]) @[PE_INT8.scala 43:36]
        node _resultADD_14_T_1 = tail(_resultADD_14_T, 1) @[PE_INT8.scala 43:36]
        resultADD[14] <= _resultADD_14_T_1 @[PE_INT8.scala 43:22]
    else :
      macs_14.io.a <= UInt<1>("h0") @[PE_INT8.scala 46:20]
      macs_14.io.b <= UInt<1>("h0") @[PE_INT8.scala 47:20]
      macs_14.io.c <= UInt<1>("h0") @[PE_INT8.scala 48:20]
      resultADD[14] <= UInt<1>("h0") @[PE_INT8.scala 49:20]
    when io.enable : @[PE_INT8.scala 30:21]
      when io.mode : @[PE_INT8.scala 31:21]
        macs_15.io.a <= io.vecA[15] @[PE_INT8.scala 32:22]
        macs_15.io.b <= io.vecB[15] @[PE_INT8.scala 33:22]
        macs_15.io.c <= macs_14.io.out @[PE_INT8.scala 34:22]
        resultADD[15] <= UInt<1>("h0") @[PE_INT8.scala 36:22]
      else :
        macs_15.io.a <= UInt<1>("h0") @[PE_INT8.scala 39:22]
        macs_15.io.b <= UInt<1>("h0") @[PE_INT8.scala 40:22]
        macs_15.io.c <= UInt<1>("h0") @[PE_INT8.scala 41:22]
        node _resultADD_15_T = add(io.vecA[15], io.vecB[15]) @[PE_INT8.scala 43:36]
        node _resultADD_15_T_1 = tail(_resultADD_15_T, 1) @[PE_INT8.scala 43:36]
        resultADD[15] <= _resultADD_15_T_1 @[PE_INT8.scala 43:22]
    else :
      macs_15.io.a <= UInt<1>("h0") @[PE_INT8.scala 46:20]
      macs_15.io.b <= UInt<1>("h0") @[PE_INT8.scala 47:20]
      macs_15.io.c <= UInt<1>("h0") @[PE_INT8.scala 48:20]
      resultADD[15] <= UInt<1>("h0") @[PE_INT8.scala 49:20]
    io.resultADD[0] <= resultADD[0] @[PE_INT8.scala 53:16]
    io.resultADD[1] <= resultADD[1] @[PE_INT8.scala 53:16]
    io.resultADD[2] <= resultADD[2] @[PE_INT8.scala 53:16]
    io.resultADD[3] <= resultADD[3] @[PE_INT8.scala 53:16]
    io.resultADD[4] <= resultADD[4] @[PE_INT8.scala 53:16]
    io.resultADD[5] <= resultADD[5] @[PE_INT8.scala 53:16]
    io.resultADD[6] <= resultADD[6] @[PE_INT8.scala 53:16]
    io.resultADD[7] <= resultADD[7] @[PE_INT8.scala 53:16]
    io.resultADD[8] <= resultADD[8] @[PE_INT8.scala 53:16]
    io.resultADD[9] <= resultADD[9] @[PE_INT8.scala 53:16]
    io.resultADD[10] <= resultADD[10] @[PE_INT8.scala 53:16]
    io.resultADD[11] <= resultADD[11] @[PE_INT8.scala 53:16]
    io.resultADD[12] <= resultADD[12] @[PE_INT8.scala 53:16]
    io.resultADD[13] <= resultADD[13] @[PE_INT8.scala 53:16]
    io.resultADD[14] <= resultADD[14] @[PE_INT8.scala 53:16]
    io.resultADD[15] <= resultADD[15] @[PE_INT8.scala 53:16]
    node _io_resultMAC_T = and(io.enable, io.mode) @[PE_INT8.scala 54:33]
    node _io_resultMAC_T_1 = mux(_io_resultMAC_T, macs_15.io.out, UInt<1>("h0")) @[PE_INT8.scala 54:22]
    io.resultMAC <= _io_resultMAC_T_1 @[PE_INT8.scala 54:16]

