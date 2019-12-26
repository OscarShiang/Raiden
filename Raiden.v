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

// keypad variables
output [3:0]keypadRow;
input [3:0]keypadCol;

reg [31:0]keypadDelay;
reg keypadTrigger;

// player settings
wire [2:0]playerPos;
wire fire;

Keypad key(clk, rst, keypadRow, keypadCol, playerPos, fire);


// dot matrix row scan
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

		if (scanline == playerPos - 1)
			col <= 16'b0000000000000001 | scan_row[scanline];
		else if (scanline == playerPos)
			col <= 16'b0000000000000111 | scan_row[scanline];
		else if (scanline == playerPos + 1)
			col <= 16'b0000000000000001 | scan_row[scanline];
		else
			col <= scan_row[scanline];
	end
end

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

always @(posedge keypadTrigger) begin
	if (!rst) begin
		scan_row[0] = 16'b0000000000000000;
		scan_row[1] = 16'b0000000000000000;
		scan_row[2] = 16'b0000000000000000;
		scan_row[3] = 16'b0000000000000000;
		scan_row[4] = 16'b0000000000000000;
		scan_row[5] = 16'b0000000000000000;
		scan_row[6] = 16'b0000000000000000;
		scan_row[7] = 16'b0000000000000000;
	end
	else begin
		scan_row[0] = scan_row[0] << 1;
		scan_row[1] = scan_row[1] << 1;
		scan_row[2] = scan_row[2] << 1;
		scan_row[3] = scan_row[3] << 1;
		scan_row[4] = scan_row[4] << 1;
		scan_row[5] = scan_row[5] << 1;
		scan_row[6] = scan_row[6] << 1;
		scan_row[7] = scan_row[7] << 1;
	end
	
	if (fire) begin
		scan_row[playerPos] = scan_row[playerPos] | 16'b0000000000001000;
	end
end


endmodule 
