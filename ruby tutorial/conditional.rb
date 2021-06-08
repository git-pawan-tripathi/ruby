x = 1 
unless x>=2					#execute if false
   puts "x is less than 2"
 else
   puts "x is greater than 2"
end

#same as
# x = 1 
# if not x>=2
#    puts "x is less than 2"
#  else
#    puts "x is greater than 2"
# end


x = 1
if x > 2
   puts "x is greater than 2"
elsif x <= 2 and x!=0
   puts "x is 1"
else
   puts "I can't guess the number"
end

$var =  1
print "1 -- Value is set" if $var