#!/usr/bin/env ruby

# Counts the occurrences of various letters of the alphabet in an input string 
#   and stores it in hash.
def alphabet_count(mystring)
	
	# Remove non alphabet from the string and convert to lowercase
	mystring = mystring.gsub(/[^a-z]/i,"").downcase

	d = Hash.new(0) 

	# Scan through each character & store the count in hash
	mystring.each_char { |c| d[c] = mystring.count(c) } 

	d.each { |key, value| puts "#{key} : #{value}" }
	

end

# Prompt for user input
puts "Enter a string"
 
mystring = gets.chomp 

alphabet_count(mystring)
