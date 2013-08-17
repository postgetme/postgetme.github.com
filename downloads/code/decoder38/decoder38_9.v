module decoder38_9 (i_sel, i_opt, o_y);
    input [2:0] i_sel;
    input i_opt;
    output [7:0] o_y;
        
    assign o_y = (i_opt == 1'b1) ? ~(8'd1 << i_sel) : (8'd1 << i_sel);

endmodule
