--------------------------------------------------------------------------------
--
--   FileName:         TB_BCD7.vhd
--   Dependencies:     BCD7.vhd
--   Design Software:  Quartus II 64-bit Version 13.1.0 Build 162 SJ Web Edition
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 1.0 10/11/2019 Scott Larson
--     Initial Public Release
--   Version 1.1 6/23/2017 Scott Larson
--     Fixed small corner-case bug
--   Version 1.2 1/16/2018 Scott Larson
--     Fixed reset logic to include resetting the state machine
--    
--------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity TB_BCD7 is
END TB_BCD7;

architecture behavioral of TB_BCD7 is

	component BCD7 is
		port(
				i_IN			: in std_logic_vector(7 downto 0);
				o_BCD0		: out std_logic_vector(7 downto 0); --- unidade
				o_BCD1		: out std_logic_vector(7 downto 0); --- dezena
				o_BCD2		: out std_logic_vector(7 downto 0)	--- centena
			);
	END component;

	signal w_BCD0 	: std_logic_vector (7 downto 0);
	signal w_BCD1	: std_logic_vector (7 downto 0);
	signal w_BCD2	: std_logic_vector (7 downto 0);
	signal w_IN		: std_logic_vector (7 downto 0);
	
begin
	
	UUT : BCD7
	port map (
		i_IN		=> w_IN,
		o_BCD0	=> w_BCD0,
		o_BCD1	=> w_BCD1,
		o_BCD2	=> w_BCD2
	);
	
	process
	begin
		
		w_IN <= x"FF";
		wait for 30 ns;
		
		w_IN <= x"00";
		wait for 30 ns;
		
		w_IN <= x"FF";
		wait for 30 ns;
		
		w_IN <= x"95";
		wait;
		
	end process;
end behavioral;
