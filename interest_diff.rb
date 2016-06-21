#!/usr/bin/env ruby

# Create a class Interest that gives the user the difference in amount calculated simply and compound.
# Initialise class with a block. 'p' and 't' are entered by user. Take 'r' = 10% pa.
class Interest
	attr_accessor :p, :t, :r

	def interest_diff
		simple_interest = (p * t * r.to_f) / 100  
		compound_interest = (p * (1 + r.to_f/100) ** t) - p
		diff = (compound_interest - simple_interest).round(2)
	end
end

# Get and validate p, t input from user
puts "Enter Principal amount"
p = Float(gets) rescue false 	
puts "Enter Time period"
t = Float(gets) rescue false


if p && t 
	#Initialise class with a block
	interest = Interest.new.tap do |i|
	  i.p = p.to_f
	  i.t = t.to_f
	  i.r = 10
	end	
	puts "Difference is : #{interest.interest_diff}"
else
	puts "Enter valid input"
end
