#!/usr/bin/env ruby

# Fibonacci series upto 1000 using 'yield'.
class Fibonacci
	 
  def fibonacci_series(max) 

    a, b = 1, 1 

    while a <= max 
      yield a
      a, b = b, a + b
    end

  end

end

