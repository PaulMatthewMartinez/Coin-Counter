module bcd2driver_tb;
reg[6:0] coiny;
wire[6:0] HEX1,HEX0;

bcd2driver paul(
.SW(coiny),
.HEX0(HEX0),
.HEX1(HEX1),
.gt99(gt99)
);

initial begin

 $write("Beginning simulation\n");
	coiny=7'b000_0000;
   repeat(100)begin 
   #10;
	$display("SW = %b, HEX1 = %b,HEX0 = %b", coiny, HEX1, HEX0);
	coiny=coiny+7'b000_0001;

   
       	// ends simulation
	end
	$finish;
end

endmodule


