def myfun(&block)
	block.call
end

myfun { puts "Hello World!"}