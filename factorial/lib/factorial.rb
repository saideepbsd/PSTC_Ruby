#!/usr/bin/env ruby

# Calculate factorial of a number using ranges
class Factorial

  def factorial(n)
    (1..n).inject(1){ |product, i| product * i }
  end
  
end  

