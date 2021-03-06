--- STM_SLAVE

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity STM_SLAVE is
	generic(
			ADD 		: std_logic_vector (6 downto 0) 		:= "1111111"	--- Address do Slave
		);
	port(
			i_CLK		: in std_logic;								--- entrada de Clock
			i_RST		: in std_logic;								--- entrada de RST global
			i_ENABLE	: in std_logic;								--- entrada de Enable DET_FRAME
			i_DATA	: in std_logic_vector (15 downto 0);	--- entrada de dado do S2P
			o_ENABLE	: out std_logic;								--- saida para MUX_3x1_3SEL
			o_DATA	: out std_logic_vector (7 downto 0)		--- saida de dado para MUX_3x1_3SEL
		);
END STM_SLAVE;

architecture behavioral of STM_SLAVE is

	-- Build an enumerated type for the state machine
	type state_type is (st_IDLE, st_RW, st_ID, st_RC_DATA, st_SND_DATA, st_NULL);
	-- Register to hold the current state
	signal state   : state_type;
	-- Attribute "safe" implements a safe state machine.
	-- This is a state machine that can recover from an
	-- illegal state (by returning to the reset state).
	attribute syn_encoding : string;
	attribute syn_encoding of state_type : type is "safe";
	
	signal w_ENABLE : std_logic;
	
begin
	
	-- Logic to advance to the next state
	process (i_RST, i_CLK)
		variable stage 	: std_logic := '0';
	begin
		if (i_RST = '0') then
			state		<= st_IDLE;
		elsif (falling_edge (i_CLK)) then
			case state is
				when st_IDLE =>
					if (i_ENABLE = '1') then
						if (not(i_DATA = "ZZZZZZZZZZZZZZZZ") and (stage = '0')) then
							state	<= st_ID;
						end if;
					else 
						stage := '0';
					end if;
				
				when st_ID =>
					If (i_DATA(15 downto 9) = ADD) then
						state	<= st_RW;
					else
						state	<= st_NULL;
					end if;
				
				when st_RW =>
					stage := '1';
					If (i_DATA(8) = '0') then
						state <= st_RC_DATA;
					else
						state	<= st_SND_DATA;
					end if;
				
				when st_RC_DATA =>
					state <= st_IDLE;
				
				when st_SND_DATA =>
					state <= st_NULL;
				
				when st_NULL =>
					stage := '1';
					state <= st_IDLE;
			end case;
		end if;
	end process;
	
	
	-- Logic to determine output
	process (i_RST, state)
	begin
		if (i_RST = '0') then
			o_DATA	<= "ZZZZZZZZ";
			w_ENABLE	<= '0';
		else
			case state is
				when st_IDLE =>
					
				when st_ID =>
					
				when st_RW =>
					
				when st_RC_DATA =>
					w_ENABLE <= '1';
					o_DATA	<= i_DATA(7 downto 0);
					
				when st_SND_DATA =>
					o_DATA	<= "ZZZZZZZZ";
					
				when st_NULL =>				
					w_ENABLE	<= '0';
					
			end case;
		end if;
	end process;
	
	o_ENABLE <= w_ENABLE;
	
end behavioral;