# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:integer of amount of sides on a die
# Output: a random number based on number of sides
# Steps:
=begin

DEFINE a method to initialize
DEFINE a method to display how many sides
DEFINE a method to return a random number

=end

# 1. Initial Solution

# class Die
#   def initialize(sides)
#   	unless sides >= 1
#   		raise ArgumentError.new("Must have at least 1 side")
#   	end
#     @sides = sides
#   end

#   def sides
#     p @sides
#   end

#   def roll
#     p rand(sides)+1
#   end
# end



# 3. Refactored Solution

class Die
  def initialize(sides)
  	unless sides >= 1
  		raise ArgumentError.new("Must have at least 1 side")
  	end
    @sides = sides
  end

  def sides
    p @sides
  end

  def roll
    p rand(sides)+1
  end
end






# 4. Reflection

=begin
    What is an ArgumentError and why would you use one?
    -An ArgumentError is raised when the arguments are wrong and there isn't a more specific Exception class.
    -You would use one to display a message that explains why there is an error.

    What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
	I implemented the raise method, which seems to be something I'd use only when I want an ArgumentError.
	I also used the rand method.  Which returns a random number between 0 and max-1.

    What is a Ruby class?
	-Simply put, a class is a the blueprint of an object

    Why would you use a Ruby class?
	-You would use a Ruby class in order to program in an object-oriented way. It allows you to quickly create objects that can be created and acted upon.
	In our example, we would be able to create multiple dice and throw them and see what value was on each die.

    What is the difference between a local variable and an instance variable?
    Where can an instance variable be used?
    -It's a matter of scope. A local variable is only visible/usable in the method in which it is defined (i.e., it goes away when the method returns).
	An instance variable, on the other hand, is visible anywhere else in the instance of the class in which it has been defined (this is different from a class variable,
	which is shared between all instances of a class). Keep in mind, though, that when you define the instance variable is important. If you define an instance variable 
 	in one method, but try to use it in another method before calling the first one, your instance variable will have a value of nil:
=end

