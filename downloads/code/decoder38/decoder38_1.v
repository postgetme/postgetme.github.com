module decoder38_1 (i_sel, i_opt, o_y);
    input [2:0] i_sel;
    input i_opt;
    output [7:0] o_y;
    reg [7:0] r_y;

    always @ (i_sel)
        begin
            case (i_sel)
                3'b000: r_y = 8'b11111110;
                3'b001: r_y = 8'b11111101;
                3'b010: r_y = 8'b11111011;
                3'b011: r_y = 8'b11110111;
                3'b100: r_y = 8'b11101111;
                3'b101: r_y = 8'b11011111;
                3'b110: r_y = 8'b10111111;
                3'b111: r_y = 8'b01111111;
                default: r_y = 8'b11111111;
            endcase
        end
        
    assign o_y = (i_opt == 1'b1) ? ~r_y : r_y;

endmodule
