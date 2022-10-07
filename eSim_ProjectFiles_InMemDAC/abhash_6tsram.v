module abhash_6tsram(din,wen,q);
input din, wen; //din->input data; wen->word line enable
output reg q;
always @(din, wen) begin
	if(wen==1'b1) 	
		q = din;
end
endmodule