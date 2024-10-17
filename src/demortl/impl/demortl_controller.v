`timescale 1 ns / 1 ps

module demortl_controller
#(
    parameter DMA_BUS_WIDTH = 32,
    parameter DMA_READ_BUFFER_DEPTH = 32,
    parameter DMA_WRITE_BUFFER_DEPTH = 32,
    parameter IN_PACKET_BUFFER_DEPTH = 4,
    parameter OUT_PACKET_BUFFER_DEPTH = 32,
    parameter FLUSH_OUT_PACKET_BUFFER_THRESHOLD = 8,
    parameter HEADER_WORD_WIDTH = DMA_BUS_WIDTH,
    parameter PACKET_WIDTH = 32,//change to 64
    parameter NUM_OUTPUTS = 256,
    parameter NUM_TICKS = 16,
    parameter DEBUG = 1 // logging will be enabled if DEBUG is non-zero.
)(
    input clk,
    input rst,

    input [31:0] conf_info_tx_size,
    input [31:0] conf_info_rx_size,
    input [31:0]  vec_length,
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

    output reg acc_done,

    // demortl
    output ipbuf_empty,
    input ren_to_ipbuf,
    output [PACKET_WIDTH-1:0] ipbuf_dout,//32bit
    input packet_out_valid,
//    input [$clog2(NUM_OUTPUTS)-1:0] packet_out,//8bit?why
    input [PACKET_WIDTH-1:0] packet_out,
    output reg rst_work

);
    localparam OUT_PACKET_WIDTH = $clog2(NUM_OUTPUTS);
//dma signal
    wire read_ready;
    reg read_valid;
    wire [63:0] rbuf_data;
    reg rbuf_ready;
    wire rbuf_empty;
    wire rbuf_aligned;
    wire [$clog2(DMA_READ_BUFFER_DEPTH):0] rbuf_size;

    wire write_ready;
    reg write_valid;
    reg [63:0] wbuf_data;
    reg wbuf_valid;
    wire wbuf_full;
    wire wbuf_aligned;
    wire [$clog2(DMA_WRITE_BUFFER_DEPTH):0] wbuf_size;
	
    reg [3:0] read_word_width;
    reg [3:0] write_word_width;
    wire [3:0] rbuf_data_width;
    wire [3:0] wbuf_data_width;
    reg [63:0] read_byte_offset;
    reg [63:0] write_byte_offset;
    reg [63:0] read_length;
    reg [63:0] write_length;

	dma_controller #(
	   .DMA_BUS_WIDTH(DMA_BUS_WIDTH),
       .READ_BUFFER_DEPTH(DMA_READ_BUFFER_DEPTH),
       .WRITE_BUFFER_DEPTH(DMA_WRITE_BUFFER_DEPTH),
       .DEBUG(DEBUG)
	) dma_controller_inst (
        .clk(clk),
        .rst(rst),
        .read_word_width(read_word_width),
        .read_byte_offset(read_byte_offset),
        .read_length(read_length),
        .read_valid(read_valid),
        .read_ready(read_ready),
        .rbuf_data(rbuf_data),
        .rbuf_empty(rbuf_empty),
        .rbuf_aligned(rbuf_aligned),
        .rbuf_size(rbuf_size),
        .rbuf_ready(rbuf_ready),
        .rbuf_data_width(rbuf_data_width),
        .write_word_width(write_word_width),
        .write_byte_offset(write_byte_offset),
        .write_length(write_length),
        .write_valid(write_valid),
        .write_ready(write_ready),
        .wbuf_data(wbuf_data),
        .wbuf_full(wbuf_full),
        .wbuf_valid(wbuf_valid),
        .wbuf_data_width(wbuf_data_width),
        .wbuf_aligned(wbuf_aligned),
        .wbuf_size(wbuf_size),
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
        .dma_write_chnl_data(dma_write_chnl_data)
    );

	wire [PACKET_WIDTH-1:0] dma_to_ipbuf;
	wire dma_to_ipbuf_valid;
    wire ipbuf_almost_full;

	fifo_buffer #(
        .DATA_WIDTH(PACKET_WIDTH),
        .BUFFER_DEPTH(IN_PACKET_BUFFER_DEPTH),
        .TYPE(1),
        .DEBUG(DEBUG)
    ) in_packet_buffer (
        .clk(clk),
        .rst(rst_work),
        .din(dma_to_ipbuf),
        .din_valid(dma_to_ipbuf_valid),
        .read_en(ren_to_ipbuf),
        .dout(ipbuf_dout),
        .empty(ipbuf_empty),
        .full(),
        .almost_full(ipbuf_almost_full)
    );

    wire [OUT_PACKET_WIDTH-1:0] opbuf_dout;
	wire opbuf_full;
    wire opbuf_empty;
    reg opbuf_ren;

	fifo_buffer #(
        .DATA_WIDTH(OUT_PACKET_WIDTH),
        .BUFFER_DEPTH(OUT_PACKET_BUFFER_DEPTH),
        .TYPE(2),
        .DEBUG(DEBUG)
    ) out_packet_buffer (
        .clk(clk),
        .rst(rst_work),
        .din(packet_out),
        .din_valid(packet_out_valid),
        .read_en(opbuf_ren),
        .dout(opbuf_dout),
        .empty(opbuf_empty),
        .full(opbuf_full),
        .almost_full()
    );//64 in 64 out


    localparam EXEC_STATE_WIDTH = 4;
    wire [EXEC_STATE_WIDTH-1:0] INIT_READ_HEADER = 0,
                                READ_HEADER = 1,
                                INIT_READ_IN_PACKETS_PAYLOAD = 2,
                                READ_IN_PACKETS_PAYLOAD = 3,
                                INIT_WRITE_HEADER_1 = 4,
                                INIT_WRITE_HEADER_2 = 5,
                                WRITE_HEADER = 6,
                                INIT_WRITE_OUT_PACKETS_PAYLOAD = 7,
                                WRITE_OUT_PACKETS_PAYLOAD = 8,
                                INIT_WRITE_TERMINATE_HEADER = 9,
                                WRITE_TERMINATE_HEADER = 10,
                                DONE  = 11,
                                IDLE  = 12;

    reg [EXEC_STATE_WIDTH-1:0] exec_state;
    reg [31:0] words_read;
    reg [31:0] words_written;
    reg [63:0] next_read_byte_offset;
    reg [63:0] next_write_byte_offset;

    reg [15:0] w_tick_idx;
    reg [15:0] w_num_elapsed_ticks;
    reg w_has_ticked;
    reg [3:0] w_exec_state_to_restore;
    reg [$clog2(OUT_PACKET_BUFFER_DEPTH):0] w_prev_tick_num_rem_packets;
    reg [$clog2(OUT_PACKET_BUFFER_DEPTH):0] w_curr_tick_num_rem_packets;
    reg [15:0] w_num_packets;
    reg [63:0] w_payload_address;
    reg w_has_packet_to_send;

    reg tick_before_next_frame;
    
    localparam HEADER_LENGTH_IN_BITS = 128;
    localparam DMA_HEADER_LENGTH = HEADER_LENGTH_IN_BITS / HEADER_WORD_WIDTH;
    localparam IN_PACKETS_PAYLOAD_WORD_WIDTH = (PACKET_WIDTH <= 8) ? 8 : ((PACKET_WIDTH <= 16) ? 16 : ((PACKET_WIDTH <= 32) ? 32 : 64));
    localparam OUT_PACKETS_PAYLOAD_WORD_WIDTH = (OUT_PACKET_WIDTH <= 8) ? 8 : ((OUT_PACKET_WIDTH <= 16) ? 16 : ((OUT_PACKET_WIDTH <= 32) ? 32 : 64));
    
    localparam DMA_FRAME_TYPE_WIDTH = 3;
    wire [DMA_FRAME_TYPE_WIDTH-1:0] DMA_FRAME_TYPE_NOOP = 0,
                                    DMA_FRAME_TYPE_NOOP_CONF = 1,
                                    DMA_FRAME_TYPE_TERMINATE  = 2,
                                    DMA_FRAME_TYPE_IN_PACKETS = 3,
                                    DMA_FRAME_TYPE_OUT_PACKETS = 4,
                                    DMA_FRAME_TYPE_TICK = 5,
                                    DMA_FRAME_TYPE_RESET = 6;
    
    reg [HEADER_WORD_WIDTH-1:0] r_dma_header_words [DMA_HEADER_LENGTH-1:0];
    wire [HEADER_WORD_WIDTH-1:0] w_dma_header_words [DMA_HEADER_LENGTH-1:0];

    wire [31:0] dma_frame_metadata;
    wire [DMA_FRAME_TYPE_WIDTH-1:0] dma_frame_type;
    
    assign dma_frame_type = dma_frame_metadata[DMA_FRAME_TYPE_WIDTH-1:0];
    
    // DMA_FRAME_TYPE_NOOP_CONF
    reg [63:0] noop_amount;
    reg [63:0] noop_num_past_clk_posedge;
    wire [63:0] noop_conf_amount;
    localparam NOOP_DELAY_TYPE_TICK = 0;
    localparam NOOP_DELAY_TYPE_CLK = 1;
    
    // DMA_FRAME_TYPE_IN_PACKETS
    wire [31:0] in_packets_length;
    wire [63:0] in_packets_byte_offset;

    // DMA_FRAME_TYPE_TICK
    wire [15:0] tick_total_amount;
    reg [15:0] tick_remaining_amount;
    wire [63:0] tick_delay;
    reg [63:0] clk_cycles_since_last_tick;

    // DMA_FRAME_TYPE_RESET
    reg [5:0] reset_rem_cycles;
    wire should_reset_tick_idx;
    wire should_reset_work;

    reg tick;

//decode the header as 64bit
//32bit dma_frame_type + 32bit in_packets_length + 32bit offset
    generate
         if (HEADER_WORD_WIDTH == 64) begin
            assign dma_frame_metadata = r_dma_header_words[0][31:0];

            // DMA_FRAME_TYPE_NOOP_CONF
            assign noop_conf_amount = r_dma_header_words[1];

            // DMA_FRAME_TYPE_IN_PACKETS
            assign in_packets_length = r_dma_header_words[0][63:32];
            assign in_packets_byte_offset = r_dma_header_words[1];

            // DMA_FRAME_TYPE_OUT_PACKETS
            assign w_dma_header_words[0][31:0] = DMA_FRAME_TYPE_OUT_PACKETS;
            assign w_dma_header_words[0][47:32] = w_num_packets;
            assign w_dma_header_words[0][63:48] = w_tick_idx;
            assign w_dma_header_words[1] = w_payload_address;

            // DMA_FRAME_TYPE_TICK
            assign tick_total_amount = r_dma_header_words[0][47:32];
            assign tick_delay = r_dma_header_words[1];
            
            // DMA_FRAME_TYPE_RESET
            assign should_reset_tick_idx = r_dma_header_words[0][32];
            assign should_reset_work = r_dma_header_words[0][33];

        end
    endgenerate
    
    always @(posedge clk) begin
        if (!rst || acc_done) begin
            if (DEBUG) begin
                $display ("[RTL][demortl_controller] reset");
            end // DEBUG
            
            acc_done <= 1'b0;
            read_valid <= 1'b0;
            write_valid <= 1'b0;
            rbuf_ready <= 1'b0;
            wbuf_valid <= 1'b0;
            next_read_byte_offset <= 0;
            next_write_byte_offset <= 0;
            w_has_ticked <= 1'b0;
            w_prev_tick_num_rem_packets <= 0;
            w_curr_tick_num_rem_packets <= 0;
            w_num_elapsed_ticks <= 0;
            opbuf_ren <= 1'b0;
            w_has_packet_to_send <= 1'b0;
            noop_amount <= 10000;
            noop_num_past_clk_posedge <= 0;
            tick_remaining_amount <= 0;
            clk_cycles_since_last_tick <= 0;
            tick <= 1'b0;
            rst_work <= 1'b0;
            reset_rem_cycles <=  0;
            tick_before_next_frame <= 1'b0;

            if (conf_done) begin
                next_write_byte_offset <= conf_info_tx_size;
                if (DEBUG) begin
                    $display ("[RTL][demortl_controller] changing state to INIT_READ_HEADER");
                end // DEBUG
                exec_state <= INIT_READ_HEADER;
            end
            else begin
                if (DEBUG) begin
                    $display ("[RTL][demortl_controller] changing state to IDLE");
                end // DEBUG
                exec_state <= IDLE;
            end
        end
        else begin

//??
            if (!rst_work) begin
                clk_cycles_since_last_tick <= 0;
                w_prev_tick_num_rem_packets <= 0;
                w_curr_tick_num_rem_packets <= 0;
                w_has_packet_to_send <= 1'b0;
            end

            tick <= 1'b0;
            if (tick) begin
                w_num_elapsed_ticks <= w_num_elapsed_ticks + 1;
                w_has_ticked <= 1'b1;
                w_prev_tick_num_rem_packets <= w_curr_tick_num_rem_packets;
                w_curr_tick_num_rem_packets <= packet_out_valid;
                clk_cycles_since_last_tick <= 0;
            end
            else begin
                w_curr_tick_num_rem_packets <= w_curr_tick_num_rem_packets + packet_out_valid;
                if (clk_cycles_since_last_tick != 0) begin
                    clk_cycles_since_last_tick <= clk_cycles_since_last_tick + 1;
                end
            end

            noop_num_past_clk_posedge <= noop_num_past_clk_posedge + 1;
//??

            case (exec_state)
                INIT_READ_HEADER: begin//back to
                        if (read_valid && read_ready) begin//read_ready is the output of dma_controller
                            if (DEBUG) begin
                                $display ("[RTL][demortl_controller] changing state to READ_HEADER");
                            end // DEBUG
                            exec_state <= READ_HEADER;
                            next_read_byte_offset <= next_read_byte_offset + read_word_width * read_length;//0+8*2=16btyes
                            words_read <= 0;
                            rbuf_ready <= 1'b1;
                            read_valid <= 1'b0;
                        end
                        else begin
                            read_valid <= 1'b1;
                            read_length <= DMA_HEADER_LENGTH;//128/64=2
                            read_word_width <= (HEADER_WORD_WIDTH >> 3);//64>>3=8bytes
                            read_byte_offset <= next_read_byte_offset;//initial =0.as have been reset to 0
                        end

                end
                READ_HEADER: begin
                    if (rbuf_ready && !rbuf_empty) begin//initial:rbuf_ready=1
                        if (DEBUG) begin
                            $display ("[RTL][demortl_controller] read word %d", rbuf_data[HEADER_WORD_WIDTH-1:0]);//64bit
                        end // DEBUG
                        r_dma_header_words[words_read] <= rbuf_data[HEADER_WORD_WIDTH-1:0];//what is initial rbuf_data??
                        //r_dma_header_words[0],[1] store header 64+64 bit
                        words_read <= words_read + 1;
                        if (words_read == read_length - 1) begin//read the last word
                            rbuf_ready <= 1'b0;//done reading
                            noop_num_past_clk_posedge <= 0;//??
                            if (DEBUG) begin
                                $display ("dma_frame_type: %d", dma_frame_type);
                            end // DEBUG
                        end
                    end
                    
                    //having read all header words, 
                    if (words_read == read_length) begin
                        if (tick_before_next_frame) begin
                            tick_before_next_frame <= 1'b0;
                            if (dma_frame_type != DMA_FRAME_TYPE_TERMINATE) begin
                                tick <= 1'b1;
                            end
                        end

                        if (w_has_ticked || tick || tick_before_next_frame || w_curr_tick_num_rem_packets >= FLUSH_OUT_PACKET_BUFFER_THRESHOLD) begin
                            // Need to write to memory all output packets, and once finished we will
                            // automatically come back to this state and resume the read operation.
                            exec_state <= INIT_WRITE_HEADER_1;
                            w_exec_state_to_restore <= READ_HEADER;
                        end
                        else begin
                            case (dma_frame_type)
                                DMA_FRAME_TYPE_NOOP: begin
                                    // A no-op header is unique in that it will cause the controller to continuously (re)read this
                                    // header until it has been modified to something actionable. In particular, a no-op header is
                                    // meant to be overwritten. However, the user must modify the header atomically. Specifically,
                                    // the dma_frame_type bits should be overwritten last and atomically, which can be done easily
                                    // as dma_frame_type is less than 8 bits. The no-op header essentially implements busy waiting.
                                    // By default, no-op waits for 10 000 clock cycles to occur.

                                    if (noop_num_past_clk_posedge >= noop_amount) begin
                                        if (DEBUG) begin
                                            $display ("[RTL][demortl_controller] no-op, changing state to INIT_READ_HEADER");
                                        end // DEBUG
                                        exec_state <= INIT_READ_HEADER;
                                        next_read_byte_offset <= next_read_byte_offset - read_word_width * read_length; // (re)read header
                                    end
                                end
                                DMA_FRAME_TYPE_NOOP_CONF: begin
                                    noop_amount <= noop_conf_amount;
                                    if (DEBUG) begin
                                        $display ("[RTL][demortl_controller] noop_amount: %d", noop_conf_amount);
                                        $display ("[RTL][demortl_controller] changing state to INIT_READ_HEADER");
                                    end // DEBUG
                                    exec_state <= INIT_READ_HEADER;
                                end
                                DMA_FRAME_TYPE_TERMINATE: begin
                                    if (DEBUG) begin
                                        $display ("[RTL][demortl_controller] changing state to INIT_WRITE_TERMINATE_HEADER");
                                    end // DEBUG
                                    exec_state <= INIT_WRITE_TERMINATE_HEADER;
                                end
                                DMA_FRAME_TYPE_IN_PACKETS: begin
                                    if (DEBUG) begin
                                        $display ("in_packets_length: %d", in_packets_length);
                                        $display ("in_packets_byte_offset: %d", in_packets_byte_offset);
                                    end // DEBUG
                                    if (in_packets_length == 0) begin
                                        if (DEBUG) begin
                                            $display ("[RTL][demortl_controller] no packets to read, changing state to INIT_READ_HEADER");
                                        end // DEBUG
                                        exec_state <= INIT_READ_HEADER;
                                    end
                                    else begin
                                        if (DEBUG) begin
                                            $display ("[RTL][demortl_controller] changing state to INIT_READ_IN_PACKETS_PAYLOAD");
                                        end // DEBUG
                                        exec_state <= INIT_READ_IN_PACKETS_PAYLOAD;
                                    end
                                end
                                DMA_FRAME_TYPE_TICK: begin
                                    if (!tick_remaining_amount || !tick_total_amount) begin
                                        if (DEBUG) begin
                                            $display ("[RTL][demortl_controller] changing state to INIT_READ_HEADER");
                                        end // DEBUG
                                        exec_state <= INIT_READ_HEADER;
                                        tick_remaining_amount <= 0;
                                    end
                                    else if (ipbuf_empty && clk_cycles_since_last_tick >= tick_delay && !tick) begin
                                        if (tick_total_amount == 1 || tick_remaining_amount == 1) begin
                                            tick_before_next_frame <= 1'b1;
                                        end
                                        else begin
                                            tick <= 1'b1;
                                        end
                                        if (tick_remaining_amount >= tick_total_amount) begin
                                            tick_remaining_amount <= tick_total_amount - 1;
                                            if (DEBUG) begin
                                                $display ("[RTL][demortl_controller] tick_delay: %d", tick_delay);
                                                $display ("[RTL][demortl_controller] tick_total_amount: %d", tick_total_amount);
                                            end // DEBUG
                                        end
                                        else begin
                                            tick_remaining_amount <= tick_remaining_amount - 1;
                                        end
                                    end
                                end
                                DMA_FRAME_TYPE_RESET: begin
                                    if (reset_rem_cycles) begin
                                        reset_rem_cycles <= reset_rem_cycles - 1;
                                        if (should_reset_tick_idx) begin
                                            w_tick_idx <= 0;
                                            w_num_elapsed_ticks <= 0;
                                            w_has_ticked <= 1'b0;
                                        end
                                        rst_work <= !should_reset_work;
                                        if (DEBUG) begin
                                            $display ("[RTL][demortl_controller] resetting tick_idx: %b, work: %b", should_reset_tick_idx, should_reset_work);
                                        end // DEBUG
                                    end
                                    else begin
                                        rst_work <= 1'b1;
                                        if (clk_cycles_since_last_tick > NUM_TICKS) begin
                                            if (DEBUG) begin
                                                $display ("[RTL][demortl_controller] done resetting, changing state to INIT_READ_HEADER");
                                            end // DEBUG
                                            exec_state <= INIT_READ_HEADER;
                                            reset_rem_cycles <= 0;
                                        end
                                    end
                                end
                            endcase
                        end
                    end
                end
                INIT_READ_IN_PACKETS_PAYLOAD: begin

                        if (read_valid && read_ready) begin//who generate read_ready??
                            if (DEBUG) begin
                                $display ("[RTL][demortl_controller] changing state to READ_IN_PACKETS_PAYLOAD");
                            end // DEBUG
                            exec_state <= READ_IN_PACKETS_PAYLOAD;
                            next_read_byte_offset <= (((in_packets_byte_offset + read_word_width * read_length - 1) | ((DMA_BUS_WIDTH >> 3)-1))+1);//?????
                            words_read <= 0;
                            rbuf_ready <= !ipbuf_almost_full;
                            read_valid <= 1'b0;
                        end
                        else begin//initial, as INIT_READ_HEADER done, read_valid=0
                            read_valid <= 1'b1;
                            read_length[63:32] <= 0;// send to dma_controller,64bit
                            read_length[31:0] <= in_packets_length;//in_packets_length is decode from header, which is 32 bit
                            read_word_width <= (IN_PACKETS_PAYLOAD_WORD_WIDTH >> 3);//PACKET_WIDTH:64>>3=8byte
                            read_byte_offset <= in_packets_byte_offset;//offset from header
                        end

                end
                READ_IN_PACKETS_PAYLOAD: begin
                    rbuf_ready <= !ipbuf_almost_full;
                    if (rbuf_ready && !rbuf_empty) begin
                        if (DEBUG) begin
                            $display ("[RTL][demortl_controller] read word %d", rbuf_data[PACKET_WIDTH-1:0]);          
                        end // DEBUG
                        words_read <= words_read + 1;
                        if (words_read == read_length - 1) begin//last,read in_packets_length times, each time 64bit from rbuf
                            if (DEBUG) begin
                                $display ("[RTL][demortl_controller] changing state to INIT_READ_HEADER");
                            end // DEBUG
                            exec_state <= INIT_READ_HEADER;
                            rbuf_ready <= 1'b0;
                        end
                    end
                end
                INIT_WRITE_HEADER_1: begin
                    exec_state <= INIT_WRITE_HEADER_2;
                    w_has_ticked <= 1'b0;
                    if (w_has_ticked) begin
                        w_tick_idx <= w_num_elapsed_ticks - 1;
                        w_num_packets <= w_prev_tick_num_rem_packets;
                    end
                    else begin
                        w_tick_idx <= w_num_elapsed_ticks;
                        w_num_packets <= w_curr_tick_num_rem_packets + packet_out_valid;
                        w_curr_tick_num_rem_packets <= 0;
                    end
                end
                INIT_WRITE_HEADER_2: begin
                    if (wbuf_aligned) begin
                        if (write_valid && write_ready) begin
                            if (DEBUG) begin
                                $display ("[RTL][demortl_controller] changing state to WRITE_HEADER");
                            end // DEBUG
                            exec_state <= WRITE_HEADER;
                            next_write_byte_offset <= next_write_byte_offset + write_word_width * write_length;
                            w_payload_address <= next_write_byte_offset + write_word_width * write_length; // same as next_write_byte_offset
                            words_written <= 0;
                            write_valid <= 1'b0;
                        end
                        else begin
                            write_valid <= 1'b1;
                            write_length <= DMA_HEADER_LENGTH;
                            write_word_width <= (HEADER_WORD_WIDTH >> 3);
                            write_byte_offset <= next_write_byte_offset;
                        end
                    end
                end
                WRITE_HEADER: begin
                    wbuf_valid <= 1'b0;
                    if (!wbuf_full && words_written < write_length) begin
                        if (DEBUG) begin
                            $display ("[RTL][demortl_controller] write word %d", w_dma_header_words[words_written]);
                        end // DEBUG
                        wbuf_data[HEADER_WORD_WIDTH-1:0] <= w_dma_header_words[words_written];
                        words_written <= words_written + 1;
                        wbuf_valid <= 1'b1;
                    end
                    else if (wbuf_full) begin
                        if (wbuf_valid) begin
                            if (DEBUG) begin
                                $display ("[RTL][demortl_controller] failed to write word %d", wbuf_data);
                            end // DEBUG
                            words_written <= words_written - 1;
                        end
                    end
                    else if (words_written == write_length) begin
                        if (w_num_packets) begin
                            if (DEBUG) begin
                                $display ("[RTL][demortl_controller] changing state to INIT_WRITE_OUT_PACKETS_PAYLOAD");
                            end // DEBUG
                            exec_state <= INIT_WRITE_OUT_PACKETS_PAYLOAD;
                        end
                        else begin
                            if (DEBUG) begin
                                $display ("[RTL][demortl_controller] empty payload, restoring state");
                            end // DEBUG
                            exec_state <= w_exec_state_to_restore;
                        end
                    end
                end
                INIT_WRITE_OUT_PACKETS_PAYLOAD: begin
                    if (wbuf_aligned) begin
                        if (write_valid && write_ready) begin
                            if (DEBUG) begin
                                $display ("[RTL][demortl_controller] changing state to WRITE_OUT_PACKETS_PAYLOAD");
                            end // DEBUG
                            exec_state <= WRITE_OUT_PACKETS_PAYLOAD;
                            next_write_byte_offset <= next_write_byte_offset + write_word_width * write_length;
                            words_written <= 0;
                            write_valid <= 1'b0;
                        end
                        else begin
                            write_valid <= 1'b1;
                            if (DMA_BUS_WIDTH > OUT_PACKETS_PAYLOAD_WORD_WIDTH) begin
                                // account for pad words
                                write_length <= ((w_num_packets-1) | ((DMA_BUS_WIDTH / OUT_PACKETS_PAYLOAD_WORD_WIDTH)-1))+1;
                            end
                            else begin
                                write_length <= w_num_packets;
                            end
                            write_word_width <= (OUT_PACKETS_PAYLOAD_WORD_WIDTH >> 3);
                            write_byte_offset <= next_write_byte_offset;
                        end
                    end
                end
                WRITE_OUT_PACKETS_PAYLOAD: begin
                    wbuf_valid <= 1'b0;
                    if (!wbuf_full && words_written < write_length) begin
                        if (words_written >= w_num_packets) begin
                            if (DEBUG) begin
                                $display ("[RTL][demortl_controller] writing pad word");
                            end // DEBUG
                            wbuf_data <= 0;
                            words_written <= words_written + 1;
                            wbuf_valid <= 1'b1;
                        end
                        else begin
                            if (w_has_packet_to_send) begin
                                if (DEBUG) begin
                                    $display ("[RTL][demortl_controller] write word %d", opbuf_dout);
                                end // DEBUG
                                if (OUT_PACKETS_PAYLOAD_WORD_WIDTH != OUT_PACKET_WIDTH) begin
                                    wbuf_data[(OUT_PACKETS_PAYLOAD_WORD_WIDTH == OUT_PACKET_WIDTH) ? OUT_PACKET_WIDTH : (OUT_PACKETS_PAYLOAD_WORD_WIDTH-1):OUT_PACKET_WIDTH] <= 0;
                                end
                                wbuf_data[OUT_PACKET_WIDTH-1:0] <= opbuf_dout;
                                words_written <= words_written + 1;
                                w_has_packet_to_send <= 1'b0;
                                wbuf_valid <= 1'b1;
                            end
                            else begin
                                opbuf_ren <= !opbuf_ren;
                                w_has_packet_to_send <= opbuf_ren;
                            end
                        end
                    end
                    else if (wbuf_full) begin
                        if (wbuf_valid) begin
                            if (DEBUG) begin
                                $display ("[RTL][demortl_controller] failed to write word %d", wbuf_data);
                            end // DEBUG
                            words_written <= words_written - 1;
                            w_has_packet_to_send <= 1'b1;
                        end
                    end
                    else if (words_written == write_length) begin
                        if (DEBUG) begin
                            $display ("[RTL][demortl_controller] restoring state");
                        end // DEBUG
                        exec_state <= w_exec_state_to_restore;
                    end
                end
                INIT_WRITE_TERMINATE_HEADER: begin
                    if (wbuf_aligned) begin
                        if (write_valid && write_ready) begin
                            if (DEBUG) begin
                                $display ("[RTL][demortl_controller] changing state to WRITE_TERMINATE_HEADER");
                            end // DEBUG
                            exec_state <= WRITE_TERMINATE_HEADER;
                            next_write_byte_offset <= next_write_byte_offset + write_word_width * write_length;
                            words_written <= 0;
                            write_valid <= 1'b0;
                        end
                        else begin
                            write_valid <= 1'b1;
                            write_length <= DMA_HEADER_LENGTH;
                            write_word_width <= (HEADER_WORD_WIDTH >> 3);
                            write_byte_offset <= next_write_byte_offset;
                        end
                    end
                end
                WRITE_TERMINATE_HEADER: begin
                    wbuf_valid <= 1'b0;
                    if (!wbuf_full && words_written < write_length) begin
                        if (words_written == 0) begin
                            if (DEBUG) begin
                                $display ("[RTL][demortl_controller] write word %d", DMA_FRAME_TYPE_TERMINATE);
                            end // DEBUG
                            wbuf_data[DMA_FRAME_TYPE_WIDTH-1:0] <= DMA_FRAME_TYPE_TERMINATE;
                            wbuf_data[HEADER_WORD_WIDTH-1:DMA_FRAME_TYPE_WIDTH+2] <= 0;
                        end
                        else begin
                            if (DEBUG) begin
                                $display ("[RTL][demortl_controller] write word %d", 0);
                            end // DEBUG
                            wbuf_data[HEADER_WORD_WIDTH-1:0] <= 0;
                        end
                        words_written <= words_written + 1;
                        wbuf_valid <= 1'b1;
                    end
                    else if (wbuf_full) begin
                        if (wbuf_valid) begin
                            if (DEBUG) begin
                                $display ("[RTL][demortl_controller] failed to write word %d", wbuf_data);
                            end // DEBUG
                            words_written <= words_written - 1;
                        end
                    end
                    else if (words_written == write_length) begin
                        if (DEBUG) begin
                            $display ("[RTL][demortl_controller] changing state to DONE");
                        end // DEBUG
                        exec_state <= DONE;
                    end
                end
                DONE: begin
                    if (read_ready && write_ready) begin
                        acc_done <= 1'b1;
                    end
                end
                IDLE: begin
                    if (conf_done) begin
                        next_write_byte_offset <= conf_info_tx_size;
                        if (DEBUG) begin
                            $display ("[RTL][demortl_controller] changing state to INIT_READ_HEADER");
                        end // DEBUG
                        exec_state <= INIT_READ_HEADER;
                    end
                end
            endcase
        end
    end

    assign dma_to_ipbuf_valid = rbuf_ready && !rbuf_empty && (exec_state == READ_IN_PACKETS_PAYLOAD);
    assign dma_to_ipbuf = rbuf_data[PACKET_WIDTH-1:0];
    assign rbuf_data_width = read_word_width;
    assign wbuf_data_width = write_word_width;


endmodule
