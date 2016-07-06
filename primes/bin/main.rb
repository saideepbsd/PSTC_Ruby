#!/usr/bin/env ruby

require_relative '../lib/primes.rb'

puts 'Enter a positive number upto which prime numbers are to be printed'

n = Integer(gets) rescue false 	# Validate the user input is an integer 

if n
	primes = Primes.new
	puts "List of prime numbers upto #{n} :\n#{primes.primes_upto(n)}"
else 
	puts 'Input not a valid number..quitting program'
end

