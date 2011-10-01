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

# The Tree class was interesting, but it did not allow you to specify
#  a new tree with a clean user interface. Let the initializer accept a
#  nested structure of hashes. You should be able to specify a tree
#  like this: {'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle'
#  => {'child 3' => {}, 'child 4' => {} } } }.

class Tree 
	attr_accessor :children, :node_name

	def initialize(tree)
		@node_name = tree.to_a[0][0]
		@children = []
		tree[@node_name].each do |k, v|
			@children.push Tree.new(k => v)
		end
	end

	def visit_all(&block)
		    visit &block
		    children.each {|c| c.visit_all &block}
	end
      
	def visit(&block)
		    block.call self
	end
end

tree = Tree.new 'grandpa' => {'dad' => {'child 1' => {}, 'child 2' => {}}, 'uncle' => {'child 3' => {}, 'child 4' => {} }}

tree.visit_all {|node| puts node.node_name}

# Write a simple grep that will print the lines of a file having any
# occurrences of a phrase anywhere in that line. You will need to do
# a simple regular expression match and read lines from a file. (This
# is surprisingly simple in Ruby.) If you want, include line numbers.

lines = File.open('regularExpression.txt').readlines
pattern = "pablo"
lineNumber = 0
lines.each do |line|
	puts "#{lineNumber} #{line}" if line.include?(pattern)
	lineNumber +=1
end
