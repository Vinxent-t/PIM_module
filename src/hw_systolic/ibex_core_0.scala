package PEArray3

import chisel3._
import chisel3.util._
import chisel3.experimental.ChiselEnum

class PData[T <: Data](dtype: T) extends Bundle {
  val data = dtype.cloneType
  val pos = UInt(2.W)
}

object PData {
  def apply[T <: Data](dtype: T) = new PData(dtype)
}

// TODO: sub-modules if you need
class PingPongBuffer[T <: Data](dtype: T) extends Module {
  val din = IO(DeqIO(dtype))
  val dout = IO(EnqIO(dtype))

  val buffers = Reg(Vec(2, dtype))

  object States extends ChiselEnum {
    val zero, one, two = Value
  }
  val state = RegInit(States.zero)

  // TODO: finish PingPongBuffer here
  din.ready := 0.B
  dout.valid := 0.B
  dout.bits := buffers(0)
  switch(state) {
    is(States.zero) {
      din.ready := 1.B
      when(din.valid) {
        buffers(0) := din.bits
        state := States.one
      }
    }
    is(States.one) {
      din.ready := 1.B
      dout.valid := 1.B
      when(din.valid && dout.ready) {
        buffers(0) := din.bits
      }.elsewhen(din.valid) {
        buffers(1) := din.bits
        state := States.two
      }.elsewhen(dout.ready) {
        state := States.zero
      }
    }
    is(States.two) {
      dout.valid := 1.B
      when(dout.ready) {
        buffers(0) := buffers(1)
        state := States.one
      }
    }
  }
}

class ibex_core[T <: Bits with Num[T]](dtype: T, size: Int) extends Module {
  val a_in = IO(Vec(size, DeqIO(dtype)))
  val b_in = IO(Vec(size, DeqIO(dtype)))
  val c_in = IO(Vec(size, DeqIO(PData(dtype))))
  val c_out = IO(Vec(size, EnqIO(PData(dtype))))

  // TODO: finish this module

  // create size x size PingPongBuffer array for a, b, c, out
  val a_buf = for (i <- 0 until size) yield for (j <- 0 until size) yield Module(new PingPongBuffer(dtype))
  val b_buf = for (i <- 0 until size) yield for (j <- 0 until size) yield Module(new PingPongBuffer(dtype))
  val c_in_buf = for (i <- 0 until size) yield for (j <- 0 until size) yield Module(new PingPongBuffer(PData(dtype)))
  val sum_buf = for (i <- 0 until size) yield for (j <- 0 until size) yield Module(new PingPongBuffer(PData(dtype)))
  val c_out_buf = for (i <- 0 until size) yield for (j <- 0 until size) yield Module(new PingPongBuffer(PData(dtype)))

  // create size x size array for can_compute, compute and pass data when current data is valid and next data is ready
  val can_compute = Wire(Vec(size, Vec(size, Bool())))
  for (i <- 0 until size) {
    for (j <- 0 until size) {
      if (i < size - 1 && j < size - 1) {
        can_compute(i)(j) := a_buf(i)(j).dout.valid & b_buf(i)(j).dout.valid & a_buf(i + 1)(j).din.ready & b_buf(i)(j + 1).din.ready
      } else if (i < size - 1) {
        can_compute(i)(j) := a_buf(i)(j).dout.valid & b_buf(i)(j).dout.valid & a_buf(i + 1)(j).din.ready
      } else if (j < size - 1) {
        can_compute(i)(j) := a_buf(i)(j).dout.valid & b_buf(i)(j).dout.valid & b_buf(i)(j + 1).din.ready
      } else {
        can_compute(i)(j) := a_buf(i)(j).dout.valid & b_buf(i)(j).dout.valid
      }
    }
  }

  // create size x size array for can_load, load c_in_buf to sum_buf when c_in_buf is valid and pos matches
  val can_load = Wire(Vec(size, Vec(size, Bool())))
  for (i <- 0 until size) {
    for (j <- 0 until size) {
      can_load(i)(j) := c_in_buf(i)(j).dout.valid & c_in_buf(i)(j).dout.bits.pos === j.U
    }
  }

  // connect a_buf
  for (j <- 0 until size) {
    a_buf(0)(j).din <> a_in(j)
    for (i <- 0 until size - 1) {
      a_buf(i)(j).dout <> a_buf(i + 1)(j).din
      when (!can_compute(i)(j)) {
        a_buf(i)(j).dout.ready := 0.B
        a_buf(i + 1)(j).din.valid := 0.B
        a_buf(i + 1)(j).din.bits := 0.U.asTypeOf(dtype)
      }
    }
    a_buf(size - 1)(j).dout.ready := 1.B
    when (!can_compute(size - 1)(j)) {
      a_buf(size - 1)(j).dout.ready := 0.B
    }
  }

  // connect b_buf
  for (i <- 0 until size) {
    b_buf(i)(0).din <> b_in(i)
    for (j <- 0 until size - 1) {
      b_buf(i)(j).dout <> b_buf(i)(j + 1).din
      when (!can_compute(i)(j)) {
        b_buf(i)(j).dout.ready := 0.B
        b_buf(i)(j + 1).din.valid := 0.B
        b_buf(i)(j + 1).din.bits := 0.U.asTypeOf(dtype)
      }
    }
    b_buf(i)(size - 1).dout.ready := 1.B
    when (!can_compute(i)(size - 1)) {
      b_buf(i)(size - 1).dout.ready := 0.B
    }
  }

  // connect c_in_buf
  for (i <- 0 until size) {
    c_in_buf(i)(0).din <> c_in(i)
    for (j <- 0 until size - 1) {
      c_in_buf(i)(j).dout <> c_in_buf(i)(j + 1).din
    }
    c_in_buf(i)(size - 1).dout.ready := 1.B
  }

  // connect c_out_buf
  for (i <- 0 until size) {
    c_out_buf(i)(0).din.valid := 0.B
    c_out_buf(i)(0).din.bits := 0.U.asTypeOf(PData(dtype))
    for (j <- 1 until size) {
      c_out_buf(i)(j).din <> c_out_buf(i)(j - 1).dout
    }
    c_out_buf(i)(size - 1).dout <> c_out(i)
  }

  // connect sum_buf
  for (i <- 0 until size) {
    for (j <- 0 until size) {
      sum_buf(i)(j).din.valid := 0.B
      sum_buf(i)(j).din.bits := 0.U.asTypeOf(PData(dtype))
      sum_buf(i)(j).dout.ready := 0.B
      when (can_load(i)(j)) {
        sum_buf(i)(j).din <> c_in_buf(i)(j).dout
        sum_buf(i)(j).dout <> c_out_buf(i)(j).din
        when (can_compute(i)(j)) {
          sum_buf(i)(j).din.bits.data := a_buf(i)(j).dout.bits * b_buf(i)(j).dout.bits + c_in_buf(i)(j).dout.bits.data
        }
        if (j < size - 1) {
          c_in_buf(i)(j + 1).din.valid := 0.B
          c_in_buf(i)(j + 1).din.bits := 0.U.asTypeOf(PData(dtype))
        }
        if (j > 0) {
          c_out_buf(i)(j - 1).dout.ready := 0.B
        }
      }
      when (can_compute(i)(j) && !can_load(i)(j)) {
        sum_buf(i)(j).din.valid := 1.B
        sum_buf(i)(j).din.bits.data := a_buf(i)(j).dout.bits * b_buf(i)(j).dout.bits + sum_buf(i)(j).dout.bits.data
        sum_buf(i)(j).din.bits.pos := sum_buf(i)(j).dout.bits.pos
        sum_buf(i)(j).dout.ready := 1.B
      }
    }
  }
}

object PE_INT16 extends App {
  val width = 16 // 设置FP位宽为16位
  val size = 128   // 设置array大小为4
  emitVerilog(new ibex_core(UInt(width.W), size), Array("--target-dir", "generated"))
}
