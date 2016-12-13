--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:34:37 02/22/2016
-- Design Name:   
-- Module Name:   C:/Users/vthangar/Documents/counter/nBitCounter/nBitCounter_TB.vhd
-- Project Name:  nBitCounter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nBitCounter
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY nBitCounter_TB IS
END nBitCounter_TB;
 
ARCHITECTURE behavior OF nBitCounter_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nBitCounter
    PORT(
         clk : IN  std_logic;
         clr : IN  std_logic;
         q : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';

 	--Outputs
   signal q : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nBitCounter PORT MAP (
          clk => clk,
          clr => clr,
          q => q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for clk_period*2;
      clr <= '1';	
		wait for clk_period*2;
		clr <= '0';

      wait;
   end process;

END;
