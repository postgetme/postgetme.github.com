module decoder38_11 (i_sel, i_opt, o_y);
    input [2:0] i_sel;
    input i_opt;
    output reg [7:0] o_y;
    reg [7:0] r_y;
    
    /*
    assign o_y = (i_opt == 1) ? task_decoder38 () : //写不下去了？？？上网查，发现任务调用只能在always中
    */
    
    always @ (i_sel or i_opt)
        begin
            base_decoder38 (i_sel, r_y);            
            o_y = (i_opt == 1) ? ~r_y : r_y;       
        end    
    
    task base_decoder38;
        input [2:0] i_sel;
        output [7:0] o_y;
        
        /*
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
                endcase
            end
            */
        assign o_y = ~(1 << i_sel);
    endtask
    
endmodule
