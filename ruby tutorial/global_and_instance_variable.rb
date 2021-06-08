puts "global variable"

$global_valable=10

class Myclass
	def initialize(id,name)
		puts "local variable initialization"
		@id=id
		@name=name
	end

	def display
		puts "id is #@id and name is #@name"
		puts "global variable is #$global_valable"
	end
end

obj=Myclass.new(1,"pawan")
obj.display