library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity ranNum is
port (clk : in std_logic;
		w_out : out std_logic_vector (3 downto 0);
		x_out : out std_logic_vector (3 downto 0);
		y_out : out std_logic_vector (3 downto 0);
		z_out : out std_logic_vector (3 downto 0));
		
end ranNum;
architecture oo of ranNum is
signal qw : std_logic_vector (3 downto 0):= "0011";
signal qx : std_logic_vector (3 downto 0):= "0111";
signal qy : std_logic_vector (3 downto 0):= "0001";
signal qz : std_logic_vector (3 downto 0):= "0100";

begin
	process(clk)
	variable a,b,c,d,v1,v2,v3,v4,v5,v6,v7,v8,v9 : std_logic_vector (3 downto 0);
	begin
		
		if (clk'event and clk = '1') then
			qw <= qw + 1;
			qx <= qx + 1;
			qy <= qy + 1;
			qz <= qz + 1;
			if qw = "1001" then
				qw <= "0000";
			end if;
			if qx = "1000" then
				qx <= "0000";
			end if;
			if qy = "0111" then
				qy <= "0000";
			end if;
			if qz = "0110" then
				qz <= "0000";
			end if;
		end if;
		
		a := qw;
		b := qx;
		c := qy;
		d := qz;
		v1 := "0000";
		v2 := "0000";
		v3 := "0000";
		v4 := "0000";
		if(b=a) then
			b := qw + 1;
		end if;
		
		v1 := c;
		if (c=a) then
			c := v1 + 1;
		end if;
		v2 := c;
		if (c=b) then
			c := v2 + 1;
		end if;
		v3 := c;
		if (c=a) then
			c := v3 + 1;
		end if;
		
		v4 := d;
		if (d=a) then
			d := v4 + 1;
		end if;
		v5 := d;
		if (d=b) then
			d := v5 + 1;
		end if;
		v6 := d;
		if (d=c) then
			d := v6 + 1;
		end if;
		v7 := d;
		if (d=a) then
			d := v7 + 1;
		end if;
		v8 := d;
		if (d=b) then
			d := v8 + 1;
		end if;
		v9 := d;
		if (d=a) then
			d := v9 + 1;
		end if;
		
		w_out <= a;
		x_out <= b;
		y_out <= c;
		z_out <= d;
		
	end process;
end oo;