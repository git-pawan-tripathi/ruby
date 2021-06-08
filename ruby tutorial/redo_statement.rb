i=0

while i<10
	print i
	i+=1
end

puts ""
i=0

while i<10
	print i
	i+=1
	redo if i==10
end