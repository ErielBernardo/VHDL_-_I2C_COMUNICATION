--- STOP_FRAME

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity STOP_FRAME is
	port(
			i_RST				: in std_logic;									--- entrada de RST global
			i_SCL				: in std_logic;									--- entrada de Clock I2C SCL -90°
			i_ENABLE_STOP	: in std_logic;									--- entrada de Enable de controle de STM_MASTER
			o_CTRL_STOP		: out std_logic;									--- saida de controle STOP_FRAME para STM_MASTER
			o_SDA				: out std_logic									--- saida de dado I2C para REG_SDA
		);
END STOP_FRAME;

architecture behavioral of STOP_FRAME is

begin
	
	-- Logic to generate an initial frame
	process (i_RST, i_SCL, i_ENABLE_STOP)
		variable done : std_logic := '0';
	begin
		if (i_RST = '0') then
			o_SDA				<= 'Z';
			o_CTRL_STOP		<= '0';
			done				:= '0';
		elsif (i_ENABLE_STOP = '1') then
			if (done = '0') then
				o_SDA				<= '0';
				done				:= '1';
			elsif rising_edge(i_SCL) then
				o_SDA				<= '1';
				o_CTRL_STOP	<= '1';
			end if;
		else
			done				:= '0';
			o_SDA				<= 'Z';
			o_CTRL_STOP		<= '0';
		end if;
	end process;
	
end behavioral;