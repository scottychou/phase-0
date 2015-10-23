# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Brian Wagner].

# 0. total Pseudocode
# make sure all pseudocode is commented out!


# Input: array of numbers
# Output: the sum of the array
# Steps to solve the problem.
# add numbers together one by one


# 1. total initial solution
def total(array)
	sum = array[0]
	x = 1
	until (x == array.length)
		sum = sum + array[x] 
		x = x + 1
	end
	p sum
end


# 3. total refactored solution

def total(array)
array.inject{|sum,x| sum + x }
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:string array
# Output:strings added together
# Steps to solve the problem.
#add the strings and space inbetween

# 5. sentence_maker initial solution
def sentence_maker(array)
array.join(" ")
end

# 6. sentence_maker refactored solution
def sentence_maker(array)
variable = array.join(" ") 
variable.capitalize!
variable = variable + "."
p variable
end