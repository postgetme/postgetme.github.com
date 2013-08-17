module decoder38_8 (i_sel, i_opt, o_y);
    input [2:0] i_sel;
    input i_opt;
    output [7:0] o_y;
    wire [7:0] w_y;
    
    assign w_y = ~(8'd1 << i_sel);
    assign o_y = (i_opt == 1'b1) ? ~w_y : w_y;

endmodule
