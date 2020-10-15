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
	variable tmp1 : unsigned(8 downto 0);
	variable tmp2 : unsigned(8 downto 0);
	variable tmp3 : unsigned(8 downto 0);
	begin		
			tmp1 := unsigned(a( 7 downto  0)) * unsigned(k(0 downto 0)) + unsigned(b( 7 downto  0));
			tmp2 := unsigned(a(15 downto  8)) * unsigned(k(1 downto 1)) + unsigned(b(15 downto  8)); 
			tmp3 := unsigned(a(23 downto 16)) * unsigned(k(2 downto 2)) + unsigned(b(23 downto 16));	
			result( 8 downto  0) <= std_logic_vector(tmp1);
			result(17 downto  9) <= std_logic_vector(tmp2);
			result(26 downto 18) <= std_logic_vector(tmp3);
	end process;
end arch;
