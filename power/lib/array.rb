#!/usr/bin/env ruby

# Define a method power() for an array. It takes an argument 'x' and returns the array with elements  raised to power 'x'.
# Try to make use of array functions. Eg: [1,2,3,4,5,6].power(3) ­> [1, 8, 27, 64, 125, 216]
class Array

	def power(x)
		collect { |i| i**x }
	end
	
end

