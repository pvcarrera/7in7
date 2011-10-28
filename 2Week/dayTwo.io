#Fibonacci recursivoc
rfibonacci := method( number, if( number < 2, 1, rfibonacci(number-1) + rfibonacci(number-2) ))

for(i,0,10,rfibonacci(i) println)

#Fibonacci bucle
bfibonacci := method ( number, 
	if( number < 2, 1,
		n_1 := 1 
		n_2 := 1 
		sum := 2 
		for(i, 2, number,
			 sum = n_1 + n_2 
			 n_1 = n_2 
			 n_2 = sum
		) 
	sum
	)
)

for(i,0,10,bfibonacci(i) println)
