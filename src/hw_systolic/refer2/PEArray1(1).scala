package PEArray1

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
  val a = Reg(Vec(4,Vec(4,dtype)))
  val b = Reg(Vec(4,Vec(4,dtype)))
  val c = Reg(Vec(4,Vec(4,dtype)))
  val c_reg = Reg(Vec(4,dtype))
  for(i<-0 until 4){
    a(0)(i):=a_in(i)
    for(j<-1 until 4){
      a(j)(i):=a(j-1)(i)
    }
  }
  when(stationaryCtrl){
    for(i<-0 until 4){
      b(i)(0):=b_in(i)
      for(j<-1 until 4){
        b(i)(j):=b(i)(j-1)
      }
    }
  }
  for(i<-0 until 4){
    c(i)(0):=c_in(i)
    c_reg(i):=c(i)(3)+a(i)(3)*b(i)(3)
    c_out(i):=c_reg(i)
    for(j<-1 until 4){
      c(i)(j):=c(i)(j-1)+a(i)(j-1)*b(i)(j-1)
    }
  }
}
