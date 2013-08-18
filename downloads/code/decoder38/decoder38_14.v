module decoder38_14_2 (i_sel, i_opt, o_y);
    input [2:0] i_sel;
    input i_opt;
    output reg [7:0] o_y;

    always @ (i_sel or i_opt)
        begin
            case ({i_sel[2:0], i_opt})
                3'd0, 1'b0: o_y = 8'b1111_1110;
                3'd1, 1'b0: o_y = 8'b1111_1101;
                3'd2, 1'b0: o_y = 8'b1111_1011;
                3'd3, 1'b0: o_y = 8'b1111_0111;
                3'd4, 1'b0: o_y = 8'b1110_1111;
                3'd5, 1'b0: o_y = 8'b1101_1111;
                3'd6, 1'b0: o_y = 8'b1011_1111;
                3'd7, 1'b0: o_y = 8'b0111_1111;
                3'd0, 1'b1: o_y = 8'b0000_0001;
                3'd1, 1'b1: o_y = 8'b0000_0010;
                3'd2, 1'b1: o_y = 8'b0000_0100;
                3'd3, 1'b1: o_y = 8'b0000_1000;
                3'd4, 1'b1: o_y = 8'b0001_0000;
                3'd5, 1'b1: o_y = 8'b0010_0000;
                3'd6, 1'b1: o_y = 8'b0100_0000;
                3'd7, 1'b1: o_y = 8'b1000_0000;
                default: o_y = 8'hff;
            endcase
        end
        
endmodule
