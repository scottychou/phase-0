# Numbers to Commas Solo Challenge

# I spent [4] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? integer
# What is the output? (i.e. What should the code return?) a string that displays a number with commas
# What are the steps needed to solve the problem? see below

=begin
INPUT integer as a parameter
IF less than 0, RETURN "not a positive integer"
ELSE IF less than or equal to 999, return integer as is
ELSE
    convert integer into a string, then find length
        find amount of commas needed by using commas =(length-1 / 3)
        IF length % 3 equals 0
            insert comma in index[3],index[6], index[9] and so on
        IF length % 3 equals 1
            insert comma in index[1], index[4], index[7] and so on.
        ELSE length % 3 equals 2
            insert comma in index [2], index[5], index[8] and so on
        only insert the amount of commas calculated




=end

# 1. Initial Solution
# def separate_comma(int)
#     result = ""
#     if int < 0 
#         result = "not a positive integer"
#     elsif int < 1000
#         result = int
#     elsif int >= 1000
#         finalthreedigits = int.to_s.length
#         arrcount = 0
#         commas = (int.to_s.length-1)/3
#         while commas >= 0
#             if finalthreedigits == 3
#                 result += int.to_s[arrcount]
#                 result += int.to_s[arrcount+1]
#                 result += int.to_s[arrcount+2]
#                 finalthreedigits -= 3
#                 arrcount += 3
#                 break
#             elsif finalthreedigits % 3 == 0
#                 result += int.to_s[arrcount]
#                 result += int.to_s[arrcount+1]
#                 result += int.to_s[arrcount+2]
#                 result += ','
#                 arrcount += 3
#                 finalthreedigits -= 3
#             elsif finalthreedigits % 3 == 1
#                 result += int.to_s[arrcount] 
#                 result += ','
#                 arrcount += 1  
#                 finalthreedigits -= 1
#             elsif finalthreedigits % 3 == 2
#                 result += int.to_s[arrcount]
#                 result += int.to_s[arrcount+1] 
#                 result += ','
#                 arrcount += 2   
#                 finalthreedigits -= 2
#             end
#             commas = commas - 1
#         end
#     end
#     p result.to_s
# end


# 2. Refactored Solution

 def separate_comma(int)
   result = ""
   newint = int.to_s
   length = newint.length
   newint.each_char do |c|
     result += c
     length -=1
     if length % 3==0 && length != 0
       result += ','
     end
   end
   return result
 end



# 3. Reflection

=begin
    What was your process for breaking the problem down? What different approaches did you consider?
    -My process was to think about what literally needs to happen in order to get the commas inside of the number, 
    with the correct spacing.  My approach was a very literal translation of inserting commas in every 3 decimal places,
    and if it was the last 3 numbers, then no comma was necessary.

    Was your pseudocode effective in helping you build a successful initial solution?  
    -Yes, it was effective in building a successful initial solution.  Since my answer was ridiculously long, it was very
    clear that there would be some refactoring involved shortly afterwards.

    What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
    How did you initially iterate through the data structure?
    -I used the .each_char method and combined some conditional operators.  The main difficulty was making sure that the logic still flowed properly.  My code works the same, so no significant changes,
    except for the fact that I reduced my solution from 40 lines of code, to just 10 lines of code.  I initially iterated through the data structure, by inserting the numbers as
    individual strings one by one.  So when I used a do loop, it significantly reduced the length of code.

    Do you feel your refactored solution is more readable than your initial solution? Why?
    definitely, my intial solution is 40 lines of code, I don't even want to read through that again.

=end
