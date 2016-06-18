#!/usr/bin/env ruby

class String
	# Overwrites the default 'to_s' method such that it inverses the case of each letter.
	def to_s
		swapcase
	end

end		

puts "Enter any string"

input_string = gets.chomp

puts input_string.to_s