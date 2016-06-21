#!/usr/bin/env ruby

# Write a search method that searches for a letter or word in a user input string and highlights the searched element.
# Also it should display the total no of searches found.
# Eg: If user enters string to be searched as "Can you can a can as a canner can can a can?" 
#   and word to be searched is 'can' then output should be:
# (Can) you (can) a (can) as a (can)ner (can) (can) a (can)?
# Total Occurrences found: 7
class String

	def search_n_highlight(word)

		count = 0  			        # Initialize occurence count

		gsub!(/#{word}/i) do |match|
		    count += 1
		    "(#{match})"  			# Highlight the occurence
		end	
			

		if count == 0
			puts "Cannot find '#{word}' in the text" 
		else
			puts "Search result : #{self}"
			puts "Total Occurrences found : #{count}"					
		end
	
	end	


end

puts "Enter a string" 

input = gets.chomp

puts "Enter a keyword you want to search"

keyword = gets.chomp

input.search_n_highlight(keyword)
