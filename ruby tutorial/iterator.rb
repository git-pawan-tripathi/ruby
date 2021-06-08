a=[1,2,3,4,5]
p a
#use of collect method
b=a.collect{|i| i*=10}

p b

c=a.collect

p c
p c.class

c.each do |i|
	puts i
end