`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/18 01:34:45
// Design Name: 
// Module Name: demortl
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


module demortl#(
    parameter DMA_BUS_WIDTH = 32,//
    parameter DMA_READ_BUFFER_DEPTH = 32,//Byte
    parameter DMA_WRITE_BUFFER_DEPTH = 32,
    parameter IN_PACKET_BUFFER_DEPTH = 32,//Byte
    parameter OUT_PACKET_BUFFER_DEPTH = 32,//
    parameter FLUSH_OUT_PACKET_BUFFER_THRESHOLD = 8,//
    parameter HEADER_WORD_WIDTH = DMA_BUS_WIDTH,//
    parameter PACKET_WIDTH = 32,//
    parameter NUM_OUTPUTS = 256,//
    parameter NUM_TICKS = 16,//
    parameter DEBUG = 1 // logging will be enabled if DEBUG is non-zero.
)(
    input clk,
    input rst,

    input [31:0] conf_info_tx_size,
    input [31:0] conf_info_rx_size,
    input conf_done,

    input dma_read_ctrl_ready,
    output dma_read_ctrl_valid,
    output [31:0] dma_read_ctrl_data_index,
    output [31:0] dma_read_ctrl_data_length,
    output [2:0] dma_read_ctrl_data_size,

    output dma_read_chnl_ready,
    input dma_read_chnl_valid,
    input [DMA_BUS_WIDTH-1:0] dma_read_chnl_data,

    input dma_write_ctrl_ready,
    output dma_write_ctrl_valid,
    output [31:0] dma_write_ctrl_data_index,
    output [31:0] dma_write_ctrl_data_length,
    output [2:0] dma_write_ctrl_data_size,

    input dma_write_chnl_ready,
    output dma_write_chnl_valid,
    output [DMA_BUS_WIDTH-1:0] dma_write_chnl_data,

    output acc_done

);

    // demortl
    wire ipbuf_empty;
    wire ren_to_ipbuf;
    wire [PACKET_WIDTH-1:0] ipbuf_dout;//64bit
    wire packet_out_valid;
//    wire [$clog2(NUM_OUTPUTS)-1:0] packet_out;//8bit
    wire [PACKET_WIDTH-1:0] packet_out;
    wire rst_work;

demortl_controller #(
        .DMA_BUS_WIDTH(DMA_BUS_WIDTH),
        .DMA_READ_BUFFER_DEPTH (DMA_READ_BUFFER_DEPTH),
        .DMA_WRITE_BUFFER_DEPTH (DMA_WRITE_BUFFER_DEPTH),
        .IN_PACKET_BUFFER_DEPTH (IN_PACKET_BUFFER_DEPTH),
        .OUT_PACKET_BUFFER_DEPTH (OUT_PACKET_BUFFER_DEPTH),
        .FLUSH_OUT_PACKET_BUFFER_THRESHOLD(FLUSH_OUT_PACKET_BUFFER_THRESHOLD),
        .PACKET_WIDTH(PACKET_WIDTH),
        .HEADER_WORD_WIDTH(HEADER_WORD_WIDTH),
        .NUM_OUTPUTS(NUM_OUTPUTS),
        .NUM_TICKS(NUM_TICKS)
    ) demortl_controller_inst (
        .clk(clk),
        .rst(rst),
        .conf_info_tx_size(conf_info_tx_size),
        .conf_info_rx_size(conf_info_rx_size),
        .conf_done(conf_done),
        .dma_read_ctrl_ready(dma_read_ctrl_ready),
        .dma_read_ctrl_valid(dma_read_ctrl_valid),
        .dma_read_ctrl_data_index(dma_read_ctrl_data_index),
        .dma_read_ctrl_data_length(dma_read_ctrl_data_length),
        .dma_read_ctrl_data_size(dma_read_ctrl_data_size),
        .dma_read_chnl_ready(dma_read_chnl_ready),
        .dma_read_chnl_valid(dma_read_chnl_valid),
        .dma_read_chnl_data(dma_read_chnl_data),
        .dma_write_ctrl_ready(dma_write_ctrl_ready),
        .dma_write_ctrl_valid(dma_write_ctrl_valid),
        .dma_write_ctrl_data_index(dma_write_ctrl_data_index),
        .dma_write_ctrl_data_length(dma_write_ctrl_data_length),
        .dma_write_ctrl_data_size(dma_write_ctrl_data_size),
        .dma_write_chnl_ready(dma_write_chnl_ready),
        .dma_write_chnl_valid(dma_write_chnl_valid),
        .dma_write_chnl_data(dma_write_chnl_data),
        .acc_done(acc_done),
        .ipbuf_empty(ipbuf_empty),
        .ren_to_ipbuf(ren_to_ipbuf),
        .ipbuf_dout(ipbuf_dout),
        .packet_out_valid(packet_out_valid),
        .packet_out(packet_out),
        .rst_work(rst_work)
        );       

    
mac_core #(.PACKET_WIDTH(PACKET_WIDTH))mac_core_inst(
    .clk(clk),
    .rst(rst),
    .ipbuf_empty(ipbuf_empty),
    .ren_to_ipbuf(ren_to_ipbuf),
    .data_in(ipbuf_dout),//64bit
    .packet_out_valid(packet_out_valid),
    .data_out(packet_out),//64bit
    .rst_work(rst_work)
);

//work as SRAM, print 1 clk-period later    
    
endmodule
