#!/usr/bin/env ruby

require_relative '../lib/time.rb'

time = Time.new
puts time.sum_of_times('11:23:07', '22:53:45', '0:23:23', '23:45:56') # => 2 day & 10:26:11

