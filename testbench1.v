`timescale 1ns / 1ps
module testbench1();
reg [31:0]  ex_mem_pc_npc;
reg clk, ex_mem_pc_src, rst;
wire [31:0] if_id_npc, if_id_instr;
top u1(ex_mem_pc_src, ex_mem_pc_npc, if_id_npc, if_id_instr, clk, rst);
initial begin
$dumpfile("dump.vcd");
$dumpvars(0, testbench1);
end
initial begin
clk = 1;
repeat(500)
#5	clk = ~clk;
end
initial begin
rst = 1'b1;
ex_mem_pc_src = 1'b0;
ex_mem_pc_npc = 32'd0;
#7;rst = 1'b0;
#3;
ex_mem_pc_src = 1'b1;
#10;
ex_mem_pc_npc= 32'h10000000;
#10;
ex_mem_pc_npc= 32'h20000000;
#10;
ex_mem_pc_npc= 32'h30000000;
#10;
ex_mem_pc_npc= 32'h40000000;
#10;
ex_mem_pc_npc= 32'h20000000;
#10;
ex_mem_pc_npc= 32'h10000000;
#10;
ex_mem_pc_src = 1'b0;
#100; ex_mem_pc_src = 1'b1;#18;#2;
ex_mem_pc_npc= 32'h50000000;
#10;
ex_mem_pc_npc= 32'h10000000;
#10;
ex_mem_pc_npc= 32'h60000000;
#10;
ex_mem_pc_npc= 32'h70000000;
#10;
ex_mem_pc_npc= 32'h20000000;
#10;
ex_mem_pc_npc= 32'h80000000;
#10;
ex_mem_pc_npc= 32'h90000000;
#10;
ex_mem_pc_npc= 32'hA0000000;
ex_mem_pc_src = 1'b0;


end
endmodule
