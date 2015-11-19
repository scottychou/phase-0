# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
=begin
assert method is defined
	error message is raised unless the block that is passed is true
name variable is set to bettysue
the assert method is called and a block that evaluates to true is passed through successfully
then a block that evaluates to false is passed through and error message is raised.


=end

# 3. Copy your selected challenge here

# Add-it-up challenge from week 4

def total(array)
	sum = array[0]
	x = 1
	until (x == array.length)
		sum = sum + array[x] 
		x = x + 1
	end
	p sum
end

def sentence_maker(array)
variable = array.join(" ") 
variable.capitalize!
variable = variable + "."
p variable
end


# 4. Convert your driver test code from that challenge into Assert Statements

assert {sentence_maker.defined? = 'method'}
assert {total.defined? == 'method'}
assert {total([1,2,3,4])==10}
assert {sentence_maker([i, like, dogs, very, much]) == "i like dogs very much"}



# 5. Reflection
=begin
In this challenge, I learned about the assert method.  It is basically a different
form of testing driver code.  If it fails, then you know where your test failed.  This
is a good way of checking your work.

=end
    Status API Training Shop Blog About Pricing 

    © 2015 GitHub, Inc. Terms Privacy Security Contact Help 