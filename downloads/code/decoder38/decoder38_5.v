module decoder38_5 (i_sel, i_opt, o_y);
    input [2:0] i_sel;
    input i_opt;
    output [7:0] o_y;
    wire [7:0] w_y;

    assign w_y = (i_sel == 3'd0) ? 8'b1111_1110 :
                 (i_sel == 3'd1) ? 8'b1111_1101 :
                 (i_sel == 3'd2) ? 8'b1111_1011 :
                 (i_sel == 3'd3) ? 8'b1111_0111 :
                 (i_sel == 3'd4) ? 8'b1110_1111 :
                 (i_sel == 3'd5) ? 8'b1101_1111 :
                 (i_sel == 3'd6) ? 8'b1011_1111 :
                 (i_sel == 3'd7) ? 8'b0111_1111 :
                 8'b1111_1111;
    
    assign o_y = (i_opt == 1'b1) ? ~w_y : w_y;

endmodule
