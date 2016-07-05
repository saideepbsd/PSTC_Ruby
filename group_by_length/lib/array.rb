#!/usr/bin/env ruby

# Create a method for Array that can create a hash having 'key' as length of the element 
#   and value as an array of all the elements of that length.
# Make use of for­in loop for the purpose.
# Eg: ['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ'] should give result as
#   {3=>["abc", "def", 234], 4=>[1234, "abcd", "mnop", "zZzZ"], 1=>["x", 5]}
class Array

	def group_by_length

		hash = Hash.new

		for element in self

			len = element.to_s.length  

			# If key does not exist in the hash create an empty list 
			hash[len] = [] unless hash.has_key?(len)

			hash[len].push(element)	  

		end

		hash
		
	end

end	

