module decoder38_7 (i_sel, i_opt, o_y);
    input [2:0] i_sel;
    input i_opt;
    output [7:0] o_y;
    reg [7:0] r_y;
    integer i;    
    
    always @ (i_sel)
        begin
            r_y = 8'hff;
        
            for (i = 0; i < 8; i = i + 1)
                begin
                    if (i == i_sel)
                        r_y[i] = 0;
                end
        end

    assign o_y = (i_opt == 1'b1) ? ~r_y : r_y;

endmodule
