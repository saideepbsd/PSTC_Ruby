#!/usr/bin/env ruby

# Write a method that returns the no of various lowercase, uppercase, digits and special characters used in the string.
# Make use of Ranges.

class String

	def character_count

		lowercase = Range.new('a','z')
		uppercase = Range.new('A','Z')
		digit = Range.new('0','9')

		# Hash to store count of each type
		hash = Hash.new(0)	

		self.each_char do |c|
			case c
			when lowercase then hash[:lowercase] += 1
			when uppercase then hash[:uppercase] += 1
			when digit then hash[:digits] += 1
			else hash[:special_characters] += 1
			end
		end
		
		hash
		
	end
		
end	

