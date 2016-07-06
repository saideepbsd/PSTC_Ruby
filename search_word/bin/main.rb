#!/usr/bin/env ruby

require_relative '../lib/string.rb'

puts 'Enter a string' 
input = gets.chomp
puts 'Enter a keyword you want to search'
keyword = gets.chomp
input.search_and_highlight(keyword)

