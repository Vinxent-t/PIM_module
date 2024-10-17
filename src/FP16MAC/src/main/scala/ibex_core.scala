import chisel3._
import chisel3.util._

// FP16 MAC (Multiply Accumulate) 模块
class MAC(Width: Int) extends Module {
  val io = IO(new Bundle {
    val a = Input(UInt(Width.W))
    val b = Input(UInt(Width.W))
    val c = Input(UInt(Width.W))
    val out = Output(UInt(Width.W))
  })
  io.out := (io.a * io.b) + io.c
}

class ibex_core(Width: Int) extends Module {
  val io = IO(new Bundle {
    val a = Input(UInt(Width.W))
    val b = Input(UInt(Width.W))
    val out = Output(UInt(Width.W))
  })
  io.out := (io.a + io.b)
}



// 加法树模块，支持流水线
class AdderTreeWithPipeline(val numOperands: Int, val dataWidth: Int, val pipelineDepth: Int) extends Module {
  val io = IO(new Bundle {
    val operands = Input(Vec(numOperands, UInt(dataWidth.W)))
    val result = Output(UInt((dataWidth + log2Ceil(numOperands)).W))
  })

  if (numOperands == 1) {
    io.result := io.operands(0)
  } else {
    val half = numOperands / 2

    // 左子树与右子树
    val leftTree = Module(new AdderTreeWithPipeline(half, dataWidth, pipelineDepth))
    val rightTree = Module(new AdderTreeWithPipeline(numOperands - half, dataWidth, pipelineDepth))

    // 将输入操作数分割成左右两部分
    leftTree.io.operands := io.operands.take(half)
    rightTree.io.operands := io.operands.drop(half)

    // 输出寄存器，用于插入流水线
    val regLeft = RegInit(0.U((dataWidth + log2Ceil(half)).W))
    val regRight = RegInit(0.U((dataWidth + log2Ceil(numOperands - half)).W))

    // 如果启用了流水线，每级之间插入寄存器
    if (pipelineDepth > 0) {
      regLeft := leftTree.io.result
      regRight := rightTree.io.result
    } else {
      regLeft := leftTree.io.result
      regRight := rightTree.io.result
    }

    // 加法器的结果也需要进行宽度扩展
    io.result := regLeft + regRight
  }
}

// ibex_core 核心模块
class aa(Width: Int) extends Module {
  val io = IO(new Bundle {
    val vecA = Input(Vec(16, UInt(Width.W))) // 输入向量A
    val vecB = Input(Vec(16, UInt(Width.W))) // 输入向量B
    val mode = Input(Bool())                 // 模式选择
    val resultMAC = Output(UInt((Width).W)) // 输出点乘累加结果
    val resultADD = Output(Vec(16,UInt((Width).W))) 
  })

  // 初始化16个FP16MAC单元
  val macs = Seq.fill(16)(Module(new MAC(Width)))
  val adds = Seq.fill(16)(Module(new ADD(Width)))


  // 计算16个操作数的乘法累加结果
  val macResults = Reg(Vec(16, UInt(Width.W)))
  val addResults = Reg(Vec(16, UInt(Width.W)))

  for ( i<- 0 until 16){
    macs(i).io.a := io.vecA(i)
    macs(i).io.b := io.vecB(i)
    macs(i).io.c := 0.U
    adds(i).io.a := io.vecA(i)
    adds(i).io.b := io.vecB(i)
  }

  when(io.mode === 0.B){
    for (i <- 0 until 16) {
      macResults(i) := macs(i).io.out
      addResults(i) := 0.U
    }
  }
  .otherwise{
    for (i <- 0 until 16) {
      macResults(i) := 0.U
      addResults(i) := adds(i).io.out
    }
  }

  // 实例化加法树，进行流水线加法操作
  val adderTree = Module(new AdderTreeWithPipeline(16, Width, pipelineDepth = 1))

  // 加法树的输入为 MAC 结果
  adderTree.io.operands := macResults

  // 输出结果
  io.resultMAC := adderTree.io.result
  io.resultADD := addResults
}

// 测试例子
object MAC_FP16 extends App {
  val Width = 16 // 设置FP位宽
  emitVerilog(new ibex_core(Width), Array("--target-dir", "generated"))
}
