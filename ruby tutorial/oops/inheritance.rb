class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end
   # instance method
   def getArea
      @width * @height
   end
end

class BigBox < Box
	
	def printArea
		@area=@width*@height
		puts "area of BigBox is #@area"
	end
end

obj=BigBox.new(12,13)
obj.printArea
