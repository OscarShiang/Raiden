`define TimeExpire 32'd1000
`define TimeExpire_KEY 25'b00010000000000000000000000

module Raiden(row, col, clk, rst, keypadRow, keypadCol);

// clock
input clk, rst;
reg [31:0]clk_cnt;
reg div_clk;

// dot matrix scanline
output [7:0]row;
output [15:0]col;

reg [7:0]row;
reg [15:0]col;
reg [15:0]scan_row[7:0];
reg [3:0]scanline;

wire [15:0]enemyRow[7:0];

// keypad variables
output [3:0]keypadRow;
input [3:0]keypadCol;

reg [31:0]keypadDelay;
reg keypadTrigger;

// player settings
wire [2:0]playerPos;
wire [2:0]enemyPos;
wire fire;

reg [15:0]bullets[7:0];

// keypad module
Keypad key(clk, rst, keypadRow, keypadCol, playerPos, fire);

// enemy module
Enemy en(keypadTrigger, rst, enemyPos);


// dot matrixes cycle
always @(posedge clk) begin
	if (!rst) begin
		clk_cnt <= 32'd0;
		div_clk <= 1'b0;
	end
	
	else begin
		if (clk_cnt == `TimeExpire) begin
			div_clk <= ~div_clk;
			clk_cnt <= 32'd0;
		end
		else begin
			clk_cnt <= clk_cnt + 32'd1;
		end
	end
end

// dot matrix col assign
always @(posedge div_clk) begin
	if (!rst) begin
		scanline <= 7;
		col <= 16'b0000000000000000;
	end
	else begin
		row <= ~(1 << scanline);
		scanline <= scanline - 1;

		col <= scan_row[scanline];
	end
end

// keypad clk cycle
always @(posedge clk) begin
	if (!rst) begin
		keypadDelay <= 0;
		keypadTrigger <= 0;
	end
	else begin
		if (keypadDelay == `TimeExpire_KEY) begin
			keypadDelay <= 0;
			keypadTrigger <= ~keypadTrigger;
		end
		else begin
			keypadDelay <= keypadDelay + 1;
		end
	end
end

// bullet fire and move
always @(posedge keypadTrigger) begin
	if (!rst) begin
		bullets[0] = 0;
		bullets[1] = 0;
		bullets[2] = 0;
		bullets[3] = 0;
		bullets[4] = 0;
		bullets[5] = 0;
		bullets[6] = 0;
		bullets[7] = 0;
	end
	else begin
		bullets[0] = bullets[0] << 1;
		bullets[1] = bullets[1] << 1;
		bullets[2] = bullets[2] << 1;
		bullets[3] = bullets[3] << 1;
		bullets[4] = bullets[4] << 1;
		bullets[5] = bullets[5] << 1;
		bullets[6] = bullets[6] << 1;
		bullets[7] = bullets[7] << 1;
	end
	
	if (fire) begin
		bullets[playerPos] = bullets[playerPos] | 16'b0000000000001000;
	end
end

// dot matrixes uodate
always @(posedge clk) begin
	if (!rst) begin
		scan_row[0] = 0;
		scan_row[1] = 0;
		scan_row[2] = 0;
		scan_row[3] = 0;
		scan_row[4] = 0;
		scan_row[5] = 0;
		scan_row[6] = 0;
		scan_row[7] = 0;
	end
	else begin
		scan_row[0] = 0;
		scan_row[1] = 0;
		scan_row[2] = 0;
		scan_row[3] = 0;
		scan_row[4] = 0;
		scan_row[5] = 0;
		scan_row[6] = 0;
		scan_row[7] = 0;

		if (scanline == playerPos - 1)
			scan_row[scanline] = 16'b0000000000000001 | scan_row[scanline];
		if (scanline == playerPos)
			scan_row[scanline] = 16'b0000000000000111 | scan_row[scanline];
		if (scanline == playerPos + 1)
			scan_row[scanline] = 16'b0000000000000001 | scan_row[scanline];
		if (scanline == enemyPos - 1)
			scan_row[scanline] = 16'b100000000000000 | scan_row[scanline];
		if (scanline == enemyPos)
			scan_row[scanline] = 16'b110000000000000 | scan_row[scanline];
		if (scanline == enemyPos + 1)
			scan_row[scanline] = 16'b100000000000000 | scan_row[scanline];

		scan_row[scanline] = scan_row[scanline] | bullets[scanline];
	end
end

endmodule 
