/***************************************************************************
 *
 ***************************************************************************/

 module tcp_server_tb;

    localparam period = 10;

    reg clk = 0;
    reg rst = 0;

    tcp_server DUT (.clk(clk), .rst(rst));

    always #10 clk=!clk;

    initial
    begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tcp_server_tb);
        clk = 0;
        rst = 1'b1;
        #20 rst = 1'b0;
    end

    initial
    #200 $finish;

 endmodule
