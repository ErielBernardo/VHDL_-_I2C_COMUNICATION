library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity TB_MUX_3x1_3SEL is
END TB_MUX_3x1_3SEL;

architecture behavioral of TB_MUX_3x1_3SEL is
	
	component MUX_3x1_3SEL is
	port(
			i_A 		: in std_logic_vector(7 downto 0);
			i_B 		: in std_logic_vector(7 downto 0);
			i_C 		: in std_logic_vector(7 downto 0);
			i_SELA	: in std_logic;
			i_SELB 	: in std_logic;
			i_SELC 	: in std_logic;
			o_BCD_ID 		: out std_logic_vector(7 downto 0);
			o_S 		: out std_logic_vector(7 downto 0)			
	);
	END component;
	
	signal w_A   		: std_logic_vector(7 downto 0);
	signal w_B   		: std_logic_vector(7 downto 0);
	signal w_C   		: std_logic_vector(7 downto 0);
	signal w_S 	 		: std_logic_vector(7 downto 0);
	signal w_SELA		: std_logic;
	signal w_SELB		: std_logic;
	signal w_SELC		: std_logic;
	signal w_BCD_ID	: std_logic_vector(7 downto 0);

begin

		UUT : MUX_3x1_3SEL
		port map (
			i_A 	=> w_A,
			i_B 	=> w_B,
			i_C 	=> w_C,
			i_SELA => w_SELA,
			i_SELB => w_SELB,
			i_SELC => w_SELC,
			o_BCD_ID	=> w_BCD_ID,
			o_S 	=> w_S
		);
		
		process
			begin
				w_A <= x"aa";
				w_B <= x"bb";
				w_C <= x"cc";
				
				w_SELA <= '0';
				w_SELB <= '0';
				w_SELC <= '0';
				wait for  10 ns;
				
				w_SELA <= '1';
				w_SELB <= '0';
				w_SELC <= '0';
				wait for  10 ns;
				
				w_SELA <= '0';
				w_SELB <= '1';
				w_SELC <= '0';
				wait for  10 ns;
				
				w_SELA <= '0';
				w_SELB <= '0';
				w_SELC <= '1';
				wait for  10 ns;
				
				w_SELA <= '1';
				w_SELB <= '0';
				w_SELC <= '0';
				wait for  10 ns;
				
				w_SELA <= '0';
				w_SELB <= '1';
				w_SELC <= '1';
				wait for  10 ns;
				
				w_SELA <= '1';
				w_SELB <= '1';
				w_SELC <= '0';
				wait for  10 ns;
				
				w_SELA <= '1';
				w_SELB <= '0';
				w_SELC <= '1';
				wait for  10 ns;
				
				w_SELA <= '1';
				w_SELB <= '1';
				w_SELC <= '1';
				wait;
		end process;
				
end behavioral;