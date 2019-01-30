module maincontroller_tb;
reg MAX10_CLK1_50;
reg[9:0] SW;
wire[6:0]balanco;
wire[9:0]LEDR;
reg[1:0]KEY;
maincontroller paul (
.MAX10_CLK1_50(MAX10_CLK1_50),
.SW(SW),
.balance_c(balanco),
.LEDR(LEDR),
.KEY(KEY)
);


initial begin
SW=10'b00000_00001;
KEY = 2'b00;
end
always begin
#1;
MAX10_CLK1_50=1;
#1;
MAX10_CLK1_50=0;
end
always begin
		KEY = 2'b00;
		#50;
		$display("SW = %b, balance = %b, LEDR = %b, KEY = %b",SW , balanco, LEDR,KEY);
		KEY = 2'b01;
		#50;
		$display("SW = %b, balance = %b, LEDR = %b, KEY = %b",SW , balanco, LEDR,KEY);
		KEY = 2'b11;
		#50;
		$display("SW = %b, balance = %b, LEDR = %b, KEY = %b",SW , balanco, LEDR,KEY);
		KEY = 2'b11;
		#50;
		$display("SW = %b, balance = %b, LEDR = %b, KEY = %b",SW , balanco, LEDR,KEY);
		KEY = 2'b01;
		#50;
		$display("SW = %b, balance = %b, LEDR = %b, KEY = %b",SW , balanco, LEDR,KEY);
		KEY = 2'b01;
		#50;
		$display("SW = %b, balance = %b, LEDR = %b, KEY = %b",SW , balanco, LEDR,KEY);
		KEY = 2'b11;
		#50;
		$display("SW = %b, balance = %b, LEDR = %b, KEY = %b",SW , balanco, LEDR,KEY);
		KEY = 2'b11;
		#50;
		$display("SW = %b, balance = %b, LEDR = %b, KEY = %b",SW , balanco, LEDR,KEY);
		KEY = 2'b01;
		#50;
		$display("SW = %b, balance = %b, LEDR = %b, KEY = %b",SW , balanco, LEDR,KEY);
		KEY = 2'b01;
		#50;
		$display("SW = %b, balance = %b, LEDR = %b, KEY = %b",SW , balanco, LEDR,KEY);
		KEY = 2'b11;
		#50;
		$display("SW = %b, balance = %b, LEDR = %b, KEY = %b",SW , balanco, LEDR,KEY);
		KEY = 2'b11;
		#50;
		$display("SW = %b, balance = %b, LEDR = %b, KEY = %b",SW , balanco, LEDR,KEY);
		KEY = 2'b01;
		#50;
		$display("SW = %b, balance = %b, LEDR = %b, KEY = %b",SW , balanco, LEDR,KEY);
		KEY = 2'b01;
		#50;
		$display("SW = %b, balance = %b, LEDR = %b, KEY = %b",SW , balanco, LEDR,KEY);
		KEY = 2'b11;
		#50;
		$display("SW = %b, balance = %b, LEDR = %b, KEY = %b",SW , balanco, LEDR,KEY);
		KEY = 2'b11;
		#50;
		$display("SW = %b, balance = %b, LEDR = %b, KEY = %b",SW , balanco, LEDR,KEY);
	$finish;
end

endmodule