library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity switch_Num is
port(	switch : in std_logic;
		w : in std_logic_vector (3 downto 0);
		x : in std_logic_vector (3 downto 0);
		y : in std_logic_vector (3 downto 0);
		z : in std_logic_vector (3 downto 0);
		w_2 : in std_logic_vector (3 downto 0);
		x_2 : in std_logic_vector (3 downto 0);
		y_2 : in std_logic_vector (3 downto 0);
		z_2 : in std_logic_vector (3 downto 0);
		w_out : out std_logic_vector (3 downto 0);
		x_out : out std_logic_vector (3 downto 0);
		y_out : out std_logic_vector (3 downto 0);
		z_out : out std_logic_vector (3 downto 0));
end switch_Num;

architecture oo of switch_Num is
begin
	process(switch,w,x,y,z,w_2,x_2,y_2,z_2)
	begin
		if (switch = '0') then
			w_out <= w;
			x_out <= x;
			y_out <= y;
			z_out <= z;
		end if;
		if (switch = '1') then
			w_out <= w_2;
			x_out <= x_2;
			y_out <= y_2;
			z_out <= z_2;
		end if;
	end process;
end oo;