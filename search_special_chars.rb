#!/usr/bin/env ruby

# Return the character and position of non alphabetic and non numeric characters in the given string. (Try to use Matchdata objects )
# STRING - 'wertysdfg.24sddkjfgjhs,/]sjhgsh'
# EXPECTED OUTPUT:
# Special character "." is at position 9
# Special character "," is at position 22
# Special character "/" is at position 23
# Special character "]" is at position 24

class String

	def search_special_chars

		index = 0
		regex = /[^0-9a-z]/i  # Non alphanumeric pattern
		self.each_char do |c| # Scan each character in the string 
			if regex.match(c) 
				puts "Special character \"#{c}\" is at position #{index}"
			end
			index +=1
		end	

	end
end

puts "Please enter some text"

input = gets.chomp

input.search_special_chars

