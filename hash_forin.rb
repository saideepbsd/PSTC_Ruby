#!/usr/bin/env ruby

# Create a method for Array that can create a hash having 'key' as length of the element 
# and value as an array of all the elements of that length.
# Make use of for­in loop for the purpose.
# Eg: ['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ'] should give result as
# {3=>["abc", "def", 234], 4=>[1234, "abcd", "mnop", "zZzZ"], 1=>["x", 5]}



class Array

	def group_by_length

		d = Hash.new

		for element in self

			len = element.to_s.length  

			unless d.has_key?(len)    # If key does not exist in the hash
				d[len] = []           # Create an empty list
			end

			d[len].push(element)	  

		end

	return d
		
	end

end	


# Example
array = ['abc', 'def', 1234, 234, 'abcd', 'x', 'mnop', 5, 'zZzZ']

puts array.group_by_length
