 begin
	file = open("unexistant_file")
	if file
		puts "File opened successfully"
   	end
rescue Exception => e
	puts e.message  
   	puts e.backtrace.inspect  
	
end

puts
puts("with ensure it is finally of others")
begin
   raise 'A test exception.'
rescue Exception => e
   puts e.message
   puts e.backtrace.inspect
ensure
   puts "Ensuring execution"
end

puts
puts("with else")
begin
   puts 'A test exception.'
rescue Exception => e
   puts e.message
   puts e.backtrace.inspect
else
	puts "no exception occure"
ensure
   puts "Ensuring execution"
end