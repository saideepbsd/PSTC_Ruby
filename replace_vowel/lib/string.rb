#!/usr/bin/env ruby

# Replaces vowels in a string with a '*'
class String
	def replace_vowel
		gsub(/[aeiou]/i, '*')
	end
end
