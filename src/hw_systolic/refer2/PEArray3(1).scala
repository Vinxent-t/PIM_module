package PEArray3

import chisel3._
import chisel3.util._
import chisel3.experimental.ChiselEnum

class PData[T<:Data](dtype:T) extends Bundle{
  val data = dtype.cloneType
  val pos = UInt(2.W)
}
object PData{
  def apply[T<:Data](dtype:T) = new PData(dtype)
}

// TODO: sub-modules if you need
class PEArray[T<:Bits with Num[T]](dtype:T) extends Module{
  val a_in = IO(Vec(4, DeqIO(dtype)))
  val b_in = IO(Vec(4, DeqIO(dtype)))
  val c_in = IO(Vec(4, DeqIO(PData(dtype))))
  val c_out = IO(Vec(4, EnqIO(PData(dtype))))

  // TODO: finish this module
  val a = new signal(dtype)
  val b = new signal(dtype)
  val c = new signal(dtype)
  val cin = new signal(dtype)
  val cout = new signal(dtype)
  

  for(i<-0 until 4){
    a_in(i).ready:=a.ready(0)(i)//输入接口
    for(j<-0 until 4){
      when(a.ready(i)(j)){
        if(i==0){
          when(a_in(j).valid){
            a.reg(0)(j):=a_in(j).bits//输入接口
            a.ready(0)(j):=0.B
          }
        }
        else{
          when(a.valid(i-1)(j)){
            a.reg(i)(j):=a.reg(i-1)(j)
            a.ready(i)(j):=0.B
          }
        }
      }
      .elsewhen(a.valid(i)(j)){
        if(i==3){
          a.valid(3)(j):=0.B
          a.ready(3)(j):=1.B
        }
        else{
          when(a.ready(i+1)(j)){
            a.valid(i)(j):=0.B
            a.ready(i)(j):=1.B
          }
        }
      }
      .otherwise{
        when(c.ready(i)(j)){
          a.valid(i)(j):=1.B
        }
      }
    }
  }//更新a的状态

  for(i<-0 until 4){
    b_in(i).ready:=b.ready(i)(0)//输入接口
    for(j<-0 until 4){
      when(b.ready(j)(i)){
        if(i==0){
          when(b_in(j).valid){
            b.reg(j)(0):=b_in(j).bits//输入接口
            b.ready(j)(0):=0.B
          }
        }
        else{
          when(b.valid(j)(i-1)){
            b.reg(j)(i):=b.reg(j)(i-1)
            b.ready(j)(i):=0.B
          }
        }
      }
      .elsewhen(b.valid(j)(i)){
        if(i==3){
          b.valid(j)(3):=0.B
          b.ready(j)(3):=1.B
        }
        else{
          when(b.ready(j)(i+1)){
            b.valid(j)(i):=0.B
            b.ready(j)(i):=1.B
          }
        }
      }
      .otherwise{
        when(c.ready(j)(i)){
          b.valid(j)(i):=1.B
        }
      }
    }
  }//更新b的状态

  for(i<-0 until 4){
    for(j<-0 until 4){
      when(c.ready(i)(j)){
        c.reg(i)(j):=c.reg(i)(j)+a.reg(i)(j)*b.reg(i)(j)
        c.ready(i)(j):=0.B
      }
      .elsewhen(c.valid(i)(j)){
        when(a.ready(i)(j)===0.B&a.valid(i)(j)===0.B&b.ready(i)(j)===0.B&b.valid(i)(j)===0.B){
          c.ready(i)(j):=1.B
        }
        when(cin.valid(i)(j)&cin.reg(i)(j).pos===j.U){
          c.reg(i)(j):=cin.reg(i)(j).data
        }
      }
      .otherwise{
        when(cin.valid(i)(j)&cin.reg(i)(j).pos===j.U){
          c.reg(i)(j):=cin.reg(i)(j).data
          c.valid(i)(j):=1.B
        }
      }
    }
  }//更新c的状态

  for(i<-0 until 4){
    c_in(i).ready:=cin.ready(i)(0)//输入接口
    for(j<-0 until 4){
      when(cin.ready(i)(j)){
        if(j==0){
          when(c_in(i).valid){
            cin.reg(i)(0):=c_in(i).bits//输入接口
            cin.valid(i)(0):=1.B
            cin.ready(i)(0):=0.B
          }
        }
        else{
          when(cin.valid(i)(j-1)){
            cin.reg(i)(j):=cin.reg(i)(j-1)
            cin.valid(i)(j):=1.B
            cin.ready(i)(j):=0.B
          }
        }
      }
      .otherwise{
        if(j==3){
          cin.ready(i)(3):=1.B
          cin.valid(i)(3):=0.B
        }
        else{
          when(cin.ready(i)(j+1)){
            cin.valid(i)(j):=0.B
            cin.ready(i)(j):=1.B
          }
        }
      }
    }
  }//更新cin的状态

  for(i<-0 until 4){
    c_out(i).valid:=cout.valid(i)(3)//输出接口
    c_out(i).bits:=cout.reg(i)(3)//输出接口
    for(j<-0 until 4){
      when(cout.ready(i)(j)){
        when(c.valid(i)(j)&c.ready(i)(j)===0.B&cin.reg(i)(j).pos===j.U&cin.valid(i)(j)){
          cout.reg(i)(j).pos:=j.U
          cout.reg(i)(j).data:=c.reg(i)(j)
          cout.valid(i)(j):=1.B
          cout.ready(i)(j):=0.B
        }
        .otherwise{
          if(j!=0){
            when(cout.valid(i)(j-1)){
              cout.reg(i)(j):=cout.reg(i)(j-1)
              cout.valid(i)(j):=1.B
              cout.ready(i)(j):=0.B
            }
          }
        }
      }
      .otherwise{
        if(j==3){
          when(c_out(i).ready){
            cout.valid(i)(3):=0.B
            cout.ready(i)(3):=1.B//输出接口
          }
        }
        else{
          when(cout.ready(i)(j+1)){
            cout.valid(i)(j):=0.B
            cout.ready(i)(j):=1.B
          }
        }
      }
    }
  }//更新cout的状态
}

