class Myclass
	@@count=0
	def initialize(w,h)
		@w=w
		@h=h
		@@count+=1
	end
	#accessor methods
	def printWidth
		@w
	end

	def printHigth
		@h
	end

	def self.printCount
		@@count
	end
	
end

obj=Myclass.new(12,13)
puts obj.printHigth
puts obj.printWidth
obj=Myclass.new(32,33)
puts Myclass.printCount
