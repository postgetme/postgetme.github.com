module divider_6 (i_clk, i_rst_n, o_div_clk);
    input i_clk;
    input i_rst_n;
    output reg o_div_clk;
    reg [2:0] r_cnt;
    
    always @ (posedge i_clk or negedge i_rst_n)
        begin
            if (!i_rst_n)
                r_cnt <= 0;
            else
                if (r_cnt == 5)
                    r_cnt <= 0;
                else
                    r_cnt <= r_cnt + 1'b1;
        end
        
    always @ (posedge i_clk or negedge i_rst_n)
        begin
            if (!i_rst_n)
                o_div_clk <= 0;
            else
                if (r_cnt <= 2)
                    o_div_clk <= 1;
                else
                    o_div_clk <= 0;
        end
                
endmodule
