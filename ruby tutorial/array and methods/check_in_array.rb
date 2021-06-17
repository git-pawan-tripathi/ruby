a=[1,2,3,4,3,2,3]

p a.empty?

p a.include?(4)

p a.uniq

p a

#check first occurence
p a.detect{|i| i==3}

#check multiple occurence
p a.select{|i| i==3}
#########################################################################
a=[1,2,3]

b=a.cycle(2)

b.each do |i|
	p i
end
