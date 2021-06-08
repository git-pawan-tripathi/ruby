#A block is always invoked from a function with the same name as that of the block.

def test
	puts("in the method")
	yield 9,10
	puts("again in the method")
	yield 11,12
end

test { |i,j| puts("in the block valie is #{i} and #{j}") }