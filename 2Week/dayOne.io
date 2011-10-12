#Some test code
Pablo := Object clone
Pablo description := "buen chaval"
Pablo description
pablito := Pablo clone
pablito description
pablito slotNames
pablito run := method("run" println)
pablito run

#Find Io example problems
#http://iolanguage.com/about/samplecode/

#Find an Io community that will answer questions
#http://tech.groups.yahoo.com/group/iolanguage/

#Find a style guide with Io idioms
#http://en.wikibooks.org/wiki/Io_Programming/Io_Style_Guide

#Evaluate 1 + 1 and then 1 + "one". Is Io strongly typed or weakly typed? 
(1 + 1) println
#(1 + "one") println //this line throws Exception: argument 0 to method '+' must be a Number, not a 'Sequence' . It seems strong typed

#Is 0 true or false?
if(0, "0 is true"println , "0 is false"println )
#Is empty sring true or false?
if("", "empty string is true"println, "empty string is false"println)
#Is nil true or false?
if(nil, "nil is true"println, "nil is false"println)

#How can you tell what slots a prototype supports?
pablito slotNames println

#What is the difference between = (equals), := (colon equals), and ::= (colon colon equals)? When wold you use each one?
slot := Object clone
slot = 0
slot println
Car := Object clone do (
  drive ::= false
)

ferrari := Car clone setDrive(true)
ferrari drive println
