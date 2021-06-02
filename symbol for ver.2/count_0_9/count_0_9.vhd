library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity count_0_9 is
port (clk : in std_logic;
		w : out std_logic_vector (3 downto 0));
end count_0_9;

architecture oo of count_0_9 is
signal Q : std_logic_vector (3 downto 0):= "0011";
begin
process(clk)
begin
	if clk'event and clk='1' then
		Q <= Q + '1';
		if Q = "1001" then
			Q <= "0000";
		end if;
	end if;
	w <= Q;
end process;
end oo;