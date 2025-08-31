library IEEE;
use IEEE.std_logic_1164.all;
 use IEEE.std_logic_unsigned.all; 
entity occupancyCounter is 
port( entranceDoor : in std_logic; 
exitDoor : in std_logic;
 max_capacity_in : in std_logic_vector(7 downto 0);
 reset : in std_logic;
  clk : in std_logic;
 count_out : out std_logic_vector(7 downto 0);
  max_capacity_out : out std_logic ); 

end occupancyCounter; 

architecture arch_count of occupancyCounter is 
signal delay_reg_entrance : std_logic;
signal delay_reg_exit :std_logic; 
signal wire1 :std_logic;
signal wire2 :std_logic; 
signal count : std_logic_vector(7 downto 0) := (others => '0'); 

begin 
---------------entrance-------------
--delay register
process (clk, reset)
begin 
if (reset = '1') then
delay_reg_entrance <= '0';
elsif (clk'event and clk ='1') then
delay_reg_entrance <= entranceDoor; 
end if;
end process; 
--decoding logic 
wire1 <= (not delay_reg_entrance) and entranceDoor; -- rising edge detection 
---------------exit-------------
 --delay register 
 process (clk, reset) begin
 if (reset = '1') then
 delay_reg_exit <= '0';
 elsif (clk'event and clk='1') then delay_reg_exit <= exitDoor; 
end if;
 end process; 
--decoding logic
 wire2 <= (not delay_reg_exit) and exitDoor; 

-------- Main Increment/decrement logic----------
process(clk, reset)
begin
if reset = '1' then
count <= (others => '0');
max_capacity_out <= '0';
elsif rising_edge(clk) then
 -- Person Entering
if wire1 = '1' and wire2 = '0' then -- wire1 = entranceDoor wire2 = exitDoor
if count < max_capacity_in then
count <= count + 1;
end if;

--Person Exiting 
elsif wire2 = '1' and wire1 = '0' then
if count > 0 then
count <= count - 1; 
end if;
 end if; 
 -- Check for max capacity 
 if count >= max_capacity_in then 
 max_capacity_out <= '1'; 
 else 
 max_capacity_out <= '0';
  end if; 
  end if; 
  end process; 
  
-- Output the current occupancy
 count_out <= count; 
end arch_count;
