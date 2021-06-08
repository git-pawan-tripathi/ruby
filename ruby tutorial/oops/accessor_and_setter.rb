class Myclass
	def initialize(w,h)
		@w=w
		@h=h
	end
	#accessor methods
	def printWidth
		@w
	end

	def printHigth
		@h
	end

	#setter methods
	def setHeight=(value)
		@h=value
	end

	def setWidth=(value)
		@w=value
	end

	#instance method
	def getArea
      @w * @h
   	end
end

obj=Myclass.new(12,13)
puts obj.printHigth
puts obj.printWidth
obj.setWidth=20
obj.setHeight=30
puts obj.printHigth
puts obj.printWidth
puts obj.getArea