# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

=begin
## PSEUDOCODE
INPUT: array of numbers
OUTPUT: array of most frequent values in input array

Identify frequency for each element in the array
Store frequency values in a hash 
Return highest value(s) from the hash inside an array
=end


# 1. Initial Solution
# def mode(array)
#   counts = Hash.new(0)
#   array.each { |element| counts[element] += 1 }
#   max_frequency = 0
#   mode_array = []
#   counts.each do |key, value|
#     if value > max_frequency
#       max_frequency = value
#       mode_array = []
#       end
#     mode_array.push key if value == max_frequency
   
#     end    
#   p mode_array
# end





# 3. Refactored Solution

def mode(array)
  counts = Hash.new(0)
  array.each { |element| counts[element] += 1 }
  max_frequency = 0
  mode_array = []
  max_frequency = counts.values.max
  mode_array = counts.select { |key, value| value == max_frequency }.keys
  p mode_array
end


# 4. Reflection

=begin
 Which data structure did you and your pair decide to implement and why?  We used both arrays and hashes.  We input an array, then used hashes to count the elements that were added into it.
 Then we output as an array for the final answer.  We implemented this because while arrays are useful, hashes have their uses as well, and are better for counting things.


 Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? Yes it was easier to breakdown because when doing pseudocode solo,
 you only have 1 brain available to think up a valid solution.  When I was going through my solo challenge's psuedocode I spent an hour just thinking of how I want to go about
 solving the problem.  With a pair, you have someone else to help you problem solve.


 What issues/successes did you run into when translating your pseudocode to code?  We had the issue of forgetting about our pseudocode and perhaps we could have broken our pseudocode into more steps.
 We did have success however, in writing out our actual code, with our outline of a pseudocode.


 What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement? 
During the intial code, we used the .each method, and the .push method.  They are methods that we have used many times so far in our DBC adventure.
When refactoring, we used the methods:  values, max, select, and keys.  These are methods that were new to us.  And although they were new, they were easy to implement.
They weren't very complicated since they have very basic functions.  Such as, .values returns the values of a hash in an array, and .keys returns the keys of a hash in an array.


 =end
