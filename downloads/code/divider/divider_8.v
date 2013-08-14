module divider_8 (i_clk, i_rst_n, o_div_clk);
    input i_clk;
    input i_rst_n;
    output o_div_clk;
    reg [1:0] r_cnt1, r_cnt2;   //change registers width when K changed 
    reg r_clk1, r_clk2;
    
    //3=2K+1,K=1
    parameter K = 1;
        
    //posedge
    always @ (posedge i_clk or negedge i_rst_n)
        begin
            if (!i_rst_n)
              r_cnt1 <= 0;
            else
                if (r_cnt1 == 2 * K)
                    r_cnt1 <= 0;
                else
                    r_cnt1 <= r_cnt1 + 1'b1;
        end

    always @ (posedge i_clk or negedge i_rst_n)
        begin
            if (!i_rst_n)
                r_clk1 <= 0;
            else
                if (r_cnt1 == K - 1)
                    r_clk1 <= 1;
                else if (r_cnt1 == 2 * K)
                    r_clk1 <= 0;
        end

    //negedge
    always @ (negedge i_clk or negedge i_rst_n)
        begin
            if (!i_rst_n)
              r_cnt2 <= 0;
            else
              if (r_cnt2 == 2 * K)
                r_cnt2 <= 0;
              else
                r_cnt2 <= r_cnt2 + 1'b1;
        end

    always @ (negedge i_clk or negedge i_rst_n)
        begin
            if (!i_rst_n)
              r_clk2 <= 0;
            else
                if (r_cnt2 == K - 1)
                    r_clk2 <= 1;
                else if (r_cnt2 == 2 * K)
                    r_clk2 <= 0;
        end

    assign o_div_clk = r_clk1 & r_clk2;

endmodule
