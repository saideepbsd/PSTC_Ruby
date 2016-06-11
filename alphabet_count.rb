#!/usr/bin/env ruby

#Counts the occurrences of various letters of the alphabet in an input string 
#and stores it in hash.
def alphabet_count(mystring)
	
	mystring = mystring.gsub(/[^a-z]/i,"").downcase # Remove non alphabet from the string and convert to lowercase

	d = Hash.new(0) 

	mystring.each_char { |c| d[c] = mystring.count(c) } # Store the count in hash

	d.each do |key, value|
  		puts "#{key} : #{value}"
	end

end

puts "Enter a string" # Prompt for user input
mystring = gets.chomp 

alphabet_count(mystring)
		