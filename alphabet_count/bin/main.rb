#!/usr/bin/env ruby
require_relative '../lib/alphabet_count.rb'

puts "Enter a string" # Prompt for user input
mystring = gets.chomp 

hash = mystring.alphabet_count
hash.each { |key, value| puts "#{key} : #{value}" }
