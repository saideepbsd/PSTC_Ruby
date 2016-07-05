#!/usr/bin/env ruby

# Print Pascal's triangle using 'yield'.
class Pascal
	
	def print_triangle(n)

		(0..n).each do |r|
			(0..r).each do |c|
				yield r,c
			end
		print("\n")	
		end

	end

	# Calculate factorial of a number 
	def factorial(n)
		(1..n).inject(1){ |product, i| product * i }
	end
	
end

