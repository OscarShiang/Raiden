`define TimeExpire 32'd1000
`define TimeExpire_KEY 25'b00010000000000000000000000

module Enemy(clk, rst, enemyPos);

input rst, clk;

reg[31:0]clk_cnt;
reg div_clk;

// output [7:0]row;
// output [15:0]col;

// reg[3:0]scanline;

reg enemy_move;
reg attacked;

output reg[2:0]enemyPos;

// dot matrix row scan
always @(posedge clk)
begin
	if(!rst)
	begin
		clk_cnt <= 32'd0;
		div_clk <= 1'b0;
	end

	else begin
		if(clk_cnt == `TimeExpire)
		begin
			div_clk <= ~div_clk;
			clk_cnt <= 32'd0;
		end
		else begin
			clk_cnt <= clk_cnt + 32'd1;
		end
	end
end

// always @(posedge div_clk)
// begin
// 	if(scan_row[enemyPos - 1] == 16'b010000000000000)
// 	begin
// 		attacked = 1;
// 	end
// 	else if(scan_row[enemyPos] == 16'b0010000000000000)
// 	begin
// 		attacked = 1;
// 	end
// 	else if(scan_row[enemyPos + 1] == 16'b0100000000000000)
// 	begin
// 		attacked = 1;
// 	end
// 	else begin
// 		attacked = 0;
// 	end
// end

// dot matrix col assign
always @(posedge div_clk)
begin
	if(!rst && !attacked)
	begin
		enemyPos = 3;
	end
	// else
	// begin
	// 	enemy_move = {$random} %2;

	// 	if(enemy_move == 0)
	// 	begin
	// 		if(enemyPos < 6)
	// 		begin
	// 			enemyPos <= enemyPos + 1;
	// 		end
	// 		else
	// 		begin
	// 			enemyPos <= enemyPos - 1;
	// 		end
	// 	end
	// 	else if(enemy_move == 1)
	// 	begin
	// 		if(enemyPos > 1)
	// 		begin
	// 			enemyPos <= enemyPos - 1;
	// 		end
	// 		else
	// 		begin
	// 			enemyPos <= enemyPos + 1;
	// 		end
	// 	end
	// end
end




endmodule 