----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2022 08:22:59 PM
-- Design Name: 
-- Module Name: a2_src - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity a2_src is
    Port ( B0 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           B3 : in STD_LOGIC;
           A : out STD_LOGIC;
           B : out STD_LOGIC;
           C : out STD_LOGIC;
           D : out STD_LOGIC;
           E : out STD_LOGIC;
           F : out STD_LOGIC;
           G : out STD_LOGIC;
           Anode: out STD_LOGIC_VECTOR(3 downto 0));
end a2_src;

architecture Behavioral of a2_src is

begin
Anode<="1110";
A <= (not B3 and not B2 and not B1 and B0) or(not B3 and B2 and not B1 and not B0) or (B3 and B2 and not B1 and B0) or (B3 and not B2 and B1 and B0);
B <= (B2 and B1 and not B0) or (B3 and B1 and B0) or (not B3 and B2 and not B1 and B0) or (B3 and B2 and not B1 and not B0);
C <= ((NOT B3) AND (NOT B2) AND B1 AND (NOT B0)) OR (B3 AND B2 AND B1) OR (B3 AND B2 AND (NOT B0));
D <= ((NOT B3) AND (NOT B2) AND (NOT B1) AND B0) OR ((NOT B3) AND B2 AND (NOT B1) AND (NOT B0)) OR (B3 AND (NOT B2) AND B1 AND (NOT B0)) OR (B2 AND B1 AND B0);
E <= ((NOT B2) AND (NOT B1) AND B0) OR ((NOT B3) AND B0) OR ((NOT B3) AND B2 AND (NOT B1));
F <= ((NOT B3) AND (NOT B2) AND B0) OR ((NOT B3) AND (NOT B2) AND (B1)) OR ((NOT B3) AND B1 AND B0) OR (B3 AND B2 AND (NOT B1) AND B0);
G <= ((NOT B3) AND (NOT B2) AND (NOT B1)) OR ((NOT B3) AND B2 AND B1 AND B0) OR (B3 AND B2 AND (NOT B1) AND (NOT B0));

end Behavioral;