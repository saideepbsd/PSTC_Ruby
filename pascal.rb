#!/usr/bin/env ruby

# Print Pascal's triangle using 'yield'.

def pascal(n)

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

n = 10

# print nCk
pascal(n) do |row, column|
  printf("%d ", factorial(row) / (factorial(column) * factorial(row - column)))
end	
