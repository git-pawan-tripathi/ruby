#create a new file,mode is compulsory for creating a file

# file=File.new("myfile.txt","r")

# file.close

# #open a file
# File.open('myfile.txt',"a+") do |f|
# 	f.write("hello")
# end


#file manupulation using sys
#read
file=File.new("myfile.txt","r")
if file
	puts file.sysread(20)
else
	puts("file not exist")
end
file.close
#write
file=File.new("myfile.txt","w")
if file
	file.syswrite("pawan")
else
	puts("file not exist")
end
file.close