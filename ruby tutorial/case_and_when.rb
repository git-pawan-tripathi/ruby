_age =  5
case _age
when 0 .. 2
   puts "baby"
when 3 .. 6
   puts "little child"
when 7 .. 12
   puts "child"
when 13 .. 18
   puts "youth"
else
   puts "adult"
end

_age =  5
result=case _age
when 0 .. 2 then "baby"
when 3 .. 6 then "little child"
when 7 .. 12 then "child"
when 13 .. 18 then "youth"
else "adult"
end

puts result