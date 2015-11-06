# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:an array of labels/strings
# Output:when roll is called, a random label is returned
# Steps:
=begin
	initialize a new die with an argumenterror if it's not alteast array size of 1
	sides will return the length of the array
	roll will return a random string on the die

=end


# Initial Solution

# class Die
#   def initialize(labels)
#   	@labels = labels
#   	raise ArgumentError.new("you need to insert an array of 1 or greater") if labels.empty?
#   end

#   def sides
#   	return @labels.length
#   end

#   def roll
#   	return @labels[rand(sides)]
#   end
# end



# Refactored Solution

class Die
  def initialize(labels)
  	@labels = labels
  	raise ArgumentError.new("you need to insert an array of 1 or greater") if labels.empty?
  end

  def sides
  	return @labels.length
  end

  def roll
  	return @labels[rand(sides)]
  end
end

#REFLECTION
=begin
    What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
    -The answer is no, these classes were more or less the same thing.  The previous class took numbers, this one took strings.  There were very minimal changes necessary, the only
    main difference I can think of is that I had to use the .rand method to choose a side on the die.

    What does this exercise teach you about making code that is easily changeable or modifiable? 
    -  This exercise teaches me that instance variables can greatly reduce the length of my code.  Each of my methods is only one line long.

    What new methods did you learn when working on this challenge, if any?
    I learned no new methods.  This was probably the easiest and fastest challenge I have had to do so far in dbc.

    What concepts about classes were you able to solidify in this challenge?
    I was able to solidify my knowledge of instance variables.  They can be used anywhere within the class. So they have a particular advantage over 
    local variables which can only be used within a method.
=end