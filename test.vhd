Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity test is end entity;

architecture rtl of test is
signal a : std_logic_vector(23 downto 0);
signal k : std_logic_vector(2 downto 0);
signal b : std_logic_vector(23 downto 0);

begin
DUT : entity work.sumv port map(a => a, b => b, k=>k);
    process is
        begin
        a <= std_logic_vector(conv_unsigned(1, 24));
        b <= std_logic_vector(conv_unsigned(2, 24));
        k <= std_logic_vector(conv_unsigned(2,  3));
        wait for 10 ns;
        a <= std_logic_vector(conv_unsigned(3, 24));
        wait for 10 ns;
        end process;
end rtl;