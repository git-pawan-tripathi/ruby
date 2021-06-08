
class Myclass
	def initialize(w,h)
		@w=w
		@h=h
	end

	def to_s
		"(width:#@w,height:#@h)"  # string formatting of the object.
	end
end

obj=Myclass.new(12,13)
puts "object string representation is #{obj}"