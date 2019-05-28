--- REG_EN

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


ENTITY REG_EN IS
	PORT
	(
		i_CLK		: IN STD_LOGIC;	--- entrada de clock global	
		i_RST		: IN STD_LOGIC;	--- entrada de reset global
		i_ENABLE	: IN STD_LOGIC;	--- entrada de enable da STM_MASTER
		i_D		: IN STD_LOGIC;	--- entrada de dado
		o_Q		: OUT STD_LOGIC	--- saida de dado
	);
END REG_EN;

architecture behavioral of REG_EN is
	
	
begin
	
	process (i_CLK)
	begin
		if rising_edge (i_CLK) then
			if (i_RST = '0') then
				o_Q <= '1';
			else
				if (i_ENABLE = '1') then
					o_Q <= i_D;
				else
					o_Q <= '1';
				end if;
			end if;
		end if;
	end process;
	
end behavioral;