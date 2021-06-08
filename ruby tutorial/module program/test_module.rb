module Mymod
	def mystr(val)
		puts "my value is #{val}"
	end
end

class Mycls
	include Mymod
end

obj=Mycls.new
obj.mystr("hello")
