a=Array.new(20)
puts a.size
puts a.length

b=Array.new(4,"mac")
puts "#{b}"


c = Array.new(10) { |i| i*=2 }
puts c.inspect

d=Array.[](1,2,3,4,5,6)
puts d.inspect

e=Array[1,2,3,4,5]
puts e.inspect

f=Array(1..10)
puts "#{f}"