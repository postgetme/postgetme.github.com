module bus_expand (
    io_ad,
    i_ah,
    i_wr,
    i_rd,
    i_ale,
		
    i_key,
    o_led
);

inout [7:0] io_ad;
input [7:0] i_ah;
input i_wr;
input i_rd;
input i_ale;

input [7:0] i_key;
output reg [7:0] o_led;

reg [7:0] r_al;
wire [15:0] w_addr;
wire [7:0] w_out_data;
reg [7:0] r_in_data;
	
always @ (negedge i_ale)
    begin
        r_al <= io_ad;
    end
    
assign w_addr[15:0] = {i_ah[7:0], r_al[7:0]};
assign io_ad = (~i_rd) ? r_in_data : 8'hzz;
assign w_out_data = io_ad;

always @ (negedge i_wr)
    begin
        if (w_addr == 16'h0001)
            begin
                o_led <= w_out_data;
            end
        /*
        else
            begin
                o_led <= 8'hff;
            end
        */
    end

always @ (/*negedge i_rd*/i_key or w_addr)
    begin
        if (w_addr == 16'h0002)
            begin
                r_in_data <= i_key;
            end
        else
            begin
                r_in_data <= 8'hzz;
            end
    end

endmodule
