# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digit credit card number as integer
# Output: True or False, or argument error if not 16 digits
# Steps:
=begin
Take the integer and check if it's length is 16.
IF it is not, then argumenterror
ELSE
  convert integer to string then split it into an array
  turn each individual cell back into an integer
  and then multiply every other number by 2
split the 2-digit products into 2 separate digits
add the integers together, and if it is divisible by 10, then good job, and output true.


=end

# Initial Solution

# def check_card(integer)
#   multiplied_array = []
#   split_array = []
#   integer_array = []
#   seriously_tho_final_array = []
#   strings_array = integer.to_s.split("") 
#   strings_array.each do |string| 
#     integer_array << string.to_i
#   end
#   if integer_array.length != 16
#     raise ArgumentError.new("Not a valid number of digits")
#   else
#     counter = 0
#     while counter < integer_array.length      
#       if counter % 2 == 0        
#         multiplied_array << integer_array[counter]*2        
#       else        
#         multiplied_array << integer_array[counter]
#       end
#       counter += 1
#     end
#   end
   
#   multiplied_array.each do |this|
#     if this > 9 
#       split_array << this.to_s.split("")     # --> outputs [1, 2]
#     else
#       split_array << this
#     end
#   end
#   split_array.flatten.each do |element|
#     seriously_tho_final_array << element.to_i
#   end
      
#   total = seriously_tho_final_array.inject("+")
 
#   if total % 10 == 0
#     return true
#   else
#     return false
#   end
# end


# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(creditcard)
#     @creditcard = creditcard
#     integer_array = []
#     strings_array = @creditcard.to_s.split("") 
#     strings_array.each do |string| 
#       integer_array << string.to_i
#     end
#     unless integer_array.length == 16
#       raise ArgumentError.new("Not a valid number of digits")
#     end
#   end
  
#   def check_card
#     multiplied_array = []
#     split_array = []
#     integer_array = []
#     seriously_tho_final_array = []
#     strings_array = @creditcard.to_s.split("") 
#     strings_array.each do |string| 
#       integer_array << string.to_i
#     end 
#     counter = 0
#     while counter < integer_array.length      
#       if counter % 2 == 0        
#         multiplied_array << integer_array[counter]*2        
#       else        
#         multiplied_array << integer_array[counter]
#       end
#       counter += 1
#     end
#     multiplied_array.each do |this|
#       if this > 9 
#         split_array << this.to_s.split("")     # --> outputs [1, 2]
#       else
#         split_array << this
#       end
#     end
#     split_array.flatten.each do |element|
#       seriously_tho_final_array << element.to_i
#     end
#     total = seriously_tho_final_array.inject("+")
#     if total % 10 == 0
#       p true
#     else
#       p false
#     end    
#   end  
# end



# Refactored Solution

class CreditCard
  def initialize(creditcard)
    @creditcard = creditcard
    @strings_array = @creditcard.to_s.split("") 
    @strings_array.map! { |element| element.to_i }
    @multiplied_array = []
    @final_array = []

    raise ArgumentError.new("Not a valid number of digits") if @strings_array.length != 16
  end
  
  def timestwo
    counter = 0
      while counter < @creditcard.to_s.length    
      if counter.even?        
        @multiplied_array << @strings_array[counter]*2        
      else        
        @multiplied_array << @strings_array[counter]
      end
      counter += 1
    end
  end
  
  def twodigitsplitter
    split_array = []
    @multiplied_array.each do |number|    
        split_array << number.to_s.split("")     # --> outputs [1, 2]
    end
    split_array.flatten.each do |element|
      @final_array << element.to_i
    end
  end
  
  def digit_sum 
    total = @final_array.inject("+")
    if total % 10 == 0
      p true
    else
      p false
    end
  end  
  
  def check_card    
    timestwo
    twodigitsplitter
    digit_sum
  end  
end






# Reflection
=begin

    What was the most difficult part of this challenge for you and your pair?
    -Neither of us was well-versed in the material we needed for this week.  We did a lot of learning during
    this assignment, and so, in the end, it took us about 4 hours to finish it all and refactor.  We didn't use
    the class at all in our first run-through and just made it all in one big messy method.

    What new methods did you find to help you when you refactored?
    We broke our problem out into several different methods to help keep organized, and make our code
    better suited for reusability.  We used the inject method which basically helped us add all our numbers together,
    and then we used the flatten method to condense our array of arrays into just one array.
    

    What concepts or learnings were you able to solidify in this challenge?
    I finally am beginning to learn how classes and instance variables work.  These are things that are new to me.
    I am figuring out when and where to use them, and why and why I can't.  In general, I am just
    getting more comfortable in writing good code that is readable.

=end