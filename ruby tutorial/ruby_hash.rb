a=Hash.new("value")
puts "#{a[0]}"
puts "#{a[29]}"#return default value

b=Hash["a"=> 100,"b"=>200,"c"=>300]
puts b['b']
puts "#{b['a']}"

# d=Hash[1,"jan"] => "January"
# puts d