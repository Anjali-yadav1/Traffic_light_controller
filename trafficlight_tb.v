`timescale 1ns / 1ps

module Traffic_Light_Crontroller_TB;

reg clk, rst;
wire [2:0] light_M1;
wire [2:0] light_M2;
wire [2:0] light_MT;
wire [2:0] light_S;

Traffic_Light_Crontroller dut(.clk(clk), .light_M1(light_M1), .light_M2(light_M2), .light_MT(light_MT), .light_S(light_S), .rst(rst));

initial
clk = 1'b0;

always
begin
    #500_000_000 clk = ~clk;
end

initial 
begin
    rst = 1'b1;
    #1000000000;

    rst = 1'b0;
    #(10000000000*200);
    $finish;
    end

initial 
begin
    $dumpfile("waveform.vcd");  // create dump file
    $dumpvars(0, Traffic_Light_Crontroller_TB);    // dump all variables in testbench
    $monitor("Time=%-8t | M1=%b | M2=%b | MT=%b | S=%b | rst=%b",
          $time, light_M1, light_M2, light_MT, light_S, rst);
end

endmodule
