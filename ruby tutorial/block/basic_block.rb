def test
   yield 11,12
end
test{ puts "Hello world"}

#with paramater
test{ |i,j|  puts "Hello #{i} world #{j}"}