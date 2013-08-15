module decoder38_4 (i_sel, i_opt, o_y);
    input [2:0] i_sel;
    input i_opt;
    output reg [7:0] o_y;
    reg [7:0] r_y;

    always @ (i_sel or i_opt)
        begin
            if (i_sel == 3'd0)      //使用if else会产生优先级逻辑
                r_y = 8'b1111_1110;
            else if (i_sel == 3'd1)
                r_y = 8'b1111_1101;
            else if (i_sel == 3'd2)
                r_y = 8'b1111_1011;
            else if (i_sel == 3'd3)
                r_y = 8'b1111_0111;
            else if (i_sel == 3'd4)
                r_y = 8'b1110_1111;
            else if (i_sel == 3'd5)
                r_y = 8'b1101_1111;
            else if (i_sel == 3'd6)
                r_y = 8'b1011_1111;
            else if (i_sel == 3'd7)
                r_y = 8'b0111_1111;
            else
                r_y = 8'hff;    //需要else，否则会生成锁在器
        end
        
    always @ (i_opt or r_y)
        begin
            if (i_opt == 1)
                o_y = ~r_y;
            else
                o_y = r_y;
        end

endmodule
