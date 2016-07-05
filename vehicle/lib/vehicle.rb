#!/usr/bin/env ruby

# Define a class named 'Vehicle' consisting of 'name','price' and methods for initialising and showing contents.
# The 'price' of Vehicle may change over time. Now create a subclass 'Bike' having 'dealer' and method to show its content.
# Initialise a Bike class object with certain values and then change its price.
class Vehicle

	def initialize(name, price)
		@name  = name
		@price = price
	end
	
	def change_price(new_price)
		@price = new_price
	end
	
	def show_contents
		puts "Name : #{@name}\tPrice : #{@price}"
	end
	
end

