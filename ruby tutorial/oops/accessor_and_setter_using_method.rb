class Myclass
	def initialize(w,h)
		@w=w
		@h=h
	end
	#accessor methods
	def w
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
puts obj.w
obj.setWidth=20
obj.setHeight=30
puts obj.printHigth
puts obj.w
puts obj.getArea