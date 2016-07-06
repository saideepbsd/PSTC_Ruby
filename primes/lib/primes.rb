#!/usr/bin/env ruby

require 'prime'

# Define a method to find all prime numbers upto n using 'step' function.
class Primes

	def primes_upto(n)
		
		raise 'Invalid number. Only numbers >= 2 are entertained' if n <= 1
		
		primes = [2]
		(3..n).step(2) { |n| primes.push(n) if n.prime? } # Step by 2 as even numbers are not prime
		
		primes
		 
	end
	
end

