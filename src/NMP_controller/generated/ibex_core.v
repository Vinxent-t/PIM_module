module ibex_core(
  input         clock,
  input         reset,
  input  [6:0]  io_CA,
  input  [63:0] io_DQ,
  output [63:0] io_DQ_out,
  output        io_Input_GB_write_en,
  output        io_Input_GB_read_en,
  output [15:0] io_Input_GB_addr,
  output [63:0] io_Input_GB_data_write,
  input  [63:0] io_Input_GB_data_read,
  output        io_PE_en_0,
  output        io_PE_en_1,
  output        io_PE_en_2,
  output        io_PE_en_3,
  output        io_PE_en_4,
  output        io_PE_en_5,
  output        io_PE_en_6,
  output        io_PE_en_7,
  output        io_PE_mode_0,
  output        io_PE_mode_1,
  output        io_PE_mode_2,
  output        io_PE_mode_3,
  output        io_PE_mode_4,
  output        io_PE_mode_5,
  output        io_PE_mode_6,
  output        io_PE_mode_7,
  output [15:0] io_PE_addrA_0,
  output [15:0] io_PE_addrA_1,
  output [15:0] io_PE_addrA_2,
  output [15:0] io_PE_addrA_3,
  output [15:0] io_PE_addrA_4,
  output [15:0] io_PE_addrA_5,
  output [15:0] io_PE_addrA_6,
  output [15:0] io_PE_addrA_7,
  output [15:0] io_PE_addrB_0,
  output [15:0] io_PE_addrB_1,
  output [15:0] io_PE_addrB_2,
  output [15:0] io_PE_addrB_3,
  output [15:0] io_PE_addrB_4,
  output [15:0] io_PE_addrB_5,
  output [15:0] io_PE_addrB_6,
  output [15:0] io_PE_addrB_7,
  output [15:0] io_PE_length_0,
  output [15:0] io_PE_length_1,
  output [15:0] io_PE_length_2,
  output [15:0] io_PE_length_3,
  output [15:0] io_PE_length_4,
  output [15:0] io_PE_length_5,
  output [15:0] io_PE_length_6,
  output [15:0] io_PE_length_7,
  output [15:0] io_PE_width_0,
  output [15:0] io_PE_width_1,
  output [15:0] io_PE_width_2,
  output [15:0] io_PE_width_3,
  output [15:0] io_PE_width_4,
  output [15:0] io_PE_width_5,
  output [15:0] io_PE_width_6,
  output [15:0] io_PE_width_7,
  output        io_Output_GB_write_en,
  output        io_Output_GB_read_en,
  output [15:0] io_Output_GB_addr,
  output [63:0] io_Output_GB_data_write,
  input  [63:0] io_Output_GB_data_read
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
`endif // RANDOMIZE_REG_INIT
  wire  mode = io_CA[2]; // @[ibex_core.scala 59:19]
  wire [1:0] op = io_CA[1:0]; // @[ibex_core.scala 60:17]
  reg [2:0] state; // @[ibex_core.scala 66:22]
  reg [15:0] Input_addr; // @[ibex_core.scala 68:27]
  reg [15:0] Input_length; // @[ibex_core.scala 69:29]
  reg [15:0] vecA_addr; // @[ibex_core.scala 70:26]
  reg [15:0] vecB_addr; // @[ibex_core.scala 71:26]
  reg [15:0] vec_length; // @[ibex_core.scala 72:27]
  reg [15:0] vec_width; // @[ibex_core.scala 73:26]
  reg [15:0] Output_addr; // @[ibex_core.scala 74:28]
  reg [15:0] Output_length; // @[ibex_core.scala 75:30]
  reg [15:0] current_length; // @[ibex_core.scala 76:31]
  wire [2:0] _GEN_0 = mode ? 3'h3 : state; // @[ibex_core.scala 103:32 104:17 66:22]
  wire [2:0] _GEN_1 = ~mode ? 3'h2 : _GEN_0; // @[ibex_core.scala 100:27 101:17]
  wire [15:0] _GEN_2 = op == 2'h3 ? io_DQ[15:0] : Output_addr; // @[ibex_core.scala 107:32 108:21 74:28]
  wire [15:0] _GEN_3 = op == 2'h3 ? io_DQ[31:16] : Output_length; // @[ibex_core.scala 107:32 109:23 75:30]
  wire [2:0] _GEN_4 = op == 2'h3 ? 3'h4 : state; // @[ibex_core.scala 107:32 110:15 66:22]
  wire [15:0] _GEN_5 = op == 2'h2 ? io_DQ[15:0] : vecA_addr; // @[ibex_core.scala 95:32 96:21 70:26]
  wire [15:0] _GEN_6 = op == 2'h2 ? io_DQ[31:16] : vecB_addr; // @[ibex_core.scala 95:32 97:21 71:26]
  wire [15:0] _GEN_7 = op == 2'h2 ? io_DQ[47:32] : vec_length; // @[ibex_core.scala 95:32 98:22 72:27]
  wire [15:0] _GEN_8 = op == 2'h2 ? io_DQ[63:48] : vec_width; // @[ibex_core.scala 95:32 99:21 73:26]
  wire [2:0] _GEN_9 = op == 2'h2 ? _GEN_1 : _GEN_4; // @[ibex_core.scala 95:32]
  wire [15:0] _GEN_10 = op == 2'h2 ? Output_addr : _GEN_2; // @[ibex_core.scala 74:28 95:32]
  wire [15:0] _GEN_11 = op == 2'h2 ? Output_length : _GEN_3; // @[ibex_core.scala 75:30 95:32]
  wire [16:0] _io_Input_GB_addr_T = {{1'd0}, Input_addr}; // @[ibex_core.scala 125:48]
  wire [17:0] _io_Input_GB_addr_T_2 = current_length * 2'h2; // @[ibex_core.scala 125:78]
  wire [17:0] _GEN_318 = {{2'd0}, _io_Input_GB_addr_T[15:0]}; // @[ibex_core.scala 125:61]
  wire [17:0] _io_Input_GB_addr_T_4 = _GEN_318 + _io_Input_GB_addr_T_2; // @[ibex_core.scala 125:61]
  wire [15:0] _T_13 = current_length + 16'h4; // @[ibex_core.scala 127:27]
  wire  _GEN_31 = _T_13 >= Input_length ? 1'h0 : 1'h1; // @[ibex_core.scala 127:49 129:15 133:15]
  wire [16:0] _io_PE_addrA_0_T = {{1'd0}, vecA_addr}; // @[ibex_core.scala 153:48]
  wire [16:0] _io_PE_addrB_0_T = {{1'd0}, vecB_addr}; // @[ibex_core.scala 154:51]
  wire [16:0] _io_Output_GB_addr_T = {{1'd0}, Output_addr}; // @[ibex_core.scala 195:52]
  wire [17:0] _GEN_319 = {{2'd0}, _io_Output_GB_addr_T[15:0]}; // @[ibex_core.scala 195:66]
  wire [17:0] _io_Output_GB_addr_T_4 = _GEN_319 + _io_Input_GB_addr_T_2; // @[ibex_core.scala 195:66]
  wire [15:0] _GEN_32 = _T_13 >= Output_length ? 16'h0 : _T_13; // @[ibex_core.scala 197:52 198:26 202:26]
  wire [2:0] _GEN_33 = _T_13 >= Output_length ? 3'h0 : 3'h4; // @[ibex_core.scala 197:52 199:17 203:17]
  wire [17:0] _GEN_36 = 3'h4 == state ? _io_Output_GB_addr_T_4 : 18'h0; // @[ibex_core.scala 85:16 195:27 52:21]
  wire [63:0] _GEN_37 = 3'h4 == state ? io_Output_GB_data_read : 64'h0; // @[ibex_core.scala 85:16 196:18 39:13]
  wire [15:0] _GEN_38 = 3'h4 == state ? _GEN_32 : current_length; // @[ibex_core.scala 85:16 76:31]
  wire [2:0] _GEN_39 = 3'h4 == state ? _GEN_33 : state; // @[ibex_core.scala 85:16 66:22]
  wire [15:0] _GEN_90 = 3'h3 == state ? _io_PE_addrA_0_T[15:0] : 16'h0; // @[ibex_core.scala 85:16 174:24]
  wire [15:0] _GEN_91 = 3'h3 == state ? _io_PE_addrB_0_T[15:0] : 16'h0; // @[ibex_core.scala 85:16 175:24]
  wire [15:0] _GEN_92 = 3'h3 == state ? vec_length : 16'h0; // @[ibex_core.scala 85:16 176:25]
  wire [15:0] _GEN_93 = 3'h3 == state ? vec_width : 16'h0; // @[ibex_core.scala 85:16 177:24]
  wire [2:0] _GEN_136 = 3'h3 == state ? 3'h0 : _GEN_39; // @[ibex_core.scala 179:13 85:16]
  wire  _GEN_138 = 3'h3 == state ? 1'h0 : 3'h4 == state; // @[ibex_core.scala 85:16 187:28]
  wire [17:0] _GEN_139 = 3'h3 == state ? 18'h0 : _GEN_36; // @[ibex_core.scala 85:16 188:25]
  wire [63:0] _GEN_140 = 3'h3 == state ? 64'h0 : _GEN_37; // @[ibex_core.scala 189:16 85:16]
  wire [15:0] _GEN_141 = 3'h3 == state ? current_length : _GEN_38; // @[ibex_core.scala 85:16 76:31]
  wire  _GEN_142 = 3'h2 == state | 3'h3 == state; // @[ibex_core.scala 85:16 151:21]
  wire [15:0] _GEN_144 = 3'h2 == state ? _io_PE_addrA_0_T[15:0] : _GEN_90; // @[ibex_core.scala 85:16 153:24]
  wire [15:0] _GEN_145 = 3'h2 == state ? _io_PE_addrB_0_T[15:0] : _GEN_91; // @[ibex_core.scala 85:16 154:24]
  wire [15:0] _GEN_146 = 3'h2 == state ? vec_length : _GEN_92; // @[ibex_core.scala 85:16 155:25]
  wire [15:0] _GEN_147 = 3'h2 == state ? vec_width : _GEN_93; // @[ibex_core.scala 85:16 156:24]
  wire  _GEN_192 = 3'h2 == state ? 1'h0 : _GEN_138; // @[ibex_core.scala 85:16 166:28]
  wire [17:0] _GEN_193 = 3'h2 == state ? 18'h0 : _GEN_139; // @[ibex_core.scala 85:16 167:25]
  wire [63:0] _GEN_194 = 3'h2 == state ? 64'h0 : _GEN_140; // @[ibex_core.scala 168:16 85:16]
  wire [17:0] _GEN_198 = 3'h1 == state ? _io_Input_GB_addr_T_4 : 18'h0; // @[ibex_core.scala 85:16 125:24]
  wire [63:0] _GEN_199 = 3'h1 == state ? io_DQ : 64'h0; // @[ibex_core.scala 85:16 126:30]
  wire  _GEN_202 = 3'h1 == state ? 1'h0 : _GEN_192; // @[ibex_core.scala 85:16 137:28]
  wire [17:0] _GEN_203 = 3'h1 == state ? 18'h0 : _GEN_193; // @[ibex_core.scala 85:16 138:25]
  wire [63:0] _GEN_204 = 3'h1 == state ? 64'h0 : _GEN_194; // @[ibex_core.scala 139:16 85:16]
  wire  _GEN_205 = 3'h1 == state ? 1'h0 : _GEN_142; // @[ibex_core.scala 85:16 141:21]
  wire [15:0] _GEN_207 = 3'h1 == state ? 16'h0 : _GEN_144; // @[ibex_core.scala 85:16 143:24]
  wire [15:0] _GEN_208 = 3'h1 == state ? 16'h0 : _GEN_145; // @[ibex_core.scala 85:16 144:24]
  wire [15:0] _GEN_209 = 3'h1 == state ? 16'h0 : _GEN_146; // @[ibex_core.scala 85:16 145:25]
  wire [15:0] _GEN_210 = 3'h1 == state ? 16'h0 : _GEN_147; // @[ibex_core.scala 85:16 146:24]
  wire [17:0] _GEN_264 = 3'h0 == state ? 18'h0 : _GEN_198; // @[ibex_core.scala 85:16 115:24]
  wire [17:0] _GEN_267 = 3'h0 == state ? 18'h0 : _GEN_203; // @[ibex_core.scala 85:16 119:25]
  assign io_DQ_out = 3'h0 == state ? 64'h0 : _GEN_204; // @[ibex_core.scala 120:16 85:16]
  assign io_Input_GB_write_en = 3'h0 == state ? 1'h0 : 3'h1 == state; // @[ibex_core.scala 85:16 113:28]
  assign io_Input_GB_read_en = 1'h0; // @[ibex_core.scala 85:16 114:27]
  assign io_Input_GB_addr = _GEN_264[15:0];
  assign io_Input_GB_data_write = 3'h0 == state ? 64'h0 : _GEN_199; // @[ibex_core.scala 85:16 116:30]
  assign io_PE_en_0 = 3'h0 == state ? 1'h0 : _GEN_205; // @[ibex_core.scala 44:12 85:16]
  assign io_PE_en_1 = 3'h0 == state ? 1'h0 : _GEN_205; // @[ibex_core.scala 44:12 85:16]
  assign io_PE_en_2 = 3'h0 == state ? 1'h0 : _GEN_205; // @[ibex_core.scala 44:12 85:16]
  assign io_PE_en_3 = 3'h0 == state ? 1'h0 : _GEN_205; // @[ibex_core.scala 44:12 85:16]
  assign io_PE_en_4 = 3'h0 == state ? 1'h0 : _GEN_205; // @[ibex_core.scala 44:12 85:16]
  assign io_PE_en_5 = 3'h0 == state ? 1'h0 : _GEN_205; // @[ibex_core.scala 44:12 85:16]
  assign io_PE_en_6 = 3'h0 == state ? 1'h0 : _GEN_205; // @[ibex_core.scala 44:12 85:16]
  assign io_PE_en_7 = 3'h0 == state ? 1'h0 : _GEN_205; // @[ibex_core.scala 44:12 85:16]
  assign io_PE_mode_0 = 1'h0; // @[ibex_core.scala 45:14 85:16]
  assign io_PE_mode_1 = 1'h0; // @[ibex_core.scala 45:14 85:16]
  assign io_PE_mode_2 = 1'h0; // @[ibex_core.scala 45:14 85:16]
  assign io_PE_mode_3 = 1'h0; // @[ibex_core.scala 45:14 85:16]
  assign io_PE_mode_4 = 1'h0; // @[ibex_core.scala 45:14 85:16]
  assign io_PE_mode_5 = 1'h0; // @[ibex_core.scala 45:14 85:16]
  assign io_PE_mode_6 = 1'h0; // @[ibex_core.scala 45:14 85:16]
  assign io_PE_mode_7 = 1'h0; // @[ibex_core.scala 45:14 85:16]
  assign io_PE_addrA_0 = 3'h0 == state ? 16'h0 : _GEN_207; // @[ibex_core.scala 46:15 85:16]
  assign io_PE_addrA_1 = 3'h0 == state ? 16'h0 : _GEN_207; // @[ibex_core.scala 46:15 85:16]
  assign io_PE_addrA_2 = 3'h0 == state ? 16'h0 : _GEN_207; // @[ibex_core.scala 46:15 85:16]
  assign io_PE_addrA_3 = 3'h0 == state ? 16'h0 : _GEN_207; // @[ibex_core.scala 46:15 85:16]
  assign io_PE_addrA_4 = 3'h0 == state ? 16'h0 : _GEN_207; // @[ibex_core.scala 46:15 85:16]
  assign io_PE_addrA_5 = 3'h0 == state ? 16'h0 : _GEN_207; // @[ibex_core.scala 46:15 85:16]
  assign io_PE_addrA_6 = 3'h0 == state ? 16'h0 : _GEN_207; // @[ibex_core.scala 46:15 85:16]
  assign io_PE_addrA_7 = 3'h0 == state ? 16'h0 : _GEN_207; // @[ibex_core.scala 46:15 85:16]
  assign io_PE_addrB_0 = 3'h0 == state ? 16'h0 : _GEN_208; // @[ibex_core.scala 47:15 85:16]
  assign io_PE_addrB_1 = 3'h0 == state ? 16'h0 : _GEN_208; // @[ibex_core.scala 47:15 85:16]
  assign io_PE_addrB_2 = 3'h0 == state ? 16'h0 : _GEN_208; // @[ibex_core.scala 47:15 85:16]
  assign io_PE_addrB_3 = 3'h0 == state ? 16'h0 : _GEN_208; // @[ibex_core.scala 47:15 85:16]
  assign io_PE_addrB_4 = 3'h0 == state ? 16'h0 : _GEN_208; // @[ibex_core.scala 47:15 85:16]
  assign io_PE_addrB_5 = 3'h0 == state ? 16'h0 : _GEN_208; // @[ibex_core.scala 47:15 85:16]
  assign io_PE_addrB_6 = 3'h0 == state ? 16'h0 : _GEN_208; // @[ibex_core.scala 47:15 85:16]
  assign io_PE_addrB_7 = 3'h0 == state ? 16'h0 : _GEN_208; // @[ibex_core.scala 47:15 85:16]
  assign io_PE_length_0 = 3'h0 == state ? 16'h0 : _GEN_209; // @[ibex_core.scala 48:16 85:16]
  assign io_PE_length_1 = 3'h0 == state ? 16'h0 : _GEN_209; // @[ibex_core.scala 48:16 85:16]
  assign io_PE_length_2 = 3'h0 == state ? 16'h0 : _GEN_209; // @[ibex_core.scala 48:16 85:16]
  assign io_PE_length_3 = 3'h0 == state ? 16'h0 : _GEN_209; // @[ibex_core.scala 48:16 85:16]
  assign io_PE_length_4 = 3'h0 == state ? 16'h0 : _GEN_209; // @[ibex_core.scala 48:16 85:16]
  assign io_PE_length_5 = 3'h0 == state ? 16'h0 : _GEN_209; // @[ibex_core.scala 48:16 85:16]
  assign io_PE_length_6 = 3'h0 == state ? 16'h0 : _GEN_209; // @[ibex_core.scala 48:16 85:16]
  assign io_PE_length_7 = 3'h0 == state ? 16'h0 : _GEN_209; // @[ibex_core.scala 48:16 85:16]
  assign io_PE_width_0 = 3'h0 == state ? 16'h0 : _GEN_210; // @[ibex_core.scala 49:15 85:16]
  assign io_PE_width_1 = 3'h0 == state ? 16'h0 : _GEN_210; // @[ibex_core.scala 49:15 85:16]
  assign io_PE_width_2 = 3'h0 == state ? 16'h0 : _GEN_210; // @[ibex_core.scala 49:15 85:16]
  assign io_PE_width_3 = 3'h0 == state ? 16'h0 : _GEN_210; // @[ibex_core.scala 49:15 85:16]
  assign io_PE_width_4 = 3'h0 == state ? 16'h0 : _GEN_210; // @[ibex_core.scala 49:15 85:16]
  assign io_PE_width_5 = 3'h0 == state ? 16'h0 : _GEN_210; // @[ibex_core.scala 49:15 85:16]
  assign io_PE_width_6 = 3'h0 == state ? 16'h0 : _GEN_210; // @[ibex_core.scala 49:15 85:16]
  assign io_PE_width_7 = 3'h0 == state ? 16'h0 : _GEN_210; // @[ibex_core.scala 49:15 85:16]
  assign io_Output_GB_write_en = 1'h0; // @[ibex_core.scala 85:16 114:27]
  assign io_Output_GB_read_en = 3'h0 == state ? 1'h0 : _GEN_202; // @[ibex_core.scala 85:16 118:28]
  assign io_Output_GB_addr = _GEN_267[15:0];
  assign io_Output_GB_data_write = 64'h0; // @[ibex_core.scala 53:27]
  always @(posedge clock) begin
    if (reset) begin // @[ibex_core.scala 66:22]
      state <= 3'h0; // @[ibex_core.scala 66:22]
    end else if (3'h0 == state) begin // @[ibex_core.scala 85:16]
      if (op == 2'h0) begin // @[ibex_core.scala 87:27]
        state <= 3'h0; // @[ibex_core.scala 88:15]
      end else if (op == 2'h1) begin // @[ibex_core.scala 90:32]
        state <= 3'h1; // @[ibex_core.scala 93:15]
      end else begin
        state <= _GEN_9;
      end
    end else if (3'h1 == state) begin // @[ibex_core.scala 85:16]
      state <= {{2'd0}, _GEN_31};
    end else if (3'h2 == state) begin // @[ibex_core.scala 85:16]
      state <= 3'h0; // @[ibex_core.scala 158:13]
    end else begin
      state <= _GEN_136;
    end
    if (reset) begin // @[ibex_core.scala 68:27]
      Input_addr <= 16'h0; // @[ibex_core.scala 68:27]
    end else if (3'h0 == state) begin // @[ibex_core.scala 85:16]
      if (!(op == 2'h0)) begin // @[ibex_core.scala 87:27]
        if (op == 2'h1) begin // @[ibex_core.scala 90:32]
          Input_addr <= io_DQ[15:0]; // @[ibex_core.scala 91:20]
        end
      end
    end
    if (reset) begin // @[ibex_core.scala 69:29]
      Input_length <= 16'h0; // @[ibex_core.scala 69:29]
    end else if (3'h0 == state) begin // @[ibex_core.scala 85:16]
      if (!(op == 2'h0)) begin // @[ibex_core.scala 87:27]
        if (op == 2'h1) begin // @[ibex_core.scala 90:32]
          Input_length <= io_DQ[31:16]; // @[ibex_core.scala 92:22]
        end
      end
    end
    if (reset) begin // @[ibex_core.scala 70:26]
      vecA_addr <= 16'h0; // @[ibex_core.scala 70:26]
    end else if (3'h0 == state) begin // @[ibex_core.scala 85:16]
      if (!(op == 2'h0)) begin // @[ibex_core.scala 87:27]
        if (!(op == 2'h1)) begin // @[ibex_core.scala 90:32]
          vecA_addr <= _GEN_5;
        end
      end
    end
    if (reset) begin // @[ibex_core.scala 71:26]
      vecB_addr <= 16'h0; // @[ibex_core.scala 71:26]
    end else if (3'h0 == state) begin // @[ibex_core.scala 85:16]
      if (!(op == 2'h0)) begin // @[ibex_core.scala 87:27]
        if (!(op == 2'h1)) begin // @[ibex_core.scala 90:32]
          vecB_addr <= _GEN_6;
        end
      end
    end
    if (reset) begin // @[ibex_core.scala 72:27]
      vec_length <= 16'h0; // @[ibex_core.scala 72:27]
    end else if (3'h0 == state) begin // @[ibex_core.scala 85:16]
      if (!(op == 2'h0)) begin // @[ibex_core.scala 87:27]
        if (!(op == 2'h1)) begin // @[ibex_core.scala 90:32]
          vec_length <= _GEN_7;
        end
      end
    end
    if (reset) begin // @[ibex_core.scala 73:26]
      vec_width <= 16'h0; // @[ibex_core.scala 73:26]
    end else if (3'h0 == state) begin // @[ibex_core.scala 85:16]
      if (!(op == 2'h0)) begin // @[ibex_core.scala 87:27]
        if (!(op == 2'h1)) begin // @[ibex_core.scala 90:32]
          vec_width <= _GEN_8;
        end
      end
    end
    if (reset) begin // @[ibex_core.scala 74:28]
      Output_addr <= 16'h0; // @[ibex_core.scala 74:28]
    end else if (3'h0 == state) begin // @[ibex_core.scala 85:16]
      if (!(op == 2'h0)) begin // @[ibex_core.scala 87:27]
        if (!(op == 2'h1)) begin // @[ibex_core.scala 90:32]
          Output_addr <= _GEN_10;
        end
      end
    end
    if (reset) begin // @[ibex_core.scala 75:30]
      Output_length <= 16'h0; // @[ibex_core.scala 75:30]
    end else if (3'h0 == state) begin // @[ibex_core.scala 85:16]
      if (!(op == 2'h0)) begin // @[ibex_core.scala 87:27]
        if (!(op == 2'h1)) begin // @[ibex_core.scala 90:32]
          Output_length <= _GEN_11;
        end
      end
    end
    if (reset) begin // @[ibex_core.scala 76:31]
      current_length <= 16'h0; // @[ibex_core.scala 76:31]
    end else if (!(3'h0 == state)) begin // @[ibex_core.scala 85:16]
      if (3'h1 == state) begin // @[ibex_core.scala 85:16]
        if (_T_13 >= Input_length) begin // @[ibex_core.scala 127:49]
          current_length <= 16'h0; // @[ibex_core.scala 128:24]
        end else begin
          current_length <= _T_13; // @[ibex_core.scala 132:24]
        end
      end else if (!(3'h2 == state)) begin // @[ibex_core.scala 85:16]
        current_length <= _GEN_141;
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  state = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  Input_addr = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  Input_length = _RAND_2[15:0];
  _RAND_3 = {1{`RANDOM}};
  vecA_addr = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  vecB_addr = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  vec_length = _RAND_5[15:0];
  _RAND_6 = {1{`RANDOM}};
  vec_width = _RAND_6[15:0];
  _RAND_7 = {1{`RANDOM}};
  Output_addr = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  Output_length = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  current_length = _RAND_9[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
