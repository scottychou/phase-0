
# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
	#number - (number-1) - number-2, etc., until number = 0
	counter = number
	sum = 1
	while (counter > 0)
		sum = sum * counter
  		counter = counter - 1
	end
	p sum
end







