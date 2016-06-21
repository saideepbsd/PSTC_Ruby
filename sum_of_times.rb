#!/usr/bin/env ruby

# Write a method that sums up to 24­ hour time values(h:m:s). Validate the time using regular expressions.
# Eg: ("0:45:34","0:15:58") ­> 01:01:32 ; ("11:23:07","22:53:45") ­> 1 day & 10:16:52
require "time"

def sum_of_times(t1, t2)

	t1 = Time.parse(t1)
	t2 = Time.parse(t2)

	# Convert both time values to seconds & add them
	t1_secs = t1.hour*3600 + t1.min*60 + t1.sec
	t2_secs = t2.hour*3600 + t2.min*60 + t2.sec
	sum_secs = t1_secs + t2_secs

	formatted_sum = Time.at(sum_secs).utc.strftime("%H:%M:%S")

	sum_secs > 24*3600 ? "1 day & " + formatted_sum : formatted_sum

end


puts "Enter first time value"
t1 = gets.chomp
puts "Enter second time value"
t2 = gets.chomp

regex = /^(([01]?[0-9])|(2[0-3]))([:]([0-5]?[0-9])){2}$/ # H:M:S format

puts regex.match(t1) && regex.match(t2) ? sum_of_times(t1, t2) : "Either one or both times are invalid"

