#!/usr/bin/env ruby
require 'csv'
require_relative '../lib/employee.rb'

employees_list = []	# Initialize array to store employee info

csv_contents = CSV.parse(File.read('list.csv'))
csv_contents.slice!(0) # Ignore header line

csv_contents.each() do |row|
	employee = Employee.new(row[0], row[1], row[2])
	employees_list.push(employee)
end	

# Listing in ascending order of Designation.
employees_list.sort_by! { |employee| employee.designation }
hash = employees_list.group_by{ |employee| employee.designation} 

# Sort employees within a designation by their ID
hash.each do |key, value| # key => designation, value => list of employees 
	value.sort_by!{ |employee| employee.id }
end

# Write output to file
File.open("out.txt","w") do |file|
	hash.each do |key, value|
		file.puts value.length > 1 ? "#{key}s" : "#{key}" # Designation is plural if it has more than one Employee
		value.each { |employee| file.puts employee.display }
	end
end

