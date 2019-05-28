--- START_FRAME

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity START_FRAME is
	port(
			i_RST				: in std_logic;			--- entrada de RST global
			i_SCL				: in std_logic;			--- entrada de Clock I2C SCL
			i_ENABLE_START	: in std_logic;			--- entrada de Enable de controle de STM_MASTER
			o_CTRL_START	: out std_logic;			--- saida de controle START_FRAME para STM_MASTER
			o_SDA				: out std_logic			--- saida de dado I2C para REG_SDA
		);
END START_FRAME;

architecture behavioral of START_FRAME is

begin
	
	-- Logic to generate an initial frame
	process (i_RST, i_SCL, i_ENABLE_START)
		variable done : std_logic := '0';
	begin
		if (i_RST = '0') then
			o_SDA				<= 'Z';
			o_CTRL_START	<= '0';
			done				:= '0';
		elsif (i_ENABLE_START = '1') then
			if (done = '0') then
				o_SDA				<= '0';
				done				:= '1';
			elsif falling_edge(i_SCL) then
				done				:= '0';
				o_CTRL_START	<= '1';
			end if;
		else
			o_SDA				<= 'Z';
			o_CTRL_START	<= '0';
		end if;
	end process;
	
end behavioral;