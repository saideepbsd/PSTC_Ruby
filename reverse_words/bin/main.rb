#!/usr/bin/env ruby

require_relative '../lib/string.rb'

puts 'Enter any sentence'
input = gets.chomp
puts input.reverse_words

