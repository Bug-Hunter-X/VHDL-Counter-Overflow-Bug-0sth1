```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity fixed_counter is
  port (
    clk : in std_logic;
    rst : in std_logic;
    count_out : out integer range 0 to 15
  );
end entity;

architecture behavioral of fixed_counter is
  signal internal_count : integer range 0 to 15 := 0;
begin
  process (clk, rst)
  begin
    if rst = '1' then
      internal_count <= 0;
    elsif rising_edge(clk) then
      internal_count <= internal_count + 1;
      if internal_count = 16 then -- Explicitly handle overflow
         internal_count <= 0;  --Reset counter to zero after overflow
      end if;
    end if;
  end process;
  count_out <= internal_count;
end architecture;
```