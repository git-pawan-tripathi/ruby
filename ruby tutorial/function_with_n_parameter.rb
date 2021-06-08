def myfun(*a)
	print("length of parameter a is #{a.length}\n")
	for i in (0..a.length)
		puts ("i is #{i}")
		puts ("a at i th position #{a[i]}")
	end
end

myfun "pawan",1,1.9,[1,23,2,3,3]