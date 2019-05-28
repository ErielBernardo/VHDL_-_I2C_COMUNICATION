library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity MUX_3x1_3SEL is
	port(
			i_A 		: in std_logic_vector(7 downto 0);
			i_B 		: in std_logic_vector(7 downto 0);
			i_C 		: in std_logic_vector(7 downto 0);
			i_SELA	: in std_logic;
			i_SELB 	: in std_logic;
			i_SELC 	: in std_logic;
			o_ID 		: out std_logic_vector(7 downto 0);	
			o_S 		: out std_logic_vector(7 downto 0)			
	);
END MUX_3x1_3SEL;

architecture behavioral of MUX_3x1_3SEL is

	signal w_SEL : std_logic_vector(1 downto 0);

begin

	w_SEL(1)	<= ((not (i_SELA)) and (not (i_SELB)));
	--w_SEL(1)	<= ((((not (i_SELA)) and (not (i_SELB))) or ((i_SELA) and (i_SELB))) or (i_SELC));
	w_SEL(0)	<= ((not (i_SELA)) and (not (i_SELC)));
	--w_SEL(0)	<= ((((not (i_SELA)) and (not (i_SELC))) or ((i_SELA) and (i_SELC))) or (i_SELB));
	
	o_S <= 	i_A when (w_SEL = "00") else
				i_B when (w_SEL = "01") else
				i_C when (w_SEL = "10") else
				x"00" when (w_SEL = "11");
				
	o_ID <=  ("10001000") when (w_SEL = "00") else
				("11100000") when (w_SEL = "01") else
				("10110001") when (w_SEL = "10") else
				("00000000") when (w_SEL = "11");
		
end behavioral;