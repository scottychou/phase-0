

#Full name greeting: Write a program that asks for a person's first name, then middle, 
#then last. Finally, it should greet the person using their full name.

puts "What is your first name?"
first = gets.chomp
puts "What is your middle name?"
middle = gets.chomp
puts "What is your last name?"
last = gets.chomp

puts "your name is " + first + " " + middle + " " + last

#Bigger, better favorite number: Write a program that asks for a person's favorite number. 
#Have your program add 1 to the number, and then suggest the result as a bigger and better number.

puts "What is your favorite number?"
favorite = gets.chomp.to_i
favorite2= favorite + 1
puts favorite2.to_s + " is a bigger and better number"

=begin

    How do you define a local variable?
    	-you just set up your variable name = to whatever you want
    	for example:  localvar = 2
    
    How do you define a method?
    	-you use this format:
    	 def methodname (parameters) 
    	 	#commands
    	 end

    What is the difference between a local variable and a method?
		- Local variables store information whereas methods do something.

    How do you run a ruby program from the command line?
		-you type in, ruby filename.rb

    How do you run an RSpec file from the command line?
		-you type in, rspec filename.rb

    What was confusing about this material? What made sense?
    	-the most confusing part was making sure to use p instead of puts.  I spent a lot of time figuring that one out.
