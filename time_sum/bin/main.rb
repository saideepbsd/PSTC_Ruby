#!/usr/bin/env ruby

require_relative '../lib/time.rb'

puts 'Enter first time value'
first = gets.chomp
puts 'Enter second time value'
second = gets.chomp

regex = /^(([01]?[0-9])|(2[0-3]))([:]([0-5]?[0-9])){2}$/ # H:M:S format

time = Time.new 
puts regex.match(first) && regex.match(second) ? time.sum_of_times(first, second) : 'Either one or both times are invalid'

