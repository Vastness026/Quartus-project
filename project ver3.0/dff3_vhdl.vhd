library ieee;
use ieee.std_logic_1164.all;

entity dff3_vhdl is
port(clk : in std_logic;
		D : in std_logic_vector (2 downto 0);
		Q : out std_logic_vector (2 downto 0));
end dff3_vhdl;

architecture oo of dff3_vhdl is
begin
	process(clk)
	begin
		if (clk'event and clk = '1') then
			Q <= D;
		end if;
	end process;
end oo;