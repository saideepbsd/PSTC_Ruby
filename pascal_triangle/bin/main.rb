#!/usr/bin/env ruby

require_relative '../lib/pascal.rb'

n = 10
pascal = Pascal.new

# print nCk
pascal.print_triangle(n) do |r, c|
printf("%d ", pascal.factorial(r) / (pascal.factorial(c) * pascal.factorial(r - c)))
end

