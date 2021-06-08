for i in (1..5)
	puts i
end

puts("for loop with break and next")

for i in (1..5)
	if i>3
		break
	end
	if i==2
		next
	end
	puts i
end


puts("for loop with redo")

for i in (1..10)
	puts i
	if i>2 then
		redo
	end
	
end