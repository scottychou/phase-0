#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:two classes, with methods that initialize and greet
# Output:a nice greeting
# Steps:
=begin
initialize the namedata class to have my own name, and apply the reader attribute to :name
initialize the greetings class to make a new instance of namedata.
define a method that outputs a greeting with my name

=end

class NameData
	attr_reader :name
	def initialize
		@name = "Scott"
	end
end


class Greetings
	def initialize
		@person = NameData.new.name
	end
	def salutation
		puts "#{@person}, sup dawg"
	end
end



# Reflection
=begin
Release 1: 
    What are these methods doing?
	-The methods are changing the values of the instance variables, and making a pause between each line of code.

    How are they modifying or returning the value of instance variables?
	-The instance variables are being modified permanently, and then being returned right afterwards.

Release 2:
    What changed between the last release and this release?
    What was replaced?
    -The reader attribute was added to the age variable, and the what_is_age method was deleted.  Now we can just call the .age method instead.

    Is this code simpler than the last?
    -This is simpler because we were able to completely delete a method.

Release 3: 
    What changed between the last release and this release?
    What was replaced?
	-The writer attribute was added to the age variable, and the change_my_age method was deleted.
	-The change_my_age method can now use the .age method instead, since the writer attribute modifies the age variable.

    Is this code simpler than the last?
	Yes it is, because we got rid of yet another method.

* RELEASE 6 REFLECTION
* What is a reader method?
  ** A reader is a method that allows you to access an instance variable
  from outside of the class.
* What is a writer method?
  ** A writer is a method that allows you to update an instance variable
  from outside of the class.
* What do the attr methods do for you?
  ** attr methods are a convenient syntax to provide reader/writer
  methods to your instance variables.
* Should you always use an accessor to cover your bases? Why or Why not?
  ** It depends on the nature of the variable. Some variables should be
  private for security purposes and there may be a specific reason to
  not have an accessor.
* What is confusing to you about these methods?
  ** The syntax is a little strange to me regarding these methods. Also
  it is a little confusing that instance variables are "private" by
  default.
=end
