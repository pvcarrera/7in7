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
