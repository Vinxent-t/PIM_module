circuit ibex_core :
  module MAC :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[ibex_core.scala 12:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[ibex_core.scala 12:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[ibex_core.scala 12:27]
    io.out <= _io_out_T_2 @[ibex_core.scala 12:10]

  module MAC_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[ibex_core.scala 12:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[ibex_core.scala 12:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[ibex_core.scala 12:27]
    io.out <= _io_out_T_2 @[ibex_core.scala 12:10]

  module MAC_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[ibex_core.scala 12:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[ibex_core.scala 12:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[ibex_core.scala 12:27]
    io.out <= _io_out_T_2 @[ibex_core.scala 12:10]

  module MAC_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[ibex_core.scala 12:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[ibex_core.scala 12:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[ibex_core.scala 12:27]
    io.out <= _io_out_T_2 @[ibex_core.scala 12:10]

  module MAC_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[ibex_core.scala 12:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[ibex_core.scala 12:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[ibex_core.scala 12:27]
    io.out <= _io_out_T_2 @[ibex_core.scala 12:10]

  module MAC_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[ibex_core.scala 12:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[ibex_core.scala 12:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[ibex_core.scala 12:27]
    io.out <= _io_out_T_2 @[ibex_core.scala 12:10]

  module MAC_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[ibex_core.scala 12:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[ibex_core.scala 12:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[ibex_core.scala 12:27]
    io.out <= _io_out_T_2 @[ibex_core.scala 12:10]

  module MAC_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[ibex_core.scala 12:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[ibex_core.scala 12:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[ibex_core.scala 12:27]
    io.out <= _io_out_T_2 @[ibex_core.scala 12:10]

  module MAC_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[ibex_core.scala 12:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[ibex_core.scala 12:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[ibex_core.scala 12:27]
    io.out <= _io_out_T_2 @[ibex_core.scala 12:10]

  module MAC_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[ibex_core.scala 12:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[ibex_core.scala 12:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[ibex_core.scala 12:27]
    io.out <= _io_out_T_2 @[ibex_core.scala 12:10]

  module MAC_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[ibex_core.scala 12:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[ibex_core.scala 12:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[ibex_core.scala 12:27]
    io.out <= _io_out_T_2 @[ibex_core.scala 12:10]

  module MAC_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[ibex_core.scala 12:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[ibex_core.scala 12:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[ibex_core.scala 12:27]
    io.out <= _io_out_T_2 @[ibex_core.scala 12:10]

  module MAC_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[ibex_core.scala 12:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[ibex_core.scala 12:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[ibex_core.scala 12:27]
    io.out <= _io_out_T_2 @[ibex_core.scala 12:10]

  module MAC_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[ibex_core.scala 12:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[ibex_core.scala 12:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[ibex_core.scala 12:27]
    io.out <= _io_out_T_2 @[ibex_core.scala 12:10]

  module MAC_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[ibex_core.scala 12:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[ibex_core.scala 12:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[ibex_core.scala 12:27]
    io.out <= _io_out_T_2 @[ibex_core.scala 12:10]

  module MAC_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, flip c : UInt<4>, out : UInt<4>}

    node _io_out_T = mul(io.a, io.b) @[ibex_core.scala 12:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[ibex_core.scala 12:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[ibex_core.scala 12:27]
    io.out <= _io_out_T_2 @[ibex_core.scala 12:10]

  module ADD :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<4>}

    node _io_out_T = add(io.a, io.b) @[ibex_core.scala 21:19]
    node _io_out_T_1 = tail(_io_out_T, 1) @[ibex_core.scala 21:19]
    io.out <= _io_out_T_1 @[ibex_core.scala 21:10]

  module ADD_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<4>}

    node _io_out_T = add(io.a, io.b) @[ibex_core.scala 21:19]
    node _io_out_T_1 = tail(_io_out_T, 1) @[ibex_core.scala 21:19]
    io.out <= _io_out_T_1 @[ibex_core.scala 21:10]

  module ADD_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<4>}

    node _io_out_T = add(io.a, io.b) @[ibex_core.scala 21:19]
    node _io_out_T_1 = tail(_io_out_T, 1) @[ibex_core.scala 21:19]
    io.out <= _io_out_T_1 @[ibex_core.scala 21:10]

  module ADD_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<4>}

    node _io_out_T = add(io.a, io.b) @[ibex_core.scala 21:19]
    node _io_out_T_1 = tail(_io_out_T, 1) @[ibex_core.scala 21:19]
    io.out <= _io_out_T_1 @[ibex_core.scala 21:10]

  module ADD_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<4>}

    node _io_out_T = add(io.a, io.b) @[ibex_core.scala 21:19]
    node _io_out_T_1 = tail(_io_out_T, 1) @[ibex_core.scala 21:19]
    io.out <= _io_out_T_1 @[ibex_core.scala 21:10]

  module ADD_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<4>}

    node _io_out_T = add(io.a, io.b) @[ibex_core.scala 21:19]
    node _io_out_T_1 = tail(_io_out_T, 1) @[ibex_core.scala 21:19]
    io.out <= _io_out_T_1 @[ibex_core.scala 21:10]

  module ADD_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<4>}

    node _io_out_T = add(io.a, io.b) @[ibex_core.scala 21:19]
    node _io_out_T_1 = tail(_io_out_T, 1) @[ibex_core.scala 21:19]
    io.out <= _io_out_T_1 @[ibex_core.scala 21:10]

  module ADD_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<4>}

    node _io_out_T = add(io.a, io.b) @[ibex_core.scala 21:19]
    node _io_out_T_1 = tail(_io_out_T, 1) @[ibex_core.scala 21:19]
    io.out <= _io_out_T_1 @[ibex_core.scala 21:10]

  module ADD_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<4>}

    node _io_out_T = add(io.a, io.b) @[ibex_core.scala 21:19]
    node _io_out_T_1 = tail(_io_out_T, 1) @[ibex_core.scala 21:19]
    io.out <= _io_out_T_1 @[ibex_core.scala 21:10]

  module ADD_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<4>}

    node _io_out_T = add(io.a, io.b) @[ibex_core.scala 21:19]
    node _io_out_T_1 = tail(_io_out_T, 1) @[ibex_core.scala 21:19]
    io.out <= _io_out_T_1 @[ibex_core.scala 21:10]

  module ADD_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<4>}

    node _io_out_T = add(io.a, io.b) @[ibex_core.scala 21:19]
    node _io_out_T_1 = tail(_io_out_T, 1) @[ibex_core.scala 21:19]
    io.out <= _io_out_T_1 @[ibex_core.scala 21:10]

  module ADD_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<4>}

    node _io_out_T = add(io.a, io.b) @[ibex_core.scala 21:19]
    node _io_out_T_1 = tail(_io_out_T, 1) @[ibex_core.scala 21:19]
    io.out <= _io_out_T_1 @[ibex_core.scala 21:10]

  module ADD_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<4>}

    node _io_out_T = add(io.a, io.b) @[ibex_core.scala 21:19]
    node _io_out_T_1 = tail(_io_out_T, 1) @[ibex_core.scala 21:19]
    io.out <= _io_out_T_1 @[ibex_core.scala 21:10]

  module ADD_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<4>}

    node _io_out_T = add(io.a, io.b) @[ibex_core.scala 21:19]
    node _io_out_T_1 = tail(_io_out_T, 1) @[ibex_core.scala 21:19]
    io.out <= _io_out_T_1 @[ibex_core.scala 21:10]

  module ADD_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<4>}

    node _io_out_T = add(io.a, io.b) @[ibex_core.scala 21:19]
    node _io_out_T_1 = tail(_io_out_T, 1) @[ibex_core.scala 21:19]
    io.out <= _io_out_T_1 @[ibex_core.scala 21:10]

  module ADD_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip a : UInt<4>, flip b : UInt<4>, out : UInt<4>}

    node _io_out_T = add(io.a, io.b) @[ibex_core.scala 21:19]
    node _io_out_T_1 = tail(_io_out_T, 1) @[ibex_core.scala 21:19]
    io.out <= _io_out_T_1 @[ibex_core.scala 21:10]

  module AdderTreeWithPipeline :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[1], result : UInt<4>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[1], result : UInt<4>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[2], result : UInt<5>}

    inst leftTree of AdderTreeWithPipeline @[ibex_core.scala 39:26]
    leftTree.clock <= clock
    leftTree.reset <= reset
    inst rightTree of AdderTreeWithPipeline_1 @[ibex_core.scala 40:27]
    rightTree.clock <= clock
    rightTree.reset <= reset
    leftTree.io.operands[0] <= io.operands[0] @[ibex_core.scala 43:26]
    rightTree.io.operands[0] <= io.operands[1] @[ibex_core.scala 44:27]
    reg regLeft : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[1], result : UInt<4>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[1], result : UInt<4>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[2], result : UInt<5>}

    inst leftTree of AdderTreeWithPipeline_3 @[ibex_core.scala 39:26]
    leftTree.clock <= clock
    leftTree.reset <= reset
    inst rightTree of AdderTreeWithPipeline_4 @[ibex_core.scala 40:27]
    rightTree.clock <= clock
    rightTree.reset <= reset
    leftTree.io.operands[0] <= io.operands[0] @[ibex_core.scala 43:26]
    rightTree.io.operands[0] <= io.operands[1] @[ibex_core.scala 44:27]
    reg regLeft : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[4], result : UInt<6>}

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
    reg regLeft : UInt<5>, clock with :
      reset => (reset, UInt<5>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<5>, clock with :
      reset => (reset, UInt<5>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[1], result : UInt<4>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[1], result : UInt<4>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[2], result : UInt<5>}

    inst leftTree of AdderTreeWithPipeline_7 @[ibex_core.scala 39:26]
    leftTree.clock <= clock
    leftTree.reset <= reset
    inst rightTree of AdderTreeWithPipeline_8 @[ibex_core.scala 40:27]
    rightTree.clock <= clock
    rightTree.reset <= reset
    leftTree.io.operands[0] <= io.operands[0] @[ibex_core.scala 43:26]
    rightTree.io.operands[0] <= io.operands[1] @[ibex_core.scala 44:27]
    reg regLeft : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[1], result : UInt<4>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[1], result : UInt<4>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[2], result : UInt<5>}

    inst leftTree of AdderTreeWithPipeline_10 @[ibex_core.scala 39:26]
    leftTree.clock <= clock
    leftTree.reset <= reset
    inst rightTree of AdderTreeWithPipeline_11 @[ibex_core.scala 40:27]
    rightTree.clock <= clock
    rightTree.reset <= reset
    leftTree.io.operands[0] <= io.operands[0] @[ibex_core.scala 43:26]
    rightTree.io.operands[0] <= io.operands[1] @[ibex_core.scala 44:27]
    reg regLeft : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[4], result : UInt<6>}

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
    reg regLeft : UInt<5>, clock with :
      reset => (reset, UInt<5>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<5>, clock with :
      reset => (reset, UInt<5>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[8], result : UInt<7>}

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
    reg regLeft : UInt<6>, clock with :
      reset => (reset, UInt<6>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<6>, clock with :
      reset => (reset, UInt<6>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[1], result : UInt<4>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_16 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[1], result : UInt<4>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_17 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[2], result : UInt<5>}

    inst leftTree of AdderTreeWithPipeline_15 @[ibex_core.scala 39:26]
    leftTree.clock <= clock
    leftTree.reset <= reset
    inst rightTree of AdderTreeWithPipeline_16 @[ibex_core.scala 40:27]
    rightTree.clock <= clock
    rightTree.reset <= reset
    leftTree.io.operands[0] <= io.operands[0] @[ibex_core.scala 43:26]
    rightTree.io.operands[0] <= io.operands[1] @[ibex_core.scala 44:27]
    reg regLeft : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_18 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[1], result : UInt<4>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_19 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[1], result : UInt<4>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_20 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[2], result : UInt<5>}

    inst leftTree of AdderTreeWithPipeline_18 @[ibex_core.scala 39:26]
    leftTree.clock <= clock
    leftTree.reset <= reset
    inst rightTree of AdderTreeWithPipeline_19 @[ibex_core.scala 40:27]
    rightTree.clock <= clock
    rightTree.reset <= reset
    leftTree.io.operands[0] <= io.operands[0] @[ibex_core.scala 43:26]
    rightTree.io.operands[0] <= io.operands[1] @[ibex_core.scala 44:27]
    reg regLeft : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_21 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[4], result : UInt<6>}

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
    reg regLeft : UInt<5>, clock with :
      reset => (reset, UInt<5>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<5>, clock with :
      reset => (reset, UInt<5>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_22 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[1], result : UInt<4>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_23 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[1], result : UInt<4>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_24 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[2], result : UInt<5>}

    inst leftTree of AdderTreeWithPipeline_22 @[ibex_core.scala 39:26]
    leftTree.clock <= clock
    leftTree.reset <= reset
    inst rightTree of AdderTreeWithPipeline_23 @[ibex_core.scala 40:27]
    rightTree.clock <= clock
    rightTree.reset <= reset
    leftTree.io.operands[0] <= io.operands[0] @[ibex_core.scala 43:26]
    rightTree.io.operands[0] <= io.operands[1] @[ibex_core.scala 44:27]
    reg regLeft : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_25 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[1], result : UInt<4>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_26 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[1], result : UInt<4>}

    io.result <= io.operands[0] @[ibex_core.scala 34:15]

  module AdderTreeWithPipeline_27 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[2], result : UInt<5>}

    inst leftTree of AdderTreeWithPipeline_25 @[ibex_core.scala 39:26]
    leftTree.clock <= clock
    leftTree.reset <= reset
    inst rightTree of AdderTreeWithPipeline_26 @[ibex_core.scala 40:27]
    rightTree.clock <= clock
    rightTree.reset <= reset
    leftTree.io.operands[0] <= io.operands[0] @[ibex_core.scala 43:26]
    rightTree.io.operands[0] <= io.operands[1] @[ibex_core.scala 44:27]
    reg regLeft : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_28 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[4], result : UInt<6>}

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
    reg regLeft : UInt<5>, clock with :
      reset => (reset, UInt<5>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<5>, clock with :
      reset => (reset, UInt<5>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_29 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[8], result : UInt<7>}

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
    reg regLeft : UInt<6>, clock with :
      reset => (reset, UInt<6>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<6>, clock with :
      reset => (reset, UInt<6>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module AdderTreeWithPipeline_30 :
    input clock : Clock
    input reset : Reset
    output io : { flip operands : UInt<4>[16], result : UInt<8>}

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
    reg regLeft : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[ibex_core.scala 47:26]
    reg regRight : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[ibex_core.scala 48:27]
    regLeft <= leftTree.io.result @[ibex_core.scala 52:15]
    regRight <= rightTree.io.result @[ibex_core.scala 53:16]
    node _io_result_T = add(regLeft, regRight) @[ibex_core.scala 60:26]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ibex_core.scala 60:26]
    io.result <= _io_result_T_1 @[ibex_core.scala 60:15]

  module ibex_core :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip vecA : UInt<4>[16], flip vecB : UInt<4>[16], flip mode : UInt<1>, resultMAC : UInt<4>, resultADD : UInt<4>[16]}

    inst macs_0 of MAC @[ibex_core.scala 75:33]
    macs_0.clock <= clock
    macs_0.reset <= reset
    inst macs_1 of MAC_1 @[ibex_core.scala 75:33]
    macs_1.clock <= clock
    macs_1.reset <= reset
    inst macs_2 of MAC_2 @[ibex_core.scala 75:33]
    macs_2.clock <= clock
    macs_2.reset <= reset
    inst macs_3 of MAC_3 @[ibex_core.scala 75:33]
    macs_3.clock <= clock
    macs_3.reset <= reset
    inst macs_4 of MAC_4 @[ibex_core.scala 75:33]
    macs_4.clock <= clock
    macs_4.reset <= reset
    inst macs_5 of MAC_5 @[ibex_core.scala 75:33]
    macs_5.clock <= clock
    macs_5.reset <= reset
    inst macs_6 of MAC_6 @[ibex_core.scala 75:33]
    macs_6.clock <= clock
    macs_6.reset <= reset
    inst macs_7 of MAC_7 @[ibex_core.scala 75:33]
    macs_7.clock <= clock
    macs_7.reset <= reset
    inst macs_8 of MAC_8 @[ibex_core.scala 75:33]
    macs_8.clock <= clock
    macs_8.reset <= reset
    inst macs_9 of MAC_9 @[ibex_core.scala 75:33]
    macs_9.clock <= clock
    macs_9.reset <= reset
    inst macs_10 of MAC_10 @[ibex_core.scala 75:33]
    macs_10.clock <= clock
    macs_10.reset <= reset
    inst macs_11 of MAC_11 @[ibex_core.scala 75:33]
    macs_11.clock <= clock
    macs_11.reset <= reset
    inst macs_12 of MAC_12 @[ibex_core.scala 75:33]
    macs_12.clock <= clock
    macs_12.reset <= reset
    inst macs_13 of MAC_13 @[ibex_core.scala 75:33]
    macs_13.clock <= clock
    macs_13.reset <= reset
    inst macs_14 of MAC_14 @[ibex_core.scala 75:33]
    macs_14.clock <= clock
    macs_14.reset <= reset
    inst macs_15 of MAC_15 @[ibex_core.scala 75:33]
    macs_15.clock <= clock
    macs_15.reset <= reset
    inst adds_0 of ADD @[ibex_core.scala 76:33]
    adds_0.clock <= clock
    adds_0.reset <= reset
    inst adds_1 of ADD_1 @[ibex_core.scala 76:33]
    adds_1.clock <= clock
    adds_1.reset <= reset
    inst adds_2 of ADD_2 @[ibex_core.scala 76:33]
    adds_2.clock <= clock
    adds_2.reset <= reset
    inst adds_3 of ADD_3 @[ibex_core.scala 76:33]
    adds_3.clock <= clock
    adds_3.reset <= reset
    inst adds_4 of ADD_4 @[ibex_core.scala 76:33]
    adds_4.clock <= clock
    adds_4.reset <= reset
    inst adds_5 of ADD_5 @[ibex_core.scala 76:33]
    adds_5.clock <= clock
    adds_5.reset <= reset
    inst adds_6 of ADD_6 @[ibex_core.scala 76:33]
    adds_6.clock <= clock
    adds_6.reset <= reset
    inst adds_7 of ADD_7 @[ibex_core.scala 76:33]
    adds_7.clock <= clock
    adds_7.reset <= reset
    inst adds_8 of ADD_8 @[ibex_core.scala 76:33]
    adds_8.clock <= clock
    adds_8.reset <= reset
    inst adds_9 of ADD_9 @[ibex_core.scala 76:33]
    adds_9.clock <= clock
    adds_9.reset <= reset
    inst adds_10 of ADD_10 @[ibex_core.scala 76:33]
    adds_10.clock <= clock
    adds_10.reset <= reset
    inst adds_11 of ADD_11 @[ibex_core.scala 76:33]
    adds_11.clock <= clock
    adds_11.reset <= reset
    inst adds_12 of ADD_12 @[ibex_core.scala 76:33]
    adds_12.clock <= clock
    adds_12.reset <= reset
    inst adds_13 of ADD_13 @[ibex_core.scala 76:33]
    adds_13.clock <= clock
    adds_13.reset <= reset
    inst adds_14 of ADD_14 @[ibex_core.scala 76:33]
    adds_14.clock <= clock
    adds_14.reset <= reset
    inst adds_15 of ADD_15 @[ibex_core.scala 76:33]
    adds_15.clock <= clock
    adds_15.reset <= reset
    reg macResults : UInt<4>[16], clock with :
      reset => (UInt<1>("h0"), macResults) @[ibex_core.scala 80:23]
    reg addResults : UInt<4>[16], clock with :
      reset => (UInt<1>("h0"), addResults) @[ibex_core.scala 81:23]
    macs_0.io.a <= io.vecA[0] @[ibex_core.scala 84:18]
    macs_0.io.b <= io.vecB[0] @[ibex_core.scala 85:18]
    macs_0.io.c <= UInt<1>("h0") @[ibex_core.scala 86:18]
    adds_0.io.a <= io.vecA[0] @[ibex_core.scala 87:18]
    adds_0.io.b <= io.vecB[0] @[ibex_core.scala 88:18]
    macs_1.io.a <= io.vecA[1] @[ibex_core.scala 84:18]
    macs_1.io.b <= io.vecB[1] @[ibex_core.scala 85:18]
    macs_1.io.c <= UInt<1>("h0") @[ibex_core.scala 86:18]
    adds_1.io.a <= io.vecA[1] @[ibex_core.scala 87:18]
    adds_1.io.b <= io.vecB[1] @[ibex_core.scala 88:18]
    macs_2.io.a <= io.vecA[2] @[ibex_core.scala 84:18]
    macs_2.io.b <= io.vecB[2] @[ibex_core.scala 85:18]
    macs_2.io.c <= UInt<1>("h0") @[ibex_core.scala 86:18]
    adds_2.io.a <= io.vecA[2] @[ibex_core.scala 87:18]
    adds_2.io.b <= io.vecB[2] @[ibex_core.scala 88:18]
    macs_3.io.a <= io.vecA[3] @[ibex_core.scala 84:18]
    macs_3.io.b <= io.vecB[3] @[ibex_core.scala 85:18]
    macs_3.io.c <= UInt<1>("h0") @[ibex_core.scala 86:18]
    adds_3.io.a <= io.vecA[3] @[ibex_core.scala 87:18]
    adds_3.io.b <= io.vecB[3] @[ibex_core.scala 88:18]
    macs_4.io.a <= io.vecA[4] @[ibex_core.scala 84:18]
    macs_4.io.b <= io.vecB[4] @[ibex_core.scala 85:18]
    macs_4.io.c <= UInt<1>("h0") @[ibex_core.scala 86:18]
    adds_4.io.a <= io.vecA[4] @[ibex_core.scala 87:18]
    adds_4.io.b <= io.vecB[4] @[ibex_core.scala 88:18]
    macs_5.io.a <= io.vecA[5] @[ibex_core.scala 84:18]
    macs_5.io.b <= io.vecB[5] @[ibex_core.scala 85:18]
    macs_5.io.c <= UInt<1>("h0") @[ibex_core.scala 86:18]
    adds_5.io.a <= io.vecA[5] @[ibex_core.scala 87:18]
    adds_5.io.b <= io.vecB[5] @[ibex_core.scala 88:18]
    macs_6.io.a <= io.vecA[6] @[ibex_core.scala 84:18]
    macs_6.io.b <= io.vecB[6] @[ibex_core.scala 85:18]
    macs_6.io.c <= UInt<1>("h0") @[ibex_core.scala 86:18]
    adds_6.io.a <= io.vecA[6] @[ibex_core.scala 87:18]
    adds_6.io.b <= io.vecB[6] @[ibex_core.scala 88:18]
    macs_7.io.a <= io.vecA[7] @[ibex_core.scala 84:18]
    macs_7.io.b <= io.vecB[7] @[ibex_core.scala 85:18]
    macs_7.io.c <= UInt<1>("h0") @[ibex_core.scala 86:18]
    adds_7.io.a <= io.vecA[7] @[ibex_core.scala 87:18]
    adds_7.io.b <= io.vecB[7] @[ibex_core.scala 88:18]
    macs_8.io.a <= io.vecA[8] @[ibex_core.scala 84:18]
    macs_8.io.b <= io.vecB[8] @[ibex_core.scala 85:18]
    macs_8.io.c <= UInt<1>("h0") @[ibex_core.scala 86:18]
    adds_8.io.a <= io.vecA[8] @[ibex_core.scala 87:18]
    adds_8.io.b <= io.vecB[8] @[ibex_core.scala 88:18]
    macs_9.io.a <= io.vecA[9] @[ibex_core.scala 84:18]
    macs_9.io.b <= io.vecB[9] @[ibex_core.scala 85:18]
    macs_9.io.c <= UInt<1>("h0") @[ibex_core.scala 86:18]
    adds_9.io.a <= io.vecA[9] @[ibex_core.scala 87:18]
    adds_9.io.b <= io.vecB[9] @[ibex_core.scala 88:18]
    macs_10.io.a <= io.vecA[10] @[ibex_core.scala 84:18]
    macs_10.io.b <= io.vecB[10] @[ibex_core.scala 85:18]
    macs_10.io.c <= UInt<1>("h0") @[ibex_core.scala 86:18]
    adds_10.io.a <= io.vecA[10] @[ibex_core.scala 87:18]
    adds_10.io.b <= io.vecB[10] @[ibex_core.scala 88:18]
    macs_11.io.a <= io.vecA[11] @[ibex_core.scala 84:18]
    macs_11.io.b <= io.vecB[11] @[ibex_core.scala 85:18]
    macs_11.io.c <= UInt<1>("h0") @[ibex_core.scala 86:18]
    adds_11.io.a <= io.vecA[11] @[ibex_core.scala 87:18]
    adds_11.io.b <= io.vecB[11] @[ibex_core.scala 88:18]
    macs_12.io.a <= io.vecA[12] @[ibex_core.scala 84:18]
    macs_12.io.b <= io.vecB[12] @[ibex_core.scala 85:18]
    macs_12.io.c <= UInt<1>("h0") @[ibex_core.scala 86:18]
    adds_12.io.a <= io.vecA[12] @[ibex_core.scala 87:18]
    adds_12.io.b <= io.vecB[12] @[ibex_core.scala 88:18]
    macs_13.io.a <= io.vecA[13] @[ibex_core.scala 84:18]
    macs_13.io.b <= io.vecB[13] @[ibex_core.scala 85:18]
    macs_13.io.c <= UInt<1>("h0") @[ibex_core.scala 86:18]
    adds_13.io.a <= io.vecA[13] @[ibex_core.scala 87:18]
    adds_13.io.b <= io.vecB[13] @[ibex_core.scala 88:18]
    macs_14.io.a <= io.vecA[14] @[ibex_core.scala 84:18]
    macs_14.io.b <= io.vecB[14] @[ibex_core.scala 85:18]
    macs_14.io.c <= UInt<1>("h0") @[ibex_core.scala 86:18]
    adds_14.io.a <= io.vecA[14] @[ibex_core.scala 87:18]
    adds_14.io.b <= io.vecB[14] @[ibex_core.scala 88:18]
    macs_15.io.a <= io.vecA[15] @[ibex_core.scala 84:18]
    macs_15.io.b <= io.vecB[15] @[ibex_core.scala 85:18]
    macs_15.io.c <= UInt<1>("h0") @[ibex_core.scala 86:18]
    adds_15.io.a <= io.vecA[15] @[ibex_core.scala 87:18]
    adds_15.io.b <= io.vecB[15] @[ibex_core.scala 88:18]
    node _T = eq(io.mode, UInt<1>("h0")) @[ibex_core.scala 91:16]
    when _T : @[ibex_core.scala 91:24]
      macResults[0] <= macs_0.io.out @[ibex_core.scala 93:21]
      addResults[0] <= UInt<1>("h0") @[ibex_core.scala 94:21]
      macResults[1] <= macs_1.io.out @[ibex_core.scala 93:21]
      addResults[1] <= UInt<1>("h0") @[ibex_core.scala 94:21]
      macResults[2] <= macs_2.io.out @[ibex_core.scala 93:21]
      addResults[2] <= UInt<1>("h0") @[ibex_core.scala 94:21]
      macResults[3] <= macs_3.io.out @[ibex_core.scala 93:21]
      addResults[3] <= UInt<1>("h0") @[ibex_core.scala 94:21]
      macResults[4] <= macs_4.io.out @[ibex_core.scala 93:21]
      addResults[4] <= UInt<1>("h0") @[ibex_core.scala 94:21]
      macResults[5] <= macs_5.io.out @[ibex_core.scala 93:21]
      addResults[5] <= UInt<1>("h0") @[ibex_core.scala 94:21]
      macResults[6] <= macs_6.io.out @[ibex_core.scala 93:21]
      addResults[6] <= UInt<1>("h0") @[ibex_core.scala 94:21]
      macResults[7] <= macs_7.io.out @[ibex_core.scala 93:21]
      addResults[7] <= UInt<1>("h0") @[ibex_core.scala 94:21]
      macResults[8] <= macs_8.io.out @[ibex_core.scala 93:21]
      addResults[8] <= UInt<1>("h0") @[ibex_core.scala 94:21]
      macResults[9] <= macs_9.io.out @[ibex_core.scala 93:21]
      addResults[9] <= UInt<1>("h0") @[ibex_core.scala 94:21]
      macResults[10] <= macs_10.io.out @[ibex_core.scala 93:21]
      addResults[10] <= UInt<1>("h0") @[ibex_core.scala 94:21]
      macResults[11] <= macs_11.io.out @[ibex_core.scala 93:21]
      addResults[11] <= UInt<1>("h0") @[ibex_core.scala 94:21]
      macResults[12] <= macs_12.io.out @[ibex_core.scala 93:21]
      addResults[12] <= UInt<1>("h0") @[ibex_core.scala 94:21]
      macResults[13] <= macs_13.io.out @[ibex_core.scala 93:21]
      addResults[13] <= UInt<1>("h0") @[ibex_core.scala 94:21]
      macResults[14] <= macs_14.io.out @[ibex_core.scala 93:21]
      addResults[14] <= UInt<1>("h0") @[ibex_core.scala 94:21]
      macResults[15] <= macs_15.io.out @[ibex_core.scala 93:21]
      addResults[15] <= UInt<1>("h0") @[ibex_core.scala 94:21]
    else :
      macResults[0] <= UInt<1>("h0") @[ibex_core.scala 99:21]
      addResults[0] <= adds_0.io.out @[ibex_core.scala 100:21]
      macResults[1] <= UInt<1>("h0") @[ibex_core.scala 99:21]
      addResults[1] <= adds_1.io.out @[ibex_core.scala 100:21]
      macResults[2] <= UInt<1>("h0") @[ibex_core.scala 99:21]
      addResults[2] <= adds_2.io.out @[ibex_core.scala 100:21]
      macResults[3] <= UInt<1>("h0") @[ibex_core.scala 99:21]
      addResults[3] <= adds_3.io.out @[ibex_core.scala 100:21]
      macResults[4] <= UInt<1>("h0") @[ibex_core.scala 99:21]
      addResults[4] <= adds_4.io.out @[ibex_core.scala 100:21]
      macResults[5] <= UInt<1>("h0") @[ibex_core.scala 99:21]
      addResults[5] <= adds_5.io.out @[ibex_core.scala 100:21]
      macResults[6] <= UInt<1>("h0") @[ibex_core.scala 99:21]
      addResults[6] <= adds_6.io.out @[ibex_core.scala 100:21]
      macResults[7] <= UInt<1>("h0") @[ibex_core.scala 99:21]
      addResults[7] <= adds_7.io.out @[ibex_core.scala 100:21]
      macResults[8] <= UInt<1>("h0") @[ibex_core.scala 99:21]
      addResults[8] <= adds_8.io.out @[ibex_core.scala 100:21]
      macResults[9] <= UInt<1>("h0") @[ibex_core.scala 99:21]
      addResults[9] <= adds_9.io.out @[ibex_core.scala 100:21]
      macResults[10] <= UInt<1>("h0") @[ibex_core.scala 99:21]
      addResults[10] <= adds_10.io.out @[ibex_core.scala 100:21]
      macResults[11] <= UInt<1>("h0") @[ibex_core.scala 99:21]
      addResults[11] <= adds_11.io.out @[ibex_core.scala 100:21]
      macResults[12] <= UInt<1>("h0") @[ibex_core.scala 99:21]
      addResults[12] <= adds_12.io.out @[ibex_core.scala 100:21]
      macResults[13] <= UInt<1>("h0") @[ibex_core.scala 99:21]
      addResults[13] <= adds_13.io.out @[ibex_core.scala 100:21]
      macResults[14] <= UInt<1>("h0") @[ibex_core.scala 99:21]
      addResults[14] <= adds_14.io.out @[ibex_core.scala 100:21]
      macResults[15] <= UInt<1>("h0") @[ibex_core.scala 99:21]
      addResults[15] <= adds_15.io.out @[ibex_core.scala 100:21]
    inst adderTree of AdderTreeWithPipeline_30 @[ibex_core.scala 105:25]
    adderTree.clock <= clock
    adderTree.reset <= reset
    adderTree.io.operands[0] <= macResults[0] @[ibex_core.scala 108:25]
    adderTree.io.operands[1] <= macResults[1] @[ibex_core.scala 108:25]
    adderTree.io.operands[2] <= macResults[2] @[ibex_core.scala 108:25]
    adderTree.io.operands[3] <= macResults[3] @[ibex_core.scala 108:25]
    adderTree.io.operands[4] <= macResults[4] @[ibex_core.scala 108:25]
    adderTree.io.operands[5] <= macResults[5] @[ibex_core.scala 108:25]
    adderTree.io.operands[6] <= macResults[6] @[ibex_core.scala 108:25]
    adderTree.io.operands[7] <= macResults[7] @[ibex_core.scala 108:25]
    adderTree.io.operands[8] <= macResults[8] @[ibex_core.scala 108:25]
    adderTree.io.operands[9] <= macResults[9] @[ibex_core.scala 108:25]
    adderTree.io.operands[10] <= macResults[10] @[ibex_core.scala 108:25]
    adderTree.io.operands[11] <= macResults[11] @[ibex_core.scala 108:25]
    adderTree.io.operands[12] <= macResults[12] @[ibex_core.scala 108:25]
    adderTree.io.operands[13] <= macResults[13] @[ibex_core.scala 108:25]
    adderTree.io.operands[14] <= macResults[14] @[ibex_core.scala 108:25]
    adderTree.io.operands[15] <= macResults[15] @[ibex_core.scala 108:25]
    io.resultMAC <= adderTree.io.result @[ibex_core.scala 111:16]
    io.resultADD[0] <= addResults[0] @[ibex_core.scala 112:16]
    io.resultADD[1] <= addResults[1] @[ibex_core.scala 112:16]
    io.resultADD[2] <= addResults[2] @[ibex_core.scala 112:16]
    io.resultADD[3] <= addResults[3] @[ibex_core.scala 112:16]
    io.resultADD[4] <= addResults[4] @[ibex_core.scala 112:16]
    io.resultADD[5] <= addResults[5] @[ibex_core.scala 112:16]
    io.resultADD[6] <= addResults[6] @[ibex_core.scala 112:16]
    io.resultADD[7] <= addResults[7] @[ibex_core.scala 112:16]
    io.resultADD[8] <= addResults[8] @[ibex_core.scala 112:16]
    io.resultADD[9] <= addResults[9] @[ibex_core.scala 112:16]
    io.resultADD[10] <= addResults[10] @[ibex_core.scala 112:16]
    io.resultADD[11] <= addResults[11] @[ibex_core.scala 112:16]
    io.resultADD[12] <= addResults[12] @[ibex_core.scala 112:16]
    io.resultADD[13] <= addResults[13] @[ibex_core.scala 112:16]
    io.resultADD[14] <= addResults[14] @[ibex_core.scala 112:16]
    io.resultADD[15] <= addResults[15] @[ibex_core.scala 112:16]

