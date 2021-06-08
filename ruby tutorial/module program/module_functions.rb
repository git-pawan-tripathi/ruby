module Mymodule
	#1 st way
	def Mymodule.mymethod(x)#or self.mymethod(x)
		return x
	end
	#2nd way
	def calculate(amount)
		return amount*3
	end
	module_function :calculate

	#thirsd way
	def meth
		return "method"
	end

end

puts Mymodule.mymethod(3)
puts Mymodule.calculate(100)

class Myclass
	include Mymodule
	def cls_method
		meth
	end
end

obj=Myclass.new
puts obj.cls_method
#puts obj.calculate		private method `calculate' called for #<Myclass:0x0000555e93ce4b08> (NoMethodError)