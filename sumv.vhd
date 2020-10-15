Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity sumv is port(
a, b : in std_logic_vector(23 downto 0);
k : in std_logic_vector(2 downto 0);
result : out std_logic_vector(26 downto 0));
end sumv;
architecture arch of sumv is
begin
	process(a,b) is	
	variable tmp : unsigned(8 downto 0);
	begin		
	   for i in 0 to 2 loop
			tmp := unsigned(a((i*8 + 7) downto  i*8)) * unsigned(k(i downto i)) + unsigned(b((i*8 + 7) downto  i * 8));
			result((i*9 + 8) downto  i*9) <= std_logic_vector(tmp);
	   end loop;
	end process;
end arch;
