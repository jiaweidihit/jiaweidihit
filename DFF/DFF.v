module DFF(d,clk,q,qn);
input d,clk;
output q,qn;
wire d,clk;
reg q,qn;

always@(posedge clk)
begin
	q<=d;
	qn<=!d;
end
endmodule
