#!/usr/bin/env ruby

# Define a Customer having three variables "name","account_no" & "balance". 
# It must initialise the class object with the name of the customer, auto­increment the account no and set balance to 1000. 
# Define methods deposit() and withdraw() for this class.
class Customer

	@@account_no = 0

	def initialize(name)
		@@account_no += 1          
		@account_no = @@account_no
		@name = name
		@balance = 1000
	end
	
	def deposit(amount)
		if amount > 0
	    @balance += amount
			puts 'Balance updated'
			@balance
		else
			puts 'Enter valid amount'	
		end	
	end

	def withdraw(amount)
		if amount <= 0
      puts 'Enter valid amount'
		elsif amount <= @balance
	    @balance -= amount
			puts 'Balance updated'
			@balance
		else
			puts 'You have insufficient balance'
		end			
	end
	
	def to_s
	  puts "Name : #{@name}\tAccount no : #{@account_no}\tBalance : #{@balance}"
	end

end
