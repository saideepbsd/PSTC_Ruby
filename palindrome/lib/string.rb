#!/usr/bin/env ruby

# Checks whether the input string is a palindrome
class String

  def is_palindrome?
    temp = downcase.gsub(/[^a-z]/,'')
    temp == temp.reverse
  end
  
end

