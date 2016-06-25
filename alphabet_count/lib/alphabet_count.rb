#!/usr/bin/env ruby

#Counts the occurrences of various letters of the alphabet in an input string 
#  and stores it in hash.
class String

	def alphabet_count
		
		self.gsub!(/[^a-z]/i,"").downcase! # Remove non alphabet from the string and convert to lowercase

		hash = Hash.new(0) 

		self.each_char { |c| hash[c] += 1 }

		hash 

	end

end





		