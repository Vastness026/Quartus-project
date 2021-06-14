library ieee;
use ieee.std_logic_1164.all;

entity LED_dice_vhdl is
port(n : in std_logic_vector (2 downto 0);
		reset : in std_logic;
		L1,L2,L3,L4,L5,L6,L7 : out std_logic );
end LED_dice_vhdl;

architecture oo of LED_dice_vhdl is
begin
process(n,reset)
begin
	if (reset = '0') then
		case n is
		when "000" =>
			L1 <= '0';
			L2 <= '0';
			L3 <= '0';
			L4 <= '0';
			L5 <= '0';
			L6 <= '0';
			L7 <= '0';
		when "001" =>
			L1 <= '0';
			L2 <= '0';
			L3 <= '0';
			L4 <= '1';
			L5 <= '0';
			L6 <= '0';
			L7 <= '0';
		when "010" =>
			L1 <= '0';
			L2 <= '1';
			L3 <= '0';
			L4 <= '0';
			L5 <= '0';
			L6 <= '1';
			L7 <= '0';
		when "011" =>
			L1 <= '1';
			L2 <= '0';
			L3 <= '0';
			L4 <= '1';
			L5 <= '0';
			L6 <= '0';
			L7 <= '1';
		when "100" =>
			L1 <= '1';
			L2 <= '0';
			L3 <= '1';
			L4 <= '0';
			L5 <= '1';
			L6 <= '0';
			L7 <= '1';
		when others =>
			L1 <= '0';
			L2 <= '0';
			L3 <= '0';
			L4 <= '0';
			L5 <= '0';
			L6 <= '0';
			L7 <= '0';
		end case;
	elsif (reset = '1') then
		L1 <= '0';
		L2 <= '0';
		L3 <= '0';
		L4 <= '0';
		L5 <= '0';
		L6 <= '0';
		L7 <= '0';
 	end if;
	
end process;
end oo;