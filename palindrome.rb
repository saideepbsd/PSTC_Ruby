#!/usr/bin/env ruby

#Checks whether the input string is a palindrome
def is_palindrome?(mystring)
  mystring = mystring.downcase 	
  mystring == mystring.reverse 
end

puts "Please enter a word to check if its a palindrome or not. Press q to exit"

while user_input = gets.chomp # Loop while getting user input
  case user_input
  when "q" || "Q"
    break                     # Quit program when user enters 'q/Q'
  else
    puts is_palindrome?(user_input) ?  "It is a palindrome" : "It is not a palindrome"
    
    # Print the prompt, so the user knows to re-enter input 
    puts "Please enter another word or q to quit the program"   
  end
end