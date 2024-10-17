
import chisel3._
import chisel3.util._
import chisel3.experimental.ChiselEnum

// Parameterized Processing Element Array
class ibex_core(width: Int, size: Int) extends Module {
  val dtype = UInt(width.W) // 定义数据类型为UInt(width.W)
  val a_in = IO(Input(Vec(size, dtype))) // 输入数组a
  val b_in = IO(Input(Vec(size, dtype))) // 输入数组b
  val c_in = IO(Input(Vec(size, dtype))) // 输入数组c
  val c_out = IO(Output(Vec(size, dtype))) // 输出数组c_out
  val stationaryCtrl = IO(Input(Bool())) // 控制信号

  // 寄存器数组定义
  val a_reg = Reg(Vec(size, Vec(size, dtype))) // 存储a的寄存器
  val b_reg = Reg(Vec(size, Vec(size, dtype))) // 存储b的寄存器
  val c_reg = Reg(Vec(size, Vec(size, dtype))) // 存储c的寄存器

  // 按照流动方式传递输入a
  for (j <- 0 until size) {
    a_reg(0)(j) := a_in(j)
    for (i <- 1 until size) {
      a_reg(i)(j) := a_reg(i - 1)(j)
    }
  }

  // 控制b的输入流动
  when (stationaryCtrl) {
    for (i <- 0 until size) {
      b_reg(i)(0) := b_in(i)
      for (j <- 1 until size) {
        b_reg(i)(j) := b_reg(i)(j - 1)
      }
    }
  }

  // 当stationaryCtrl为false时计算c_out
  when (!stationaryCtrl) {
    for (i <- 0 until size) {
      c_reg(i)(0) := a_reg(i)(0) * b_reg(i)(0) + c_in(i)
      for (j <- 1 until size) {
        c_reg(i)(j) := a_reg(i)(j) * b_reg(i)(j) + c_reg(i)(j - 1)
      }
    }
  }

  // 输出结果c_out
  for (i <- 0 until size) {
    c_out(i) := c_reg(i)(size - 1)
  }
}

// 应用对象示例
object PE_INT16 extends App {
  val width = 16 // 设置位宽为16位
  val size = 4 // 设置数组大小为128
  emitVerilog(new ibex_core(width, size), Array("--target-dir", "generated"))
}
