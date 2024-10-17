circuit MAC :
  module MAC :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip a : UInt<16>, flip b : UInt<16>, flip c : UInt<16>, out : UInt<16>}

    node _io_out_T = mul(io.a, io.b) @[ibex_core.scala 12:19]
    node _io_out_T_1 = add(_io_out_T, io.c) @[ibex_core.scala 12:27]
    node _io_out_T_2 = tail(_io_out_T_1, 1) @[ibex_core.scala 12:27]
    io.out <= _io_out_T_2 @[ibex_core.scala 12:10]

