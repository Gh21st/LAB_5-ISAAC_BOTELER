#PART 1 
#generates unoptimized assembly file from helloworld.c 
part_IA: part_I.c 
	gcc -O0 -S part_I.c -o part_IA.s 

#generates optimized assembly file from helloworld.c 
part_IB: part_I.c 
	gcc -O4 -S part_I.c -o part_IB.s 

#PART 2 

#generate unoptimized assembly file from helloworld.c 
part_II_c: helloworld.c
	gcc -O0 -S helloworld.c -o part_II_c.s	
#generate unoptimized assembly file from helloworld.cpp 
part_II_cpp: helloworld.cpp 
	gcc -O0 -S helloworld.cpp -o part_II_cpp.s

#PART 3
#build assembly program          
part_III_max: part_III_max.s 
	gcc -no-pie part_III_max.s -o part_III_max 
#build example assembly code  
part_III_ex: part_III_ex.c 
	gcc -O0 -S part_III_ex.c -o part_III_ex.s  
#build assembly program for debugging 
part_III_max_debug: part_III_max.s 
	gcc -g -no-pie part_III_max.s -o part_III_max_debug 

