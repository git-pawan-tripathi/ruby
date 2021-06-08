class Myclass
	@@count=0
	def initialize
		@@count+=1
		puts "initialize"
	end

	def Myclass.printCount
		@@count
	end
	
end

obj=Myclass.new
puts Myclass.printCount
