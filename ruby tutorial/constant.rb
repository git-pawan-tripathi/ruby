#Constants begin with an uppercase letter

class Myclass
	MYVAR=100

	def mymethod
		puts "constant value is #{MYVAR}"
	end
end

obj=Myclass.new
obj.mymethod