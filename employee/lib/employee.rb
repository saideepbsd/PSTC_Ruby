#!/usr/bin/env ruby

# Reading a CSV file 	

class Employee
	
	attr_accessor :name, :id, :designation

	def initialize(name, id, designation)
		@name = name
		@id = id
		@designation = designation
	end

	def display
		"#{@name} (EmpId: #{@id})"
	end
		
end

