#!/usr/bin/env ruby

require_relative '../lib/array.rb'

array = ['abc', 'def', 1234, 234, 'abcd', 'x', 'mnop', 5, 'zZzZ']
puts array.group_by_odd_even # => {:odd=>[["abc", "def", 234], ["x", 5]], :even=>[[1234, "abcd", "mnop", "zZzZ"]]}

