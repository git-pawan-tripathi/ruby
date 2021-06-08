MYCONST=100

module Mymodule
	MYCONST=0
	::MYCONST=200
	MYCONST=100
end

puts MYCONST
puts Mymodule::MYCONST