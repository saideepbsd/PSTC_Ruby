#!/usr/bin/env ruby

# Write a method that sums up to 24­ hour time values(h:m:s). Validate the time using regular expressions.
# Eg: ("0:45:34","0:15:58") ­> 01:01:32 ; ("11:23:07","22:53:45") ­> 1 day & 10:16:52
require 'time'

class Time
	
	def sum_of_times(x, y)

		x = Time.parse(x)
		y = Time.parse(y)

		# Convert both time values to seconds & add them
		x_seconds = x.hour * 3600 + x.min * 60 + x.sec
		y_seconds = y.hour * 3600 + y.min * 60 + y.sec
		sum = x_seconds + y_seconds

		formatted_sum = Time.at(sum).utc.strftime("%H:%M:%S")

		sum > 24 * 3600 ? '1 day & ' + formatted_sum : formatted_sum

	end
	
end

