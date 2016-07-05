#!/usr/bin/env ruby
require_relative '../lib/array.rb'

array = ['abc', 'def', 1234, 234, 'abcd', 'x', 'mnop', 5, 'zZzZ'] 
puts array.group_by_length # => {3=>["abc", "def", 234], 4=>[1234, "abcd", "mnop", "zZzZ"], 1=>["x", 5]}

