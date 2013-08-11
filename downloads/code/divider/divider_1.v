module divider_1 (i_clk, i_rst_n, o_div_clk);
    input i_clk;
    input i_rst_n;
    output reg o_div_clk;

    always @ (posedge i_clk or negedge i_rst_n)
        begin
            if (!i_rst_n)
                o_div_clk <= 0;
            else
                o_div_clk <= ~o_div_clk;
        end
        
endmodule
