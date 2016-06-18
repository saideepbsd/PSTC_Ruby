#!/usr/bin/env ruby

require_relative "hash_forin"

# Write a method that groups the above hash into 2 groups of 'even' and 'odd' length using 'inject'.
# Eg: ['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ'] ­> {odd: [["x", 5],
#   ["abc", "def", 234]], even: [[1234, "abcd", "mnop", "zZzZ"]]}

class Array

	def group_by_odd_even

		hash = group_by_length

		hash.inject({ :odd => [], :even => [] }) do | x, (key,val) |

			if key % 2 == 0
				x[:even].push(val)
			else
				x[:odd].push(val)
			end
			
			x
		end
		

	end

end	

# Example 
array = ['abc', 'def', 1234, 234, 'abcd', 'x', 'mnop', 5, 'zZzZ']

puts "Grouping into odd, even...."

puts array.group_by_odd_even