add wave entranceDoor 
add wave exitDoor 
add wave max_capacity_in 
add wave clk 
add wave reset 
add wave count_out 
add wave max_capacity_out 

force clk 0 0, 1 50 -repeat 100

force reset  1 
force entranceDoor  0 
force exitDoor  0 
force max_capacity_in  00001000
run 100 ns
 
force reset  0 
run 100 ns
 
force entranceDoor 1
run 100 ns 
force entranceDoor 0          
run 100 ns

force exitDoor 1
run 100 ns 
force exitDoor  0        
run 100 ns

force  entranceDoor  1
run 100 ns 
force exitDoor  1         
run 100 ns

force entranceDoor  1 
run 100 ns
force entranceDoor  0         
run 100 ns

force entranceDoor  1 
run 100 ns
force entranceDoor  0         
run 100 ns

force entranceDoor  1
run 100 ns 
force entranceDoor  0         
run 100 ns

force entranceDoor  1
run 100 ns 
force entranceDoor  0       
run 100 ns

force entranceDoor  1
run 100 ns 
force entranceDoor  0        
run 100 ns 

force entranceDoor  1
run 100 ns
force entranceDoor  0     
run 100 ns

force entranceDoor  1
run 100 ns 
force entranceDoor  0         
run 100 ns

force entranceDoor  1
run 100 ns 
force entranceDoor  0    
run 100 ns

force entranceDoor  1
run 100 ns 
force entranceDoor  0    
run 100 ns

force entranceDoor  1
run 100 ns 
force entranceDoor  0    
run 100 ns

force reset 1
run 100 ns 
force reset 0 
run  100 ns                     
