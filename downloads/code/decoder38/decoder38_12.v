module decoder38_12 (i_sel, i_opt, o_y);
    input [2:0] i_sel;
    input i_opt;
    output [7:0] o_y;
    reg [7:0] r_y;
    
    assign o_y = (i_opt == 1) ? ~r_y : r_y;

    //decoder38 decoder38_instance (i_sel, o_y);
    //decoder38 decoder38_instance (.o_y (o_y), .i_sel (i_sel));
    decoder38 decoder38_entity (.i_sel (i_sel), .o_y (o_y));    //entity是不是更好一点？
    
endmodule
