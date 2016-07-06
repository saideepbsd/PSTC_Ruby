#!/usr/bin/env ruby

require_relative '../lib/string.rb'

puts 'Please enter some text'
input = gets.chomp
input.search_special_chars

