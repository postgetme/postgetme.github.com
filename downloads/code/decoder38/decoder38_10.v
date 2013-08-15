module decoder38_10 (i_sel, i_opt, o_y);
    input [2:0] i_sel;
    input i_opt;
    output reg [7:0] o_y;
    
    always @ (i_sel or i_opt)
        begin
            if (i_sel == 1)
                o_y = ~base_decoder38(i_sel);
            else
                o_y = base_decoder38(i_sel);
        end
    
    function [7:0] base_decoder38;
        input [2:0] i_sel;      //咦？参数名可以一样吗？
        
        //function内部不能出现always语句
        /*
        always @ (i_sel)
            begin
                case (i_sel)
                    3'd0: func_decoder38 = 8'b1111_1110;
                    3'd1: func_decoder38 = 8'b1111_1101;
                    3'd2: func_decoder38 = 8'b1111_1011;
                    3'd3: func_decoder38 = 8'b1111_0111;
                    3'd4: func_decoder38 = 8'b1110_1111;
                    3'd5: func_decoder38 = 8'b1101_1111;
                    3'd6: func_decoder38 = 8'b1011_1111;
                    3'd7: func_decoder38 = 8'b0111_1111;
                endcase
            end
        */
        
        assign base_decoder38 = ~(1 << i_sel);
    endfunction
    
endmodule
