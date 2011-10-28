#Fibonacci recursiv)oc
rfibonacci := method( number, if( number < 2, 1, rfibonacci(number-1) + rfibonacci(number-2) ))

for(i,0,10,rfibonacci(i) println)

