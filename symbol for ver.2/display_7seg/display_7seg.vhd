library ieee;
use ieee.std_logic_1164.all;

entity display_7seg is
port(	DE1,DE2,DE3 : in std_logic;
		w : in std_logic_vector (3 downto 0);
		x : in std_logic_vector (3 downto 0);
		y : in std_logic_vector (3 downto 0);
		z : in std_logic_vector (3 downto 0);
		seg_out : out std_logic_vector (3 downto 0));
end display_7seg;

architecture oo of display_7seg is
begin
process(DE1,DE2,DE3,w,x,y,z)
begin
	if (DE3 = '0' and DE2 = '1' and DE1 = '0') then
		seg_out <= w;
	elsif (DE3 = '0' and DE2 = '1' and DE1 = '1') then
		seg_out <= x;
	elsif (DE3 = '1' and DE2 = '0' and DE1 = '0') then
		seg_out <= y;
	elsif (DE3 = '1' and DE2 = '0' and DE1 = '1') then
		seg_out <= z;
	else
		seg_out <= "0000";
	end if;
end process;
end oo;
