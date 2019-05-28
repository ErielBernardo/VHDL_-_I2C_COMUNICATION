--- P2S

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity P2S is
	port(
			i_SCL				: in std_logic;									--- entrada de Clock global
			i_RST				: in std_logic;									--- entrada de RST global
			
			i_DATA			: in std_logic_vector (15 downto 0);		--- entrada de dado dos Switches da STM_MASTER
			
			o_CTRL_P2S		: out std_logic;									--- saida de controle P2S para STM_MASTER
			i_ENABLE_P2S	: in std_logic;									--- entrada Enable de controle STM_MASTER
			
			o_SDA				: out std_logic									--- saida de dado SDA
		);
END P2S;

architecture behavioral of P2S is

	signal w_REG		: std_logic_vector (15 downto 0);
	
begin

	process(i_SCL, i_RST, i_ENABLE_P2S)
		variable cont : integer := 0;
	begin
		if((i_RST = '0') or (i_ENABLE_P2S = '0')) then
			cont 					:= 0;
			o_SDA					<= 'Z';
			o_CTRL_P2S			<= '0';
			w_REG 				<= "ZZZZZZZZZZZZZZZZ";
		elsif (cont = 0) then
			w_REG 			<= i_DATA(14 downto 0) & 'Z';
			o_SDA				<= i_DATA(15);
			cont 				:= cont+1;
		elsif falling_edge(i_SCL) then
			w_REG 			<= w_REG(14 downto 0) & 'Z';
			o_SDA				<= w_REG(15);
			cont 				:= cont+1;
			if (cont = 17) then
				o_CTRL_P2S	<= '1';
			end if;
		end if;
	end process;
	
end behavioral;