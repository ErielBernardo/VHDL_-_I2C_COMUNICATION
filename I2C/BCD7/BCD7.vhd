--------------------------------------------------------------------------------
--
--   FileName:         BCD7.vhd
--   Dependencies:     none
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


entity BCD7 is
	port(
			i_IN			: in std_logic_vector(7 downto 0);
			o_BCD0		: out std_logic_vector(7 downto 0); --- unidade
			o_BCD1		: out std_logic_vector(7 downto 0); --- dezena
			o_BCD2		: out std_logic_vector(7 downto 0)	--- centena
		);
END BCD7;

architecture behavioral of BCD7 is

	signal w_BCD0 	: std_logic_vector (7 downto 0);
	signal w_BCD1	: std_logic_vector (7 downto 0);
	signal w_BCD2	: std_logic_vector (7 downto 0);
	signal w_IN		: std_logic_vector (7 downto 0);
	
begin
	
	o_BCD0 <= w_BCD0;
	o_BCD1 <= w_BCD1;
	o_BCD2 <= w_BCD2;
	w_IN <= i_IN;
	
	process (w_in)
	
		VARIABLE centena : integer := 0;
		VARIABLE dezena : integer := 0;
		VARIABLE unidade : integer := 0;
		VARIABLE aux : integer := 0;
	
	begin
		
		w_BCD0 <= "00000000";
		w_BCD1 <= "00000000";
		w_BCD2 <= "00000000";
		
		aux 		:= CONV_INTEGER(w_IN);
		centena 	:= abs(aux/100);
		
		aux 		:= aux-(centena*100);
		dezena 	:= abs(aux/10);
		
		unidade	:= aux-(dezena*10);
		
		case centena is
			when 0 =>
				w_BCD2 <= "10000001";
			when 1 =>
				w_BCD2 <= "11001111";
			when 2 =>
				w_BCD2 <= "10010010";
			when 3 =>
				w_BCD2 <= "10000110";
			when 4 =>
				w_BCD2 <= "11001100";
			when 5 =>
				w_BCD2 <= "10100100";
			when 6 =>
				w_BCD2 <= "10100000";
			when 7 =>
				w_BCD2 <= "10001101";
			when 8 =>
				w_BCD2 <= "10000000";
			when 9 =>
				w_BCD2 <= "10000100";
			when others =>
				w_BCD0 <= "01111111";
		end case;
		
		case dezena is
			when 0 =>
				w_BCD1 <= "10000001";
			when 1 =>
				w_BCD1 <= "11001111";
			when 2 =>
				w_BCD1 <= "10010010";
			when 3 =>
				w_BCD1 <= "10000110";
			when 4 =>
				w_BCD1 <= "11001100";
			when 5 =>
				w_BCD1 <= "10100100";
			when 6 =>
				w_BCD1 <= "10100000";
			when 7 =>
				w_BCD1 <= "10001101";
			when 8 =>
				w_BCD1 <= "10000000";
			when 9 =>
				w_BCD1 <= "10000100";
			when others =>
				w_BCD0 <= "01111111";
		end case;
		
		case unidade is
			when 0 =>
				w_BCD0 <= "10000001";
			when 1 =>
				w_BCD0 <= "11001111";
			when 2 =>
				w_BCD0 <= "10010010";
			when 3 =>
				w_BCD0 <= "10000110";
			when 4 =>
				w_BCD0 <= "11001100";
			when 5 =>
				w_BCD0 <= "10100100";
			when 6 =>
				w_BCD0 <= "10100000";
			when 7 =>
				w_BCD0 <= "10001101";
			when 8 =>
				w_BCD0 <= "10000000";
			when 9 =>
				w_BCD0 <= "10000100";
			when others =>
				w_BCD0 <= "01111111";
		end case;
	end process;
end behavioral;

