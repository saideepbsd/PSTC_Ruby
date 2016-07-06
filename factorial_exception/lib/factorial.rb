#!/usr/bin/env ruby

# Add exception handling for negative numbers in factorial program.

class Factorial
	
	def factorial(n)			
		raise 'Negative numbers not entertained..' if n < 0		
		(1..n).inject(1){ |product, i| product * i }	
	end
	
end

