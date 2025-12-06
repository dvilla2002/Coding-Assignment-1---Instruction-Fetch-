`timescale 1ns / 1ps
module testbench();
reg [31:0]  PC_from_ExMrm;
reg clk, PCSrc, rst;
wire [31:0] address, instruction;
top u1(PCSrc, PC_from_ExMrm, address, instruction, clk, rst);
initial begin
$dumpfile("dump.vcd");
$dumpvars(0, testbench);
end
initial begin
clk = 1;
repeat(500)
#5	clk = ~clk;
end
initial begin
rst = 1'b1;
PCSrc = 1'b1;
PC_from_ExMrm = 32'd0;
#7;rst = 1'b0;
#7;
PCSrc = 1'b0;
#10;
PC_from_ExMrm= 32'h10000011;
#10;
PC_from_ExMrm= 32'h20000022;
#10;
PC_from_ExMrm= 32'h30000033;
#10;
PC_from_ExMrm= 32'h40000044;
#10;
PC_from_ExMrm= 32'h50000055;
#10;
PC_from_ExMrm= 32'h60000066;
#10;
PC_from_ExMrm= 32'h70000077;
#10;
PC_from_ExMrm= 32'h80000088;
#10;
PC_from_ExMrm= 32'h90000099;
#10;
PC_from_ExMrm= 32'hA00000AA;
PCSrc = 1'b0;
#400;

end
endmodule
