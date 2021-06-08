a=[1,2,3,4,5]

a.each do |i|
	puts i
end

#approach to pass array in multi parameter function
def myfun(a,b,c,d,e)
	print a,b,c,d,e
end

myfun(*a)

