module decoder38_10 (i_sel, i_opt, o_y);
    input [2:0] i_sel;
    input i_opt;
    output reg [7:0] o_y;
    
    always @ (i_sel or i_opt)
        begin
            if (i_opt == 1'b1)
                o_y = ~base_decoder38 (i_sel);
            else
                o_y = base_decoder38 (i_sel);
        end
    
    function [7:0] base_decoder38;
        input [2:0] i_sel;
        
        begin        
            base_decoder38 = ~(8'd1 << i_sel);
        end
        
    endfunction
    
endmodule
