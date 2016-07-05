#!/usr/bin/env ruby

require_relative '../lib/customer.rb'
 
sai = Customer.new("Sai Deep")
sai.deposit(500) 
sai.withdraw(500)
puts sai

