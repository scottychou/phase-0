# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
=begin
input: an integer
output:a boolean
steps:  
sets the integer as the max
run fibonacci formula while the number is lesser than max
if the integer ever equals a number in the sequence return true, otherwise return false
=end


# Initial Solution

# def is_fibonacci?(num)
#   array = [0, 1, 1]
#   current = 0
#   while current <= num
#     array << array[array.length - 1] + array[array.length - 2]
#     current = array[array.length - 1]
#   end
#   if array.include?(num)
#     p true
#   else 
#     p false
#   end
# end




# Refactored Solution

def is_fibonacci?(num)
  array = [0, 1, 1]
  current = 0
  while current <= num
    array << array[array.length - 1] + array[array.length - 2]
    current = array[array.length - 1]
  end
  if array.include?(num)
    p true
  else 
    p false
  end
end





# Reflection

=begin
    What concepts did you review in this challenge?
    I reviewed while loops and arrays.

    What is still confusing to you about Ruby?
    nothing.

    What are you going to study to get more prepared for Phase 1?
    definitely not while loops and arrays.
=end