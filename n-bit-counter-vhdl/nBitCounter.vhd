----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:02:34 02/22/2016 
-- Design Name: 
-- Module Name:    nBitCounter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity nBitCounter is

generic(n: integer :=32);
port(	clk:	in std_logic;
		clr:	in std_logic;
		q : out std_logic_vector(n-1 downto 0)
);
end nBitCounter;

architecture Behavioral of nBitCounter is

    signal count: std_logic_vector(n-1 downto 0); -- create signal for the output

begin
	-- behaviour describes the counter
	process(clk, clr)
	begin
		if clr = '1' then
			count <= (others => '0');
		elsif clk'event and clk = '1' then
			count <= count + 1;
		end if;
	end process;
	-- concurrent assignment statement
	q <= count;
end Behavioral;

