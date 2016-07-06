#!/usr/bin/env ruby

# Create a class Interest that gives the user the difference in amount calculated simply and compound.
# Initialise class with a block. 'p' and 't' are entered by user. Take 'r' = 10% pa.
class Interest
	
	attr_accessor :p, :t, :r

	def difference
		
		simple_interest = (p * t * r) / 100  
		
		compound_interest = (p * (1 + r / 100)**t) - p
		
		(compound_interest - simple_interest).round(2)
	
	end
	
end

