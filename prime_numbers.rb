#!/usr/bin/env ruby

require "prime"

# Define a method to find all prime numbers upto n using 'step' function.

def prime_numbers(n)

	if n <= 1 
		puts "Invalid number. Only numbers >= 2 are entertained"
	else	
		puts 2
		(3..n).step(2) { |n| puts n if n.prime? } # Step by 2 (as even numbers are not prime) 
	end 

end

puts "Enter a positive number upto which prime numbers are to be printed"

n = Integer(gets) rescue false # Validate the user input is an integer 

if n
	prime_numbers(n)
else 
	puts "Input not a valid number..quitting program"
end	

