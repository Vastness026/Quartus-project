library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LED8x8_switch is
port (
		win : in std_logic;
		lose : in std_logic;
		reset : in std_logic;
		rows_win : in std_logic_vector(7 downto 0);
		cols_win  : in std_logic_vector(7 downto 0);
		rows_lose : in std_logic_vector(7 downto 0);
		cols_lose  : in std_logic_vector(7 downto 0);
		rows_count : in std_logic_vector(7 downto 0);
		cols_count  : in std_logic_vector(7 downto 0);
		R1,R2,R3,R4,R5,R6,R7,R8 : out std_logic;
		CR1,CR2,CR3,CR4,CR5,CR6,CR7,CR8 : out std_logic
);
end LED8x8_switch;

architecture oo of LED8x8_switch is
begin
	process(win,lose,reset)
	begin
		if win = '1' then 
			R1 <= rows_win(0);
			R2 <= rows_win(1);
			R3 <= rows_win(2);
			R4 <= rows_win(3);
			R5 <= rows_win(4);
			R6 <= rows_win(5);
			R7 <= rows_win(6);
			R8 <= rows_win(7);
			CR1 <= cols_win(7);
			CR2 <= cols_win(6);
			CR3 <= cols_win(5);
			CR4 <= cols_win(4);
			CR5 <= cols_win(3);
			CR6 <= cols_win(2);
			CR7 <= cols_win(1);
			CR8 <= cols_win(0);
		elsif lose = '1' then
			R1 <= rows_lose(0);
			R2 <= rows_lose(1);
			R3 <= rows_lose(2);
			R4 <= rows_lose(3);
			R5 <= rows_lose(4);
			R6 <= rows_lose(5);
			R7 <= rows_lose(6);
			R8 <= rows_lose(7);
			CR1 <= cols_lose(7);
			CR2 <= cols_lose(6);
			CR3 <= cols_lose(5);
			CR4 <= cols_lose(4);
			CR5 <= cols_lose(3);
			CR6 <= cols_lose(2);
			CR7 <= cols_lose(1);
			CR8 <= cols_lose(0);
		elsif reset = '1' then
			R1 <= '0';
			R2 <= '0';
			R3 <= '0';
			R4 <= '0';
			R5 <= '0';
			R6 <= '0';
			R7 <= '0';
			R8 <= '0';
			CR1 <= '0';
			CR2 <= '0';
			CR3 <= '0';
			CR4 <= '0';
			CR5 <= '0';
			CR6 <= '0';
			CR7 <= '0';
			CR8 <= '0';
		else 
			R1 <= rows_count(0);
			R2 <= rows_count(1);
			R3 <= rows_count(2);
			R4 <= rows_count(3);
			R5 <= rows_count(4);
			R6 <= rows_count(5);
			R7 <= rows_count(6);
			R8 <= rows_count(7);
			CR1 <= cols_count(7);
			CR2 <= cols_count(6);
			CR3 <= cols_count(5);
			CR4 <= cols_count(4);
			CR5 <= cols_count(3);
			CR6 <= cols_count(2);
			CR7 <= cols_count(1);
			CR8 <= cols_count(0);
		end if;
	end process;
end oo;