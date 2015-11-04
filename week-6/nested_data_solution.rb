# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:1
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:1
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:1
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES
# destructive
number_array = [5, [10, 15], [20,25,30], 35]
number_array.map! do |element| 
  if element.kind_of?(Array)
    element.map! {|inner| p inner+5}
  else
  p element + 5
  end
end
p number_array

# Bonus:
=begin
IF string, then add "ly"
ELSE go inside of the array
  IF string, then add "ly"
  ELSE go inside of the array  
    IF string, then add "ly"
    ELSE go inside of the array

=end

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# startup_names.map! do |element| 
#   if element.kind_of?(String)
#     p "#{element}ly" 
#   else
#     element.map! do |element|
#       if element.kind_of?(String)
#       p "#{element}ly" 
#       else
#         element.map! do |element|
#         if element.kind_of?(String)
#         p "#{element}ly" 
#         end
#       end
#     end
#    end
#  end
# end
# p startup_names


p startup_names.flatten.map! { |element| "#{element}ly"}


=begin

    What are some general rules you can apply to nested arrays?
	-For me, I generally try to keep track of how many commas are outside and inside of arrays there are.  
	Also, you can reference items inside nested arrays by stacking the index ([]) operator. This can allow you to dive deep inside a nested array structure.

    What are some ways you can iterate over nested arrays?
	You can iterate over nested arrays by using .each for each element in the array, or you can use the .map method.

    Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
    We used methods we were already familiar with.  For this particular assignment, we  used the .map! method.  It was a good option because we needed something destructive
    to modify the array permanently.


=end