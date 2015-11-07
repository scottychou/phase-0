# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#   end

#   def guess(guess)
#   	@guess = guess
#   	if guess > @answer
#   		p :high
#   	elsif guess < @answer
#   		p :low
#   	else
#   		p :correct  		
#   	end
#   end

#   def solved?
#   	if @answer == @guess
#   		return true
#   	else
#   		return false
#   	end
#   end
# end




# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if guess > @answer
  		p :high
  	elsif guess < @answer
  		p :low
  	else
  		p :correct  		
  	end
  end

  def solved?
  	if @answer == @guess
  		return true
  	else
  		return false
  	end
  end
end




# Reflection

=begin
    How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
	-Instance variables and methods are similar to the real world properties and behaviors of an object. Using a die as an example, 
	the real-world die has a discrete number of sides as well as discrete values for the sides. An instance variable represents this
	by being able to define the value for the sides on a die as well as what symbol is on each face of the die. A real-world die is
	capable of being rolled and revealing one of its sides. An instance method allows you to simulate this behavior and take action based on each die's properties.


    When should you use instance variables? What do they do for you?
	You should use instance variables when the behavior is unique to each object and global class variables if you want it to be shared among all objects of that class.
	For example, you might put the number of sides on a die as an instance variable as one die may have 6 sides while another may have 12. You might set a global class 
	variable to the number of dice in production that can be incremented whenever a new dice is initialized such that you can keep track of the number of dice that have been created.

    Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
	Flow control allows you to have logic in your programs. With flow control, you are able to specify different paths to follow based on a logical expression. 
	I didn't have any problems during this exercise with flow control. I think that the ternary operator is useful in flow control where the return values are true, false, or simple values.


    Why do you think this code requires you to return symbols? What are the benefits of using symbols?
	I think the code would work without symbols but the use of symbols is a performance improvement as symbols are guaranteed to be unique.


=end