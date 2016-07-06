#!/usr/bin/env ruby

# Modify the sum of times method for any number of time values passed to this method.
# Eg: ("11:23:07","22:53:45","0:23:23","23:45:56") ­> "2 day & 10:26:11"
#   ("11:23:07") ­> "11:23:07"
require 'time'

class Time
	
	def sum_of_times(*time_array)

		total_seconds = 0

		regex = /^(([01]?[0-9])|(2[0-3]))([:]([0-5]?[0-9])){2}$/ # H:M:S format

		time_array.each do |time|
			if regex.match(time)
				time = Time.parse(time)
				total_seconds += time.hour * 3600 + time.min * 60 + time.sec 
			else
				puts "Discarding #{time} as it is not a valid time value"
			end			 	
		end

		days = (total_seconds / 86400).to_i
		  
    sum = ''
		sum += "#{days} day & " if days > 0		  
		sum += Time.at(total_seconds).utc.strftime("%H:%M:%S")
		sum

	end
	
end

