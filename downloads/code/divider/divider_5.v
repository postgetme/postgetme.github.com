module divider_5 (i_clk, i_rst_n, o_div_clk);
    input i_clk;
    input i_rst_n;
    output reg o_div_clk;
    reg [1:0] r_cnt;
    
    always @ (posedge i_clk or negedge i_rst_n)
        begin
            if (!i_rst_n)
                begin
                    o_div_clk <= 0;
                    r_cnt <= 0;
                end
            else
                begin
                    if (r_cnt < 2)
                        r_cnt <= r_cnt + 1'b1;
                    else
                        begin
                            o_div_clk <= ~o_div_clk;
                            r_cnt <= 0;
                        end
                end
        end
        
endmodule
