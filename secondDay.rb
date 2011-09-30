#ways to open and writte in a file

#blocks mode
File.open("foo.txt","w"){|f| f << "Cool mode"}

#Whitout blocks
file = File.open("foo.txt","w")
file << "Tedious mode"
file.close

#Convert array to hash
a = ['uno', 1, 'dos', 2]
Hash[*a]

#Convert hash to array
hash = {1 => 'uno', 2 => 'dos'}
hash.to_a.flatten

#iterate through a hash

hash.each do |k,v|
	puts "Clave = #{k}"
	puts "Valor = #{v}"
end

#Print the contents of an array of sixtenn numbers, four numbers at time, using just each
a = (0..16).to_a
string = ''
count = 1;
a.each do |i|
	string = string + i.to_s
	if count == 4
		puts string
		count = 0;
		string = '';
	end
	count = count + 1
end

#Print the contents of an array of sixtenn numbers, four numbers at time, using just each (slice)

a = (0..16).to_a
a.each_slice(4) do |four|
	puts four
end
