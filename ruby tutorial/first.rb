#!/usr/bin/ruby -w

puts "Hello, Ruby!";

puts("Ternary operator")   
puts(2<5 ? 5:2)   
puts(5<2 ? 5:2)   

puts("Equality operators : == and != ")
puts(1 == 1.0)
puts(1 .eql? 1.0)
puts(1 .equal? 1)
puts(1 .equal? 1.0) #strictest form of equality

