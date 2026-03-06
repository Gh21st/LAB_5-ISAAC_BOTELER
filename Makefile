#PART 1 
#generates unoptimized assembly file from helloworld.c 
unoptimized_c: helloworld.c 
	gcc -O0 -S helloworld.c -o helloworld_unoptimized_c.s 

#generates optimized assembly file from helloworld.c 
optimized_c: helloworld.c 
	gcc -O4 -S helloworld.c -o helloworld_optimized_c.s 

#PART 2 

#generate unoptimized assembly file from helloworld.cpp 
unoptimized_cpp: helloworld.cpp 
	gcc -O0 -S helloworld.cpp -o helloworld_unoptimized_cpp.s

#PART 3
#build assembly program           
aggregate_ints: aggregate_ints.s 
	gcc -no-pie aggregate_ints.s -o aggregate_ints


