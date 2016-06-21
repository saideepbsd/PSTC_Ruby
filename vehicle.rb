#!/usr/bin/env ruby

# Define a class named 'Vehicle' consisting of 'name','price' and methods for initialising and showing contents.
# The 'price' of Vehicle may change over time. Now create a subclass 'Bike' having 'dealer' and method to show its content.
# Initialise a Bike class object with certain values and then change its price.
class Vehicle

	def initialize(name, price)
		@name  = name
		@price = price
	end
	
	def change_price(newprice)
		@price = newprice
	end
	
	def show_contents
		puts "Name : #{@name} \t Price : #{@price}"
	end
	
end

# extend superclass
class Bike < Vehicle

	def initialize(name, price, dealer)
		super(name,price)
		@dealer = dealer
	end

	def show_contents
		super
		puts "Dealer : #{@dealer}"
	end	

end


Shine = Bike.new("Shine", 7_0000, "Thug")  # Initialize
Shine.show_contents	
Shine.change_price(71_000)                 # Change price
Shine.show_contents 
