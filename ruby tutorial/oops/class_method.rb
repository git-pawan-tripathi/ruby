class Myclass
	def initialize
		puts "initialize"
	end

	def Myclass.myclass_method
		return "class method without creating object #{Time.now}"
	end
end

puts Myclass.myclass_method
