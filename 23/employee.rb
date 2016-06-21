#!/usr/bin/env ruby

# Reading a CSV file 	
require 'csv'

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

employees_list = []	# Initialize array to store employee info

csv_contents = CSV.parse(File.read("list.csv"))
csv_contents.slice!(0) # Ignore header line

csv_contents.each() do |row|
	e = Employee.new(row[0], row[1], row[2])
	employees_list.push(e)
end	

# Listing in ascending order of Designation.
employees_list.sort_by! { |e| e.designation }
hash = employees_list.group_by{ |e| e.designation} 

# Sort employees within a designation by their ID
hash.each do |key, value| # key => designation, value => list of employees 
	value.sort_by!{ |e| e.id }
end

# Write output to file
File.open("out.txt","w") do |file|
	hash.each do |key, value|
		file.puts (value.length > 1) ? "#{key}s" : "#{key}" # Designation is plural if it has more than one Employee
		value.each { |e| file.puts e.display }
	end
end
