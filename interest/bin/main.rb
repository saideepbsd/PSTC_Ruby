#!/usr/bin/env ruby

require_relative '../lib/interest.rb'

# Get and validate p, t input from user
puts 'Enter Principal amount'
principal = Float(gets) rescue false 	
puts 'Enter Time period'
time = Float(gets) rescue false

if principal && time 
	#Initialise class with a block
	interest = Interest.new.tap do |i|
	  i.p = principal
	  i.t = time
	  i.r = 10.0
	end	
	puts "Difference is : #{interest.difference}"
else
	puts 'Enter valid input'
		
end

