#!/usr/bin/env ruby

require "prime"

# Define a method to find all prime numbers upto n using 'step' function.
def prime_numbers(n)
	raise "Invalid number. Only numbers >= 2 are entertained" if n <= 1
	primes = [2]
	(3..n).step(2) { |n| primes.push(n) if n.prime? } 				# Step by 2 (as even numbers are not prime) 
	primes 
end

puts "Enter a positive number upto which prime numbers are to be printed"

n = Integer(gets) rescue false 									# Validate the user input is an integer 

if n	
	puts "List of prime numbers upto #{n} :\n #{prime_numbers(n)}"
else 
	puts "Input not a valid number..quitting program"
end
