#!/usr/bin/env ruby

require_relative '../lib/factorial.rb'

puts 'Please enter a number'

n = Integer(gets) rescue false # Validate the user input is an integer 

f = Factorial.new

if n 
	puts f.factorial(n)
else 
	puts "Input not a number..quitting program"
end

