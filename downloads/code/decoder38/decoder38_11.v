module decoder38_11 (i_sel, i_opt, o_y);
    input [2:0] i_sel;
    input i_opt;
    output reg [7:0] o_y;
    reg [7:0] r_y;
    
    always @ (i_sel or i_opt)
        begin
            base_decoder38 (i_sel, r_y);            
            o_y = (i_opt == 1) ? ~r_y : r_y;       
        end    
    
    task base_decoder38;
        input [2:0] i_sel;
        output [7:0] o_y;
        
        begin
            o_y = ~(8'd1 << i_sel);
        end
        
    endtask
    
endmodule
