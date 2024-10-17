import chisel3._
import chisel3.util._

class PData[T <: Data](dtype: T) extends Bundle {
  val data = dtype.cloneType
  val pos = UInt(2.W)
}

object PData {
  def apply[T <: Data](dtype: T) = new PData(dtype)
}

class signal[T <: Data](dtype: T, size: Int) {
  val reg = RegInit(VecInit(Seq.fill(size)(VecInit(Seq.fill(size)(0.U.asTypeOf(dtype))))))
}

class ibex_core[T <: Bits with Num[T]](dtype: T, size: Int) extends Module {
  val io = IO(new Bundle {
    val a_in = Vec(size, Input(dtype))
    val b_in = Vec(size, Input(dtype))
    val c_in = Vec(size, Input(PData(dtype)))
    val c_out = Vec(size, Output(PData(dtype)))
  })

  val a = new signal(dtype, size)
  val b = new signal(dtype, size)
  val c = new signal(dtype, size)

  // A array processing (x direction)
  for (i <- 0 until size) {
    for (j <- 0 until size) {
      if (i == 0) {
        a.reg(0)(j) := io.a_in(j) // 第一行直接输入
      } else {
        a.reg(i)(j) := a.reg(i - 1)(j) // 从上一个处理单元接收
      }
    }
  }

  // B array processing (y direction)
  for (i <- 0 until size) {
    for (j <- 0 until size) {
      if (j == 0) {
        b.reg(i)(0) := io.b_in(i) // 第一列直接输入
      } else {
        b.reg(i)(j) := b.reg(i)(j - 1) // 从左边的处理单元接收
      }
    }
  }

  // C array processing (stationary)
  for (i <- 0 until size) {
    for (j <- 0 until size) {
      c.reg(i)(j) := c.reg(i)(j) + a.reg(i)(j) * b.reg(i)(j) // 计算
    }
  }

  // 输出 C 的值
  for (i <- 0 until size) {
    io.c_out(i).data := c.reg(i)(size - 1) // 假设输出最后一列
    io.c_out(i).pos := 0.U // 可以根据需要修改
  }
}

// 实例化代码
object systolic extends App {
  val Width = 16 // 设置 FP 位宽
  val size = 128 // 设置阵列大小
  emitVerilog(new ibex_core(UInt(Width.W), size), Array("--target-dir", "generated"))
}
