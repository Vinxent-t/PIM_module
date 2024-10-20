`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// buffer.v
//
// A simple buffer.
// Reads and writes are synchronous
// Reset is synchronous active low.
//
// NOTE: BUFFER_DEPTH has to be a power of 2 
// (Don't forget 1 is also a power of 2 :-) ).
//////////////////////////////////////////////////////////////////////////////////


module fifo_buffer
//volume is depth, each store a 64bit
#(
    parameter DATA_WIDTH = 32,//64
    parameter BUFFER_DEPTH = 4,//4
    parameter TYPE = 0,
    parameter DEBUG = 1 // logging will be enabled if DEBUG is non-zero.
)(
    input clk,
    input rst,
    input [DATA_WIDTH-1:0] din,
    input din_valid,
    input read_en,
    output [DATA_WIDTH-1:0] dout,
    output empty,
    output full,
    output almost_full
);
    
    localparam BUFFER_WIDTH = $clog2(BUFFER_DEPTH);

    /* 
    If BUFFER_DEPTH is 1 the logic needs to be different
    as read_pointer / write_pointer should not be used. Using
    generate statement to correctly generate logic 
    */
    generate
        if (BUFFER_DEPTH != 1) begin
            reg [DATA_WIDTH-1:0] data [BUFFER_DEPTH-1:0];//contains::4*64bit
            reg [BUFFER_WIDTH-1:0] read_pointer, write_pointer;//0~depth
            reg [BUFFER_WIDTH:0] status_counter;
            reg [DATA_WIDTH-1:0] output_data;
            
            assign empty = status_counter == 0;
            assign full = status_counter == BUFFER_DEPTH;
            assign almost_full = full || ((status_counter + din_valid) == BUFFER_DEPTH);//depth or depth-1
            assign dout = output_data;

            always@(posedge clk) begin
                if(din_valid) begin
                    $display("-----------");
                    if(!rst) $display("----but reset");
                end
                if (!rst) begin
                    data[0] <= 0;
                    read_pointer <= 0;
                    write_pointer <= 0;
                    status_counter <= 0;
                    output_data <= 0;
                end
                else begin
                    if(din_valid) begin
                        $display("-----------fifo_buffer full = %d",full);
                        $display("-----------status_counter = %d",status_counter);
                        $display("-----------din = %d",din);
                    end
                    if (!full && din_valid) begin
                        data[write_pointer] = din;
                        write_pointer = write_pointer + 1;
                        status_counter = status_counter + 1;
                        if (DEBUG) begin
                            if (TYPE == 0) begin
                                $display ("[RTL][buffer] wrote word %d, fifo %d has words-num: %d", din,TYPE, status_counter);
                            end
                            else if (TYPE == 1) begin
                                $display ("[RTL][demortl_controller][in_packet][buffer] wrote %d, fifo %d has words-num: %d", din,TYPE, status_counter);
                            end
                            else if (TYPE == 2) begin
                                $display ("[RTL][demortl_controller][out_packet][buffer] wrote %d, fifo %d has words-num: %d", din,TYPE, status_counter);
                            end
                        end // DEBUG
                    end
                    if (read_en && !empty) begin
                        output_data = data[read_pointer];
                        read_pointer = read_pointer + 1;
                        status_counter = status_counter - 1;
                        if (DEBUG) begin
                            if (TYPE == 1) 
                                $display ("in_packet_buffer is not empty, the ACCELERATOR should be computing");
                            if (TYPE == 0) begin
                                $display ("[RTL][buffer] read %d, fifo %d has words-num: %d", output_data,TYPE, status_counter);
                            end
                            else if (TYPE == 1) begin
                                $display ("[RTL][demortl_controller][in_packet][buffer] read %d, fifo %d has words-num: %d", output_data,TYPE, status_counter);
                                $display ("transform to ACCELERATOR");
                            end
                            else if (TYPE == 2) begin
                                $display ("[RTL][demortl_controller][out_packet][buffer] read %d, fifo %d has words-num: %d", output_data,TYPE, status_counter);
                            end
                        end // DEBUG
                    end
                end
            end
        end
        else begin
            reg [DATA_WIDTH-1:0] data;
            reg status_counter;
            reg [DATA_WIDTH-1:0] output_data;
            
            assign empty = status_counter == 0;
            assign full = status_counter == BUFFER_DEPTH;
            assign dout = output_data;

            always@(posedge clk) begin
                if (!rst) begin
                    data <= 0;
                    status_counter <= 0;
                    output_data <= 0;
                end
                else begin
                    if (!full && din_valid) begin
                        data = din;
                        status_counter = status_counter + 1;
                    end
                    if (read_en && !empty) begin
                        output_data = data;
                        status_counter = status_counter - 1;
                    end
                end
            end
        end
    endgenerate

endmodule
