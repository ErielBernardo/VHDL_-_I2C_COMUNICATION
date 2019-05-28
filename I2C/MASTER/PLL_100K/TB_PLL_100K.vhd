--- TB_PLL_100K

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

ENTITY TB_PLL_100K IS
END TB_PLL_100K;

architecture behavioral of TB_PLL_100K is
	
	component PLL_100K IS
	PORT
	(
		i_CLK			: IN STD_LOGIC;	--- entrada de de clock global
		o_CLK_SCL	: OUT STD_LOGIC;	--- saida de clock I2C SCL
		o_CLK_SDA	: OUT STD_LOGIC	--- saida de clock I2C SCL atrasada em 90° para sincronização do SDA
	);
	END component;
	
	signal w_CLK		: STD_LOGIC;	--- sinal de entrada de de clock global
	signal w_CLK_SCL	: STD_LOGIC;	--- sinal de saida de clock I2C SCL
	signal w_CLK_SDA	: STD_LOGIC;	--- sinal de saida de clock I2C SCL atrasada em 90° para sincronização do SDA
	
begin

	U00 : PLL_100K
		PORT MAP
		(
			i_CLK			=> w_CLK,		--- entrada de de clock global
			o_CLK_SCL	=> w_CLK_SCL,	--- saida de clock I2C SCL
			o_CLK_SDA	=> w_CLK_SDA	--- saida de clock I2C SCL atrasada em 90° para sincronização do SDA
		);
	
	process
	begin
		w_CLK <= '0';
		wait for 10 ns;
		w_CLK <= '1';
		wait for 10 ns;
	end process;

end behavioral;