#!/usr/bin/env ruby

# Use string methods to reverse the words arrangement in a sentence.
# Eg: "An apple a day keeps the doctor away" ­> "away doctor the keeps day a apple An”
class String
	def reverse_words
		split(' ').reverse! * ' '
	end
end		

