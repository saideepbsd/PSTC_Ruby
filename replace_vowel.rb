#!/usr/bin/env ruby

# Replaces vowels in a string with a '*'
def replace_vowel(mystring)
	return mystring.gsub(/[aeiou]/i, '*')
end

puts "Enter text"
mystring = gets.chomp
puts replace_vowel(mystring)

