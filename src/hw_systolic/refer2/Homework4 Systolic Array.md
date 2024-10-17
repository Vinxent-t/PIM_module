# Homework4: Systolic Array

2100012746 支沁喆

## Problem1

### 分析Tensor A B C

$$
P=\begin{bmatrix}0&1&0\\0&0&1\end{bmatrix}
\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space
\pi=(1,1,1)
$$

$$
d_A=(0,1,0),P\times d_A=(1,0),\pi\cdot d_A=1
$$

$$
d_B=(1,0,0),P\times d_B=(0,0),\pi\cdot d_B=1
$$

$$
d_C=(0,0,1),P\times d_C=(0,1),\pi\cdot d_C=1
$$

因此Tensor A的传播方向为x轴正方向；Tensor B为静态张量；Tensor C的传播方向为y轴正方向。

### PEarray内部结构&设计

Tensor A的PE每周期朝x轴正方向的相邻PE传播；Tensor B为静态，对应的PE通过StationaryCtrl信号控制数据的读取；Tensor C每周期从前一个（y轴负方向的相邻的）PE获得a，b，c的值，并将乘加的结果储存到PE中。

Tensor C的输出端有一级额外的寄存器以匹配testbench的延迟。

## Problem2

### 分析Tensor A B C

### 

$$
P=\begin{bmatrix}1&0&0\\0&0&1\end{bmatrix}
\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space\space
\pi=(0,1,0)
$$

$$
d_A=(0,1,0),P\times d_A=(0,0),\pi\cdot d_A=1
$$

$$
d_B=(1,0,0),P\times d_B=(1,0),\pi\cdot d_B=0
$$

$$
d_C=(0,0,1),P\times d_C=(0,1),\pi\cdot d_C=0
$$

因此Tensor A为静态张量；Tensor B的传播方向为x轴正方向；Tensor C的传播方向为y轴正方向。

### PEarray内部结构&设计

Tensor A为静态，对应的PE通过StationaCtrl信号控制数据的读取，根据testbench将输入方向调整为x轴正方向；Tensor B理应采用multicast的形式，但这里我直接换成了problem1中A信号的不带寄存器的版本，即每周期输入将通过PEarray的路径输入到对应端口的所有四个PE；TensorC同样采用了problem1中C信号的不带寄存器的版本，每周期都对同一条路径上的所有PE完成累加。

## Problem3

### PEarray构成

`a` `b` `c` `cin` `cout`

这些array每一个都是4*4大小的寄存器类型的带有 `valid` 和 `ready` 控制信号的array，由于代码实现遇到一些困难，在实际实现中控制信号也单独构成了array。

其中 `cin` 与 `cout` 分别为控制 `c_in` 输入和 `c_out` 输出的array，运算主要通过 `c` 来完成。。

### 各个Array的详细设计

对于各个Array的设计均由状态机来描述，由于每个状态一一对应一个 `valid` 与 `ready` 信号的组合（即Moore机的输出为 `valid` 与 `ready` ），之后就用 `valid` 与 `ready` 来描述状态。

#### `a` （`b`）:

|            State            | Transfer condition |     Target State     |  Behavior  |
| :-------------------------: | :----------------: | :------------------: | :--------: |
| (Init) valid = 0, ready = 1 |  a.valid(-1) = 1   | valid = 0, ready = 0 | a := a(-1) |
|    valid = 0, ready = 0     |    c.ready = 1     | valid = 1, ready = 0 |     /      |
|    valid = 1, ready = 0     |  a.ready(+1) = 1   | valid = 0, ready = 1 |     /      |

这里 `a` 信号的`valid` 与 `ready` 仅仅针对FIFO的实现，并非针对运算的`valid` 与 `ready` ，通过观察可以发现，`a` 中的数据可以被用于计算时正好是`valid = 0，ready = 0 ` 时，因此这个状态实际对应着针对于运算的**valid**状态。Condition中的（-1）与（+1）分别表示条件针对的是前一个和后一个PE，后续同理。当从 valid = 0, ready = 1状态转移到 valid = 0, ready = 0时，将前一位数据读入，由于 `a` 必须经过一次运算后才能继续传播，因此读入后valid应当为0。

`b` 信号与 `a` 信号设计完全相同。

#### `c` :

|            State            |              Transfer condition              |     Target State     |    Behavior    |
| :-------------------------: | :------------------------------------------: | :------------------: | :------------: |
| (Init) valid = 0, ready = 0 |                 cin.pos = j                  | valid = 1, ready = 0 | c := cin.data  |
|    valid = 1, ready = 0     | a.valid = b.valid = 0; a.ready = b.ready = 0 | valid = 1, ready = 1 |       /        |
|    valid = 1, ready = 1     |                      /                       | valid = 1, ready = 0 | c := c + a * b |

这里 `c` 信号的 `valid` 与 `ready` 实际上针对于计算，因此初始状态时，由于 `a` `b` `c` 均没有可以用来计算的数据，`ready` 信号相应的也为0，与之前两个信号不同。valid = 1, ready = 0转移到valid = 1, ready = 1的条件为 `a` `b` 信号的数据都已就位。事实上当第一次 `c` 从 `cin` 读取数据后就不会再回到初始状态。

#### `cin` :

|            State            | Transfer condition |     Target State     |    Behavior    |
| :-------------------------: | :----------------: | :------------------: | :------------: |
| (Init) valid = 0, ready = 1 | cin.valid(-1) = 1  | valid = 1, ready = 0 | cin := cin(-1) |
|    valid = 1, ready = 0     | cin.ready(+1) = 1  | valid = 0, ready = 1 |       /        |

事实上 `cin` 只需实现最基本的FIFO功能即可，当 `cin.pos` 的值等于y坐标值时，会被 `c` 读入。

#### `cout` :

|            State            |                    Transfer condition                    |     Target State     |                     Behavior                     |
| :-------------------------: | :------------------------------------------------------: | :------------------: | :----------------------------------------------: |
| (Init) valid = 0, ready = 1 | (cin.pos = j & cin.valid & c.valid) / cout.valid(-1) = 1 | valid = 1, ready = 0 | cout.data := c, cout.pos := j / cout := cout(-1) |
|    valid = 1, ready = 0     |                    cout.ready(+1) = 1                    | valid = 0, ready = 1 |                        /                         |

`cout` 有两个可以读入数据的条件：`c` 内的数据被 `cin` 替换或平凡的FIFO传递数据，由于 `cin` 的FIFO实现导致相邻 `c` 的替换不会发生在相邻周期，事实上不用担心 `cout` 的两种读入路径冲突的问题。



以上的状态转移图为简化版本，事实上还要处理IO接口的问题，但基本和Array内部的逻辑相同。