module decoder38_12 (i_sel, i_opt, o_y);
    input [2:0] i_sel;
    input i_opt;
    output [7:0] o_y;
    wire [7:0] w_y;
    
    assign o_y = (i_opt == 1'b1) ? ~w_y : w_y;

    decoder38_12_base decoder38_12_base_entity (.i_sel (i_sel), .o_y (w_y));
      
endmodule
