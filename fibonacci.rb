#!/usr/bin/env ruby

# Fibonacci series upto 1000 using 'yield'.
def fibonacci(n)   
    
    a, b = 1, 1 # parallel assignment  
    
    while a <= n 
        yield a 
        a, b = b, a + b 
    end

end

# Print fibonacci series upto 1000.
fibonacci(1000) {|i| puts i}
