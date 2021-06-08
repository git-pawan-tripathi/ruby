class Myclass
	attr_reader :w
	attr_reader :h
	attr_writer :w
	attr_writer :h
	def initialize(w,h)
		@w=w
		@h=h
	end
	
	#instance method
	def getArea
      @w * @h
   	end
end

obj=Myclass.new(12,13)
obj=Myclass.new(12,13)
puts obj.w
puts obj.h
obj.w=20
obj.h=30
puts obj.w
puts obj.h
puts obj.getArea
puts "obj1"
obj1=Myclass.new(12,13)
puts obj1.w
puts obj1.h
obj1.w=20
obj1.h=30
puts obj1.w
puts obj1.h
puts obj1.getArea