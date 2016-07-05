#!/usr/bin/env ruby
require_relative '../lib/string.rb'

puts 'Please enter a word to check if its a palindrome or not. Press q to exit'

while input = gets.chomp 			# Loop while getting user input
  case input
  when 'q' || 'Q'							# Quit program when user enters 'q/Q'
    break                     
  else
    puts input.is_palindrome? ? 'It is a palindrome' : 'It is not a palindrome'
    
    # Print the prompt, so the user knows to re-enter input 
    puts 'Please enter another word or q to quit the program'   
  end
end

