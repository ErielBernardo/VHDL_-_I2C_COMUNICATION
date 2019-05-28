--- S2P

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity S2P is
	port(
			i_RST		: in std_logic;								--- entrada de Reset
			i_SCL		: in std_logic;								--- entrada de sinal de clock I2C
			i_SDA		: in std_logic;								--- entrada de sinal de dado I2C
			i_ENABLE	: in std_logic;								--- entrada enable do DET_FRAME
			o_DATA	: out std_logic_vector (15 downto 0)	--- saida de dado para STM_SLAVE
		);
END S2P;

architecture behavioral of S2P is

	signal w_DATA	: std_logic_vector (15 downto 0);		--- sinal de dado para STM_SLAVE
	
	signal cont 	: integer range 0 to 16 := 0;
	
begin

	process(i_SCL, i_RST, i_ENABLE)
	begin
		if ((i_ENABLE = '0') or (i_RST = '0')) then
			w_DATA	<= "ZZZZZZZZZZZZZZZZ";
			o_DATA	<= "ZZZZZZZZZZZZZZZZ";
			cont		<= 0;
		elsif rising_edge(i_SCL) then
			if (cont = 0) then
				o_DATA	<= "ZZZZZZZZZZZZZZZZ";
			end if;
			w_DATA	<= w_DATA(14 downto 0) & i_SDA;
			if (cont = 15) then
				cont <= 0;
				o_DATA <= w_DATA(14 downto 0) & i_SDA;
			else
				cont <= cont+1;
			end if;
		end if;
	end process;
	
end behavioral;