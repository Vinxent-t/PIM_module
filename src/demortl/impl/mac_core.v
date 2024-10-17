`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/17 22:43:39
// Design Name: 
// Module Name: mac_core
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mac_core#(
parameter PACKET_WIDTH = 32,
parameter DEBUG = 1
)(
    input clk,
    input rst,
    input ipbuf_empty,
    output reg ren_to_ipbuf,
    input [PACKET_WIDTH-1:0] data_in,//64bit

    output reg packet_out_valid,
    output reg [PACKET_WIDTH-1:0] data_out,//8bit?? change to 64bit
    input  rst_work
    );
  
    wire mac_enable;
    reg a;
    reg b;            
    reg [PACKET_WIDTH-1:0] acc;
    integer i;
    //one 64bit-word compute one output
    always @(*) begin
        acc = 0;
        acc=data_in;
//        for (i = 0; i < 63; i = i + 2) begin
//
//             a = data_in[i];
//             b = data_in[i + 1];
//    
//            acc = acc + (a & b);//??
//        end
    end
    always@(posedge clk)begin
        if(!rst || rst_work)begin
            data_out <=0;
            packet_out_valid <= 1'b0;
            ren_to_ipbuf <= 1'b0;
        end
        else if(mac_enable) begin
			if(DEBUG == 1'b1)begin
				$dispaly("[HW][mac_core]packet_out %d",data_out);//print last period ans??
			end
            data_out <= acc;
            packet_out_valid <= 1'b1;
            ren_to_ipbuf <= 1'b1;
        end
        else begin
            data_out <= 0;
            packet_out_valid <= 1'b0;
            ren_to_ipbuf <= 1'b0;
        end
    end
    assign mac_enable = !ipbuf_empty;

endmodule
