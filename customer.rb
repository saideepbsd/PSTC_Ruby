#!/usr/bin/env ruby

# Define a Customer having three variables "name","account_no" & "balance". 
# It must initialise the class object with the name of the customer, auto­increment the account no and set balance to 1000. 
# Define methods deposit() and withdraw() for this class.
class Customer
	@@account_no = 0

	def initialize(name)
		@@account_no += 1          # Auto­increment the account number.
		@account_no = @@account_no
		@name = name
		@balance = 1000
	end
	
	def deposit(amount)
		if amount > 0
	    	@balance += amount
			puts "Your updated balance : #{@balance}"
		else
			puts "Enter valid amount"	
		end	
	end

	def withdraw(amount)
		if amount <= 0
        	puts "Enter valid amount"
		elsif amount <= @balance
	    	@balance -= amount
			puts "Your updated balance : #{@balance}"
		else
			puts "You have insufficient balance"	
		end			
	end

end

# Example 
Sai = Customer.new("Sai Deep")
Sai.deposit(500)  # => Your new balance : 1500
Sai.withdraw(500) # => Your new balance : 1000
