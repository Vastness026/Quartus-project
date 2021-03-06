library ieee;
use ieee.std_logic_1164.all;

entity seg_7_vhdl is
port(	
		seg_in : in std_logic_vector (3 downto 0);
		a,b,c,d,e,f,g : out std_logic
		);
end seg_7_vhdl;

architecture oo of seg_7_vhdl is
begin
process(seg_in)
begin
	case seg_in is
	when "0000" =>
		a <= '1';
		b <= '1';
		c <= '1';
		d <= '1';
		e <= '1';
		f <= '1';
		g <= '0';
	when "0001" =>
		a <= '0';
		b <= '1';
		c <= '1';
		d <= '0';
		e <= '0';
		f <= '0';
		g <= '0';
	when "0010" =>
		a <= '1';
		b <= '1';
		c <= '0';
		d <= '1';
		e <= '1';
		f <= '0';
		g <= '1';
	when "0011" =>
		a <= '1';
		b <= '1';
		c <= '1';
		d <= '1';
		e <= '0';
		f <= '0';
		g <= '1';
	when "0100" =>
		a <= '0';
		b <= '1';
		c <= '1';
		d <= '0';
		e <= '0';
		f <= '1';
		g <= '1';
	when "0101" =>
		a <= '1';
		b <= '0';
		c <= '1';
		d <= '1';
		e <= '0';
		f <= '1';
		g <= '1';
	when "0110" =>
		a <= '1';
		b <= '0';
		c <= '1';
		d <= '1';
		e <= '1';
		f <= '1';
		g <= '1';
	when "0111" =>
		a <= '1';
		b <= '1';
		c <= '1';
		d <= '0';
		e <= '0';
		f <= '0';
		g <= '0';
	when "1000" =>
		a <= '1';
		b <= '1';
		c <= '1';
		d <= '1';
		e <= '1';
		f <= '1';
		g <= '1';
	when "1001" =>
		a <= '1';
		b <= '1';
		c <= '1';
		d <= '1';
		e <= '0';
		f <= '1';
		g <= '1';
	when others =>
		a <= '1';
		b <= '1';
		c <= '1';
		d <= '1';
		e <= '1';
		f <= '1';
		g <= '0';
   end case;
end process;
end oo;
