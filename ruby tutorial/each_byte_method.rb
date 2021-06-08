aFile = File.new("myfile.txt", "r+")
if aFile
   #aFile.syswrite("ABCDEF")
   aFile.each_byte{|ch| putc ch; putc ?_ }
else
   puts "Unable to open file!"
end