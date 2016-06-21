#!/usr/bin/env ruby

# Add exception handling for negative numbers in factorial program.

def factorial(n)	
	raise "Negative numbers not entertained.." if n < 0
	(1..n).inject(1){ |product, i| product * i }
end

puts "Please enter a number"

n = Integer(gets) rescue false 					# Validate the user input is an integer 

if n 
	puts factorial(n)
else 
	puts "Input not a number..quitting program"
end
