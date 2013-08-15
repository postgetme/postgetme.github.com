module divider_3 (i_clk, i_rst_n, o_div_clk);
    input i_clk;
    input i_rst_n;
    output reg o_div_clk;
    reg r_temp_clk;
    
    always @ (posedge i_clk or negedge i_rst_n)
        begin
            if (!i_rst_n)
                begin
                    o_div_clk <= 0;
                    r_temp_clk <= 0;
                end
            else
                begin
                    o_div_clk <= r_temp_clk;
                    r_temp_clk <= ~o_div_clk;
                end
        end

endmodule
