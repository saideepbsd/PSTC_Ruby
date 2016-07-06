#!/usr/bin/env ruby

require_relative '../lib/name.rb'

puts 'Enter firstname'
firstname = gets.chomp
puts 'Enter lastname'
lastname = gets.chomp

dude = Name.new(firstname, lastname)
dude.hello

