#!/usr/bin/env ruby
require_relative '../lib/string.rb'

puts "Enter text"
mystring = gets.chomp
puts mystring.replace_vowel
