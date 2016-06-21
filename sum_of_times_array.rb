#!/usr/bin/env ruby

# Modify the sum of times method for any number of time values passed to this method.
# Eg: ("11:23:07","22:53:45","0:23:23","23:45:56") ­> "2 day & 10:26:11"
#   ("11:23:07") ­> "11:23:07"
require "time"

def sum_of_times(*time_array)

	sum_secs = 0

	regex = /^(([01]?[0-9])|(2[0-3]))([:]([0-5]?[0-9])){2}$/ # H:M:S format

	time_array.each do |t|
		if regex.match(t)
			t = Time.parse(t)
			sum_secs += t.hour*3600 + t.min*60 + t.sec
		else
			puts "Discarding #{t} as it is not a valid time value"
		end			 	
	end

    days = (sum_secs / 86400).to_i

	sum_time = ""

    sum_time += "#{days} day & " if days > 0
    
    sum_time += Time.at(sum_secs).utc.strftime("%H:%M:%S")

    sum_time

end

puts sum_of_times("11:23:07","22:53:45","0:23:23","23:45:56") # => 2 day & 10:26:11
