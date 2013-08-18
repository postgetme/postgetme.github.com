module decoder38_12_base (i_sel, o_y);
    input [2:0] i_sel;
    output reg [7:0] o_y;
    
    always @ (i_sel)
        begin
            case (i_sel)
                3'd0: o_y = 8'b1111_1110;
                3'd1: o_y = 8'b1111_1101;
                3'd2: o_y = 8'b1111_1011;
                3'd3: o_y = 8'b1111_0111;
                3'd4: o_y = 8'b1110_1111;
                3'd5: o_y = 8'b1101_1111;
                3'd6: o_y = 8'b1011_1111;
                3'd7: o_y = 8'b0111_1111;
                default: o_y = 8'b1111_1111;
            endcase
        end
        
endmodule
