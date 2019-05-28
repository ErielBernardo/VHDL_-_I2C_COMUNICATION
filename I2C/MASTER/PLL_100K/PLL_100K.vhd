--- PLL_100K

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

ENTITY PLL_100K IS
	PORT
	(
		i_CLK			: IN STD_LOGIC;		--- entrada de de clock global
		o_CLK_SCL	: OUT STD_LOGIC;		--- saida de clock I2C SCL
		o_CLK_SDA	: OUT STD_LOGIC		--- saida de clock I2C SCL atrasada em 90° para sincronização do SDA
	);
END PLL_100K;

architecture behavioral of PLL_100K is
	
	component altpll0 IS
		PORT
		(
			inclk0	: IN STD_LOGIC  := '0';
			c0			: OUT STD_LOGIC ;
			c1			: OUT STD_LOGIC 
		);
	END component;
	
begin

	U_altpll0 : altpll0
		PORT MAP
		(
			inclk0	=> i_CLK,
			c0			=> O_CLK_SCL,
			c1			=> O_CLK_SDA
		);
	
end behavioral;