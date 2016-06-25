#!/usr/bin/env ruby

# Counts the occurrences of various letters of the alphabet in an input string 
#  and stores it in hash.
class String

	def count_alphabets

		temp = downcase.gsub(/[^a-z]/,"") # Convert to lowercase and remove non alphabet from the string 

		hash = Hash.new(0)

		temp.each_char { |c| hash[c] += 1 }

		hash

	end

end
