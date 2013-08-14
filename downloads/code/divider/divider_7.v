module divider_7 (i_clk, i_rst_n, o_div_clk);
    input i_clk;
    input i_rst_n;
    output reg o_div_clk;
    reg [1:0] r_cnt;
    
    always @ (posedge i_clk or negedge i_rst_n)
        begin
            if (!i_rst_n)
                r_cnt <= 0;
            else
                if (r_cnt == 2)
                    r_cnt <= 0;
                else
                    r_cnt <= r_cnt + 1'b1;
        end
        
    always @ (posedge i_clk or negedge i_rst_n)
        begin
            if (!i_rst_n)
                o_div_clk <= 0;
            else
                if (r_cnt <= 1)
                    o_div_clk <= 0;
                else
                    o_div_clk <= 1;
        end
                
endmodule
