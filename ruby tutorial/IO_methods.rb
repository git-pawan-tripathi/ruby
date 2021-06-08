arr=IO.readlines("myfile.txt")
puts arr[0]#print first line
puts arr[1]
puts arr[2]
puts arr[30]#print empty


IO.foreach("myfile.txt"){|block| puts block}

puts File.file?( "text.txt" ) 

#check before open a file
File.open("file.rb") if File::exists?( "file.rb" )

#check given path is directory or not\
puts File.directory?('/home/cis/')

puts("check")
puts File.readable?( "myfile.txt" )   # => true
puts File.writable?( "myfile.txt" )   # => true
puts File.executable?( "myfile.txt" ) # => false

#size of file
puts File.size?( "myfile.txt" )  

#check changes in a file
puts File::ctime( "myfile.txt" ) # => Fri May 09 10:06:37 -0700 2008
puts File::mtime( "myfile.txt" ) # => Fri May 09 10:44:44 -0700 2008
puts File::atime( "myfile.txt" ) # => Fri May 09 10:45:01 -0700 2008