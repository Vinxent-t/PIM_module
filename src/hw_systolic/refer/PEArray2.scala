package PEArray2

import chisel3._
import chisel3.util._
import chisel3.experimental.ChiselEnum

// TODO: sub-modules if you need

class PEArray[T<:Bits with Num[T]](dtype:T) extends Module{
  val a_in = IO(Input(Vec(4, dtype)))
  val b_in = IO(Input(Vec(4, dtype)))
  val c_in = IO(Input(Vec(4, dtype)))
  val c_out = IO(Output(Vec(4, dtype)))
  val stationaryCtrl = IO(Input(Bool()))

  // TODO: finish this module
  val a_reg = Reg(Vec(4, Vec(4, dtype)))
  val c_reg = Reg(Vec(3, Vec(4, dtype)))
  // when stationaryCtrl is true, load a_in in a systolic way, otherwise keep a_reg unchanged
  when (stationaryCtrl) {
    for (i <- 0 until 4) {
      a_reg(i)(0) := a_in(i)
      for (j <- 1 until 4) {
        a_reg(i)(j) := a_reg(i)(j - 1)
      }
    }
  }.otherwise {
    for (i <- 0 until 4) {
      for (j <- 0 until 4) {
        a_reg(i)(j) := a_reg(i)(j)
      }
    }
  }
  // when stationaryCtrl is false, compute c_out in a systolic way
  when (!stationaryCtrl) {
    for (j <- 0 until 4) {
      c_reg(0)(j) := c_in(j) + (for (i <- 0 until 4) yield a_reg(i)(j) * b_in(i)).reduce(_ + _)
    }
  }
  // pass c_out out in a systolic way
  for (i <- 1 until 3) {
    for (j <- 0 until 4) {
      c_reg(i)(j) := c_reg(i - 1)(j)
    }
  }
  for (i <- 0 until 4) {
    c_out(i) := c_reg(2)(i)
  }
}
