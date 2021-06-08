class Customer
	@@no_of_customer=0

	def initialize(id,name,age)
		@id=id
		@name=name
		@age=age
	end

	def display
		puts @id,@name,@age
	end
end

cust1=Customer.new(1,"pawan",25)
puts cust1.display