circuit AdderTreeWithPipeline_30 :
  module AdderTreeWithPipeline :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[1], result : UInt<16>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[1], result : UInt<16>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[2], result : UInt<17>}

    inst leftTree of AdderTreeWithPipeline @[ibex_core.scala 39:26]
    leftTree.clock <= clock
    leftTree.reset <= reset
    inst rightTree of AdderTreeWithPipeline_1 @[ibex_core.scala 40:27]
    rightTree.clock <= clock
    rightTree.reset <= reset
    leftTree.io.operands[0] <= io.operands[0] @[ibex_core.scala 43:26]
    rightTree.io.operands[0] <= io.operands[1] @[ibex_core.scala 44:27]
    reg regLeft : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[1], result : UInt<16>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[1], result : UInt<16>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[2], result : UInt<17>}

    inst leftTree of AdderTreeWithPipeline_3 @[ibex_core.scala 39:26]
    leftTree.clock <= clock
    leftTree.reset <= reset
    inst rightTree of AdderTreeWithPipeline_4 @[ibex_core.scala 40:27]
    rightTree.clock <= clock
    rightTree.reset <= reset
    leftTree.io.operands[0] <= io.operands[0] @[ibex_core.scala 43:26]
    rightTree.io.operands[0] <= io.operands[1] @[ibex_core.scala 44:27]
    reg regLeft : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[4], result : UInt<18>}

    inst leftTree of AdderTreeWithPipeline_2 @[ibex_core.scala 39:26]
    leftTree.clock <= clock
    leftTree.reset <= reset
    inst rightTree of AdderTreeWithPipeline_5 @[ibex_core.scala 40:27]
    rightTree.clock <= clock
    rightTree.reset <= reset
    leftTree.io.operands[0] <= io.operands[0] @[ibex_core.scala 43:26]
    leftTree.io.operands[1] <= io.operands[1] @[ibex_core.scala 43:26]
    rightTree.io.operands[0] <= io.operands[2] @[ibex_core.scala 44:27]
    rightTree.io.operands[1] <= io.operands[3] @[ibex_core.scala 44:27]
    reg regLeft : UInt<17>, clock with :
      reset => (reset, UInt<17>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<17>, clock with :
      reset => (reset, UInt<17>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[1], result : UInt<16>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[1], result : UInt<16>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[2], result : UInt<17>}

    inst leftTree of AdderTreeWithPipeline_7 @[ibex_core.scala 39:26]
    leftTree.clock <= clock
    leftTree.reset <= reset
    inst rightTree of AdderTreeWithPipeline_8 @[ibex_core.scala 40:27]
    rightTree.clock <= clock
    rightTree.reset <= reset
    leftTree.io.operands[0] <= io.operands[0] @[ibex_core.scala 43:26]
    rightTree.io.operands[0] <= io.operands[1] @[ibex_core.scala 44:27]
    reg regLeft : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[1], result : UInt<16>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[1], result : UInt<16>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[2], result : UInt<17>}

    inst leftTree of AdderTreeWithPipeline_10 @[ibex_core.scala 39:26]
    leftTree.clock <= clock
    leftTree.reset <= reset
    inst rightTree of AdderTreeWithPipeline_11 @[ibex_core.scala 40:27]
    rightTree.clock <= clock
    rightTree.reset <= reset
    leftTree.io.operands[0] <= io.operands[0] @[ibex_core.scala 43:26]
    rightTree.io.operands[0] <= io.operands[1] @[ibex_core.scala 44:27]
    reg regLeft : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[4], result : UInt<18>}

    inst leftTree of AdderTreeWithPipeline_9 @[ibex_core.scala 39:26]
    leftTree.clock <= clock
    leftTree.reset <= reset
    inst rightTree of AdderTreeWithPipeline_12 @[ibex_core.scala 40:27]
    rightTree.clock <= clock
    rightTree.reset <= reset
    leftTree.io.operands[0] <= io.operands[0] @[ibex_core.scala 43:26]
    leftTree.io.operands[1] <= io.operands[1] @[ibex_core.scala 43:26]
    rightTree.io.operands[0] <= io.operands[2] @[ibex_core.scala 44:27]
    rightTree.io.operands[1] <= io.operands[3] @[ibex_core.scala 44:27]
    reg regLeft : UInt<17>, clock with :
      reset => (reset, UInt<17>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<17>, clock with :
      reset => (reset, UInt<17>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[8], result : UInt<19>}

    inst leftTree of AdderTreeWithPipeline_6 @[ibex_core.scala 39:26]
    leftTree.clock <= clock
    leftTree.reset <= reset
    inst rightTree of AdderTreeWithPipeline_13 @[ibex_core.scala 40:27]
    rightTree.clock <= clock
    rightTree.reset <= reset
    leftTree.io.operands[0] <= io.operands[0] @[ibex_core.scala 43:26]
    leftTree.io.operands[1] <= io.operands[1] @[ibex_core.scala 43:26]
    leftTree.io.operands[2] <= io.operands[2] @[ibex_core.scala 43:26]
    leftTree.io.operands[3] <= io.operands[3] @[ibex_core.scala 43:26]
    rightTree.io.operands[0] <= io.operands[4] @[ibex_core.scala 44:27]
    rightTree.io.operands[1] <= io.operands[5] @[ibex_core.scala 44:27]
    rightTree.io.operands[2] <= io.operands[6] @[ibex_core.scala 44:27]
    rightTree.io.operands[3] <= io.operands[7] @[ibex_core.scala 44:27]
    reg regLeft : UInt<18>, clock with :
      reset => (reset, UInt<18>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<18>, clock with :
      reset => (reset, UInt<18>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[1], result : UInt<16>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_16 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[1], result : UInt<16>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_17 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[2], result : UInt<17>}

    inst leftTree of AdderTreeWithPipeline_15 @[ibex_core.scala 39:26]
    leftTree.clock <= clock
    leftTree.reset <= reset
    inst rightTree of AdderTreeWithPipeline_16 @[ibex_core.scala 40:27]
    rightTree.clock <= clock
    rightTree.reset <= reset
    leftTree.io.operands[0] <= io.operands[0] @[ibex_core.scala 43:26]
    rightTree.io.operands[0] <= io.operands[1] @[ibex_core.scala 44:27]
    reg regLeft : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_18 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[1], result : UInt<16>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_19 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[1], result : UInt<16>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_20 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[2], result : UInt<17>}

    inst leftTree of AdderTreeWithPipeline_18 @[ibex_core.scala 39:26]
    leftTree.clock <= clock
    leftTree.reset <= reset
    inst rightTree of AdderTreeWithPipeline_19 @[ibex_core.scala 40:27]
    rightTree.clock <= clock
    rightTree.reset <= reset
    leftTree.io.operands[0] <= io.operands[0] @[ibex_core.scala 43:26]
    rightTree.io.operands[0] <= io.operands[1] @[ibex_core.scala 44:27]
    reg regLeft : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_21 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[4], result : UInt<18>}

    inst leftTree of AdderTreeWithPipeline_17 @[ibex_core.scala 39:26]
    leftTree.clock <= clock
    leftTree.reset <= reset
    inst rightTree of AdderTreeWithPipeline_20 @[ibex_core.scala 40:27]
    rightTree.clock <= clock
    rightTree.reset <= reset
    leftTree.io.operands[0] <= io.operands[0] @[ibex_core.scala 43:26]
    leftTree.io.operands[1] <= io.operands[1] @[ibex_core.scala 43:26]
    rightTree.io.operands[0] <= io.operands[2] @[ibex_core.scala 44:27]
    rightTree.io.operands[1] <= io.operands[3] @[ibex_core.scala 44:27]
    reg regLeft : UInt<17>, clock with :
      reset => (reset, UInt<17>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<17>, clock with :
      reset => (reset, UInt<17>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_22 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[1], result : UInt<16>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_23 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[1], result : UInt<16>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_24 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[2], result : UInt<17>}

    inst leftTree of AdderTreeWithPipeline_22 @[ibex_core.scala 39:26]
    leftTree.clock <= clock
    leftTree.reset <= reset
    inst rightTree of AdderTreeWithPipeline_23 @[ibex_core.scala 40:27]
    rightTree.clock <= clock
    rightTree.reset <= reset
    leftTree.io.operands[0] <= io.operands[0] @[ibex_core.scala 43:26]
    rightTree.io.operands[0] <= io.operands[1] @[ibex_core.scala 44:27]
    reg regLeft : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_25 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[1], result : UInt<16>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_26 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[1], result : UInt<16>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_27 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[2], result : UInt<17>}

    inst leftTree of AdderTreeWithPipeline_25 @[ibex_core.scala 39:26]
    leftTree.clock <= clock
    leftTree.reset <= reset
    inst rightTree of AdderTreeWithPipeline_26 @[ibex_core.scala 40:27]
    rightTree.clock <= clock
    rightTree.reset <= reset
    leftTree.io.operands[0] <= io.operands[0] @[ibex_core.scala 43:26]
    rightTree.io.operands[0] <= io.operands[1] @[ibex_core.scala 44:27]
    reg regLeft : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_28 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[4], result : UInt<18>}

    inst leftTree of AdderTreeWithPipeline_24 @[ibex_core.scala 39:26]
    leftTree.clock <= clock
    leftTree.reset <= reset
    inst rightTree of AdderTreeWithPipeline_27 @[ibex_core.scala 40:27]
    rightTree.clock <= clock
    rightTree.reset <= reset
    leftTree.io.operands[0] <= io.operands[0] @[ibex_core.scala 43:26]
    leftTree.io.operands[1] <= io.operands[1] @[ibex_core.scala 43:26]
    rightTree.io.operands[0] <= io.operands[2] @[ibex_core.scala 44:27]
    rightTree.io.operands[1] <= io.operands[3] @[ibex_core.scala 44:27]
    reg regLeft : UInt<17>, clock with :
      reset => (reset, UInt<17>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<17>, clock with :
      reset => (reset, UInt<17>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_29 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<16>[8], result : UInt<19>}

    inst leftTree of AdderTreeWithPipeline_21 @[ibex_core.scala 39:26]
    leftTree.clock <= clock
    leftTree.reset <= reset
    inst rightTree of AdderTreeWithPipeline_28 @[ibex_core.scala 40:27]
    rightTree.clock <= clock
    rightTree.reset <= reset
    leftTree.io.operands[0] <= io.operands[0] @[ibex_core.scala 43:26]
    leftTree.io.operands[1] <= io.operands[1] @[ibex_core.scala 43:26]
    leftTree.io.operands[2] <= io.operands[2] @[ibex_core.scala 43:26]
    leftTree.io.operands[3] <= io.operands[3] @[ibex_core.scala 43:26]
    rightTree.io.operands[0] <= io.operands[4] @[ibex_core.scala 44:27]
    rightTree.io.operands[1] <= io.operands[5] @[ibex_core.scala 44:27]
    rightTree.io.operands[2] <= io.operands[6] @[ibex_core.scala 44:27]
    rightTree.io.operands[3] <= io.operands[7] @[ibex_core.scala 44:27]
    reg regLeft : UInt<18>, clock with :
      reset => (reset, UInt<18>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<18>, clock with :
      reset => (reset, UInt<18>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_30 :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip operands : UInt<16>[16], result : UInt<20>}

    inst leftTree of AdderTreeWithPipeline_14 @[ibex_core.scala 39:26]
    leftTree.clock <= clock
    leftTree.reset <= reset
    inst rightTree of AdderTreeWithPipeline_29 @[ibex_core.scala 40:27]
    rightTree.clock <= clock
    rightTree.reset <= reset
    leftTree.io.operands[0] <= io.operands[0] @[ibex_core.scala 43:26]
    leftTree.io.operands[1] <= io.operands[1] @[ibex_core.scala 43:26]
    leftTree.io.operands[2] <= io.operands[2] @[ibex_core.scala 43:26]
    leftTree.io.operands[3] <= io.operands[3] @[ibex_core.scala 43:26]
    leftTree.io.operands[4] <= io.operands[4] @[ibex_core.scala 43:26]
    leftTree.io.operands[5] <= io.operands[5] @[ibex_core.scala 43:26]
    leftTree.io.operands[6] <= io.operands[6] @[ibex_core.scala 43:26]
    leftTree.io.operands[7] <= io.operands[7] @[ibex_core.scala 43:26]
    rightTree.io.operands[0] <= io.operands[8] @[ibex_core.scala 44:27]
    rightTree.io.operands[1] <= io.operands[9] @[ibex_core.scala 44:27]
    rightTree.io.operands[2] <= io.operands[10] @[ibex_core.scala 44:27]
    rightTree.io.operands[3] <= io.operands[11] @[ibex_core.scala 44:27]
    rightTree.io.operands[4] <= io.operands[12] @[ibex_core.scala 44:27]
    rightTree.io.operands[5] <= io.operands[13] @[ibex_core.scala 44:27]
    rightTree.io.operands[6] <= io.operands[14] @[ibex_core.scala 44:27]
    rightTree.io.operands[7] <= io.operands[15] @[ibex_core.scala 44:27]
    reg regLeft : UInt<19>, clock with :
      reset => (reset, UInt<19>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<19>, clock with :
      reset => (reset, UInt<19>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

