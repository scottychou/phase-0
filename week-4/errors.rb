# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
 # while true
#    puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# line 170
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# expecting keyword_end
# 5. Where is the error in the code?
# line 17, there is no end keyword to close off the method
# 6. Why did the interpreter give you this error?
# because ruby requires methods to have an end, and loops to have an end.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# => 35
# 2. What is the type of error message?
# => in main
# 3. What additional information does the interpreter provide about this type of error?
# => undefined localvariable or method
# 4. Where is the error in the code?
# => line 35 no equals sign after the variable
# 5. Why did the interpreter give you this error?
# => variables and methods need to be defined.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# => 50
# 2. What is the type of error message?
# => in main
# 3. What additional information does the interpreter provide about this type of error?
# => undefined method
# 4. Where is the error in the code?
# => the beginning of the method
# 5. Why did the interpreter give you this error?
# => methods need to be defined with a def and an end

# --- error -------------------------------------------------------

#def cartmans_phrase
 # puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 65
# 2. What is the type of error message?
# => argument error
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments
# 4. Where is the error in the code?
# => line 65, this method has no parameters	
# 5. Why did the interpreter give you this error?
# => if a method has no parameters, then when you call the method, you can't give it parameters

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
  #puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# => 84
# 2. What is the type of error message?
# => argument error
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments
# 4. Where is the error in the code?
# => the lack of a parameter
# 5. Why did the interpreter give you this error?
# => if a method is defined to have a parameter, then when the method is called it needs the right amount of parameters



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
  #puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => 105	
# 2. What is the type of error message?
# => argument error
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments
# 4. Where is the error in the code?
# => line 109, only 1 argument
# 5. Why did the interpreter give you this error?
# => we defined the method to have 2 parameters, and we only supplied 1 when we called it.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 124
# 2. What is the type of error message?
# => type error
# 3. What additional information does the interpreter provide about this type of error?
# => string can't be coerced into fixnum
# 4. Where is the error in the code?
# => the interpretor didn't expect to multiply by a string
# 5. Why did the interpreter give you this error?
# => you can't multiply by strings.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 139
# 2. What is the type of error message?
# => zero division error
# 3. What additional information does the interpreter provide about this type of error?
# => divided by 0
# 4. Where is the error in the code?
# => at the very end where it is dividing by 0
# 5. Why did the interpreter give you this error?
# => dividing by 0 gives you an undefined number.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 155
# 2. What is the type of error message?
# => load error
# 3. What additional information does the interpreter provide about this type of error?
# => cannot load such file
# 4. Where is the error in the code?
# => the markdown file is not in the same directory
# 5. Why did the interpreter give you this error?
# => md file is no where to be found, so it is implossible to be loaded.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin
    Which error was the most difficult to read?
    -the last one, because it outputted my entire pathing

    How did you figure out what the issue with the error was?
    -I used my super human abilities of reading the error, and error syntax.

    Were you able to determine why each error message happened based on the code? 
	-Yes, the code was calling something that didn't exist.

    When you encounter errors in your future code, what process will you follow to help you debug?
    I will look at all elements of the error to help me debug.
