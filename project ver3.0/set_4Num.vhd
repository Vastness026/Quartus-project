library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity set_4Num is
port (clk_pulse : in std_logic;
		sw1,sw2,sw3,sw4 : in std_logic;
		w,x,y,z : out std_logic_vector (3 downto 0));
end set_4Num;

architecture oo of set_4Num is
signal qw,qx,qy,qz : std_logic_vector (3 downto 0);
begin
process(clk_pulse,sw1,sw2,sw3,sw4)
begin
	if sw1 = '1' then
		if clk_pulse'event and clk_pulse='1' then
			qw <= qw + '1';
			if qw = "1001" then
				qw <= "0000";
			end if;
		end if;
		w <= qw;
	end if;
	if sw2 = '1' then
		if clk_pulse'event and clk_pulse='1' then
			qx <= qx + '1';
			if qx = "1001" then
				qx <= "0000";
			end if;
		end if;
		x <= qx;
	end if;
	if sw3 = '1' then
		if clk_pulse'event and clk_pulse='1' then
			qy <= qy + '1';
			if qy = "1001" then
				qy <= "0000";
			end if;
		end if;
		y <= qy;
	end if;
	if sw4 = '1' then
		if clk_pulse'event and clk_pulse='1' then
			qz <= qz + '1';
			if qz = "1001" then
				qz <= "0000";
			end if;
		end if;
		z <= qz;
	end if;
end process;
end oo;