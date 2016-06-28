#!/usr/bin/env ruby
require_relative "../lib/fibonacci.rb"

f = Fibonacci.new
f.fibonacci_series(1000) { |i| puts i } # Print fibonacci series upto 1000.