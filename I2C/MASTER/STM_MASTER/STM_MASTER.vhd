--- STM_MASTER

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity STM_MASTER is
	port(
			i_CLK				: in std_logic;									--- entrada de Clock
			
			i_RST				: in std_logic;									--- entrada de RST global
			i_BT_A			: in std_logic;									--- entrada de Botão de seleção SLAVE A
			i_BT_B			: in std_logic;									--- entrada de Botão de seleção SLAVE B
			i_BT_C			: in std_logic;									--- entrada de Botão de seleção SLAVE C
			i_DATA_SW		: in std_logic_vector (7 downto 0);			--- entrada de dado dos Switches
			
			i_CTRL_START	: in std_logic;									--- entrada de controle START_FRAME
			i_CTRL_P2S		: in std_logic;									--- entrada de controle P2S
			i_CTRL_STOP		: in std_logic;									--- entrada de controle STOP_FRAME
			
			o_ENABLE_START	: out std_logic;									--- saida para Enable de controle START_FRAME
			o_ENABLE_P2S	: out std_logic;									--- saida para Enable de controle P2S
			o_ENABLE_STOP	: out std_logic;									--- saida para Enable de controle STOP_FRAME
			
			o_ENABLE			: out std_logic;									--- saida para ENABLE GLOBAL
			o_DATA			: out std_logic_vector (15 downto 0)		--- saida de dado I2C para P2S
		);
END STM_MASTER;

architecture behavioral of STM_MASTER is

	-- Build an enumerated type for the state machine
	type state_type is (st_IDLE, st_READ_SW, st_START_COM, st_SND_DATA, st_CLOSE_COM);
	-- Register to hold the current state
	signal state   : state_type;
	-- Attribute "safe" implements a safe state machine.
	-- This is a state machine that can recover from an
	-- illegal state (by returning to the reset state).
	attribute syn_encoding : string;
	attribute syn_encoding of state_type : type is "safe";
	
begin
	
	-- Logic to advance to the next state
	process (i_RST, i_CLK)
	begin
		if (i_RST = '0') then
			state		<= st_IDLE;
		elsif falling_edge(i_CLK) then
			case state is
				when st_IDLE =>
					if ((i_BT_A = '0') or (i_BT_B = '0') or (i_BT_C = '0')) then
						state	<= st_READ_SW;
					end if;
				
				when st_READ_SW =>
					state	<= st_START_COM;
				
				when st_START_COM =>
					if (i_CTRL_START = '1') then
						state	<= st_SND_DATA;
					end if;
					
				when st_SND_DATA =>
					if (i_CTRL_P2S = '1') then
						state	<= st_CLOSE_COM;
					end if;
				
				when st_CLOSE_COM =>
					if (i_CTRL_STOP = '1') then
						state		<= st_IDLE;
					end if;
			end case;
		end if;
	end process;
	
	
	-- Logic to determine output
	process (i_RST, state, i_BT_A, i_BT_B, i_BT_C, i_CTRL_P2S, i_CTRL_START, i_CTRL_STOP)
	begin
		if (i_RST = '0') then
			o_DATA	<= "ZZZZZZZZZZZZZZZZ";
			o_ENABLE	<= '0';
			o_ENABLE_START <= '0';
			o_ENABLE_STOP <= '0';
			o_ENABLE_P2S <= '0';
		else
			case state is
				when st_IDLE =>
					o_ENABLE_STOP	<= '0';
					o_ENABLE	<= '0';
					if (i_BT_A = '0') then
						o_DATA(15 downto 8) <= "00000000";
					elsif (i_BT_B = '0') then
						o_DATA(15 downto 8) <= "00000010";
					elsif (i_BT_C = '0') then
						o_DATA(15 downto 8) <= "00000100";
					end if;
				
				when st_READ_SW =>
					o_DATA(7 downto 0) <= i_DATA_SW;
				
				when st_START_COM =>
					o_ENABLE 			<= '1';
					o_ENABLE_START		<= '1';
				
				when st_SND_DATA =>
					o_ENABLE_START		<= '0';
					o_ENABLE_P2S		<= '1';
				
				when st_CLOSE_COM =>
					o_ENABLE_P2S 		<= '0';
					o_ENABLE_STOP		<= '1';
					
			end case;
		end if;
	end process;
	
end behavioral;