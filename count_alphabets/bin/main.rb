#!/usr/bin/env ruby
require_relative '../lib/string.rb'

puts "Enter a string" # Prompt for user input
mystring = gets.chomp

hash = mystring.count_alphabets
hash.each { |key, value| puts "#{key} : #{value}" }
