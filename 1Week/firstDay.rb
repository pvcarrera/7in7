#Print the string "Hello, wold"
puts 'Hello, wolrd'

#For the string "Hello, Ruby", find the index of the word "Ruby"
hello = 'Hello, Ruby'
puts hello.index('Ruby')

#Print your name ten times
i = 0
while i < 10
	puts 'pablo' 
	i = i + 1
end

#Print the string "This is sentence number 1" where the number 1 changes from 1 to 10
i = 1
while i < 11
	puts "This is sentence number #{i}"
	i = i + 1
end

#Bonus problem
number = rand(10)
playerNumber = 0
while playerNumber != number
	puts 'Introduce un número entre 0 y 9'
	playerNumber = gets.to_i
	puts 'El número es mayor' if playerNumber < number
	puts 'El número es menor' if playerNumber > number
end
puts "You win!!"

