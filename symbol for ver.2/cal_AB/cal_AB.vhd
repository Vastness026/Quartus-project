library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity cal_AB is
port( w : in std_logic_vector (3 downto 0);
		x : in std_logic_vector (3 downto 0);
		y : in std_logic_vector (3 downto 0);
		z : in std_logic_vector (3 downto 0);
		w_2 : in std_logic_vector (3 downto 0);
		x_2 : in std_logic_vector (3 downto 0);
		y_2 : in std_logic_vector (3 downto 0);
		z_2 : in std_logic_vector (3 downto 0);
		A : out std_logic_vector (2 downto 0);
		B : out std_logic_vector (2 downto 0));
end cal_AB;

architecture oo of cal_AB is
begin
	process(w,x,y,z,w_2,x_2,y_2,z_2)
	variable q,p,v1,v2,v3,v4,v5,v6,v7,v8 : std_logic_vector (2 downto 0);
	begin
		q := "000";
		p := "000";
		v1 := "000";
		v2 := "000";
		v3 := "000";
		v4 := "000";
		v5 := "000";
		v6 := "000";
		v7 := "000";
		v8 := "000";
		if (w = w_2) then
			v1 := "001";
		end if;
		if (x = x_2) then
			v2 := "001";
		end if;
		if (y = y_2) then
			v3 := "001";
		end if;
		if (z = z_2) then
			v4 := "001";
		end if;
		q := v1 + v2 + v3 + v4;
		
		if (w = x_2) or (w = y_2) or (w = z_2) then
			v5 := "001";
		end if;
		if (x = w_2) or (x = y_2) or (x = z_2) then
			v6 := "001";
		end if;
		if (y = w_2) or (y = x_2) or (y = z_2) then
			v7 := "001";
		end if;
		if (z = w_2) or (z = x_2) or (z = y_2) then
			v8 := "001";
		end if;
		p := v5 + v6 + v7 + v8;
		
		A <= q;
		B <= p;
	end process;
end oo;