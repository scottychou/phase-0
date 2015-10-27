# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
=begin
def pad!(array, min_size, value = nil) #destructive
  if(min_size <= array.length)
    return array
  else
    counter = min_size - array.length
    while counter > 0
      array << value
      counter -= 1
    end  
    return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
    copy = []
    array.each do |element|
    copy << element
    end
  if(min_size <= array.length)
    p copy
  else
    counter = min_size - array.length  
    while counter > 0
      copy << value
      counter -= 1
    end
    p copy
  end
end
=end
# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  if(min_size <= array.length)
    return array
  else
    counter = min_size - array.length
    while counter > 0
      array << value
      counter -= 1
    end  
    return array
  end
end


def pad(array, min_size, value = nil) #non-destructive
  copy = array.clone
  if(min_size <= array.length)
    p copy
  else
    counter = min_size - array.length  
    while counter > 0
      copy << value
      counter -= 1
    end
    p copy
  end
end

# 4. Reflection

=begin
	I was successful in breaking the problem down into small steps.  We started off with Pseudocode, 
	which is basically the English equivalent of coding.  Once I had that finished, it was time to start
	translating from English, to Code.  With the exception of the WHILE loop, I'd say it was a straight translation.
	We were extremely successful in getting the main idea down.  We didn't pass all the tests on the first try however.
	The part that we struggled on, was the fact that, we can't set arrays equal to other arrays directly.  
	You have to copy an array into another array, so it's not as simple as we thought.  We had to use a while loop to help clone
	the array to a new array that we saved as a local variable/array.  

	As for refactoring, we changed the push method to the << symbol, and we brought in the clone method, which is not destructive.
	I would say that our solution is very readable and we have solid variable names.  In my own words, destructive makes a permanent modification
	to the variable/array, and non destructive does not.


	
=end