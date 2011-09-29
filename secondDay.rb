#ways to open and writte in a file

#blocks mode
File.open("foo.txt","w"){|f| f << "Cool mode"}

#Whitout blocks
file = File.open("foo.txt","w")
file << "Tedious mode"
file.close

