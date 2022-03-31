library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;
 
entity reg is
PORT( D: in std_logic_vector(31 downto 0);
CLOCK: in std_logic;
Q: out std_logic_vector(31 downto 0));
end reg;
 
architecture behavioral of reg is
begin
process(CLOCK)
begin
if rising_edge(CLOCK) then
Q <= D;
end if;
end process;
end behavioral;

