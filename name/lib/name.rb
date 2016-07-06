#!/usr/bin/env ruby

# Create a class 'Name' with two attributes firstname and lastname. 
# Neither of them can be blank and the first letter of firstname must be capital. 
# Implement using 'raise'. Try using custom Exceptions.
require_relative 'name_error'

class Name
	
	attr_accessor :firstname , :lastname
	
	def initialize(firstname, lastname)
		raise NameError, "firstname or lastname can't be blank" if firstname.empty? || lastname.empty?
		raise NameError, 'The first letter of firstname must be capital' if firstname != firstname.capitalize
		@firstname = firstname
		@lastname = lastname
	end

	def hello
		puts "Hello #{@firstname} #{lastname}!!"
	end
		
end

