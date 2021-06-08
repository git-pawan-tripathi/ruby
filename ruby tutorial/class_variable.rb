class Customer
	@@no_of_customer=10

	def display
		@@no_of_customer+=10
		puts "class variable value is #@@no_of_customer"
	end
end

cust1=Customer.new
puts cust1.display