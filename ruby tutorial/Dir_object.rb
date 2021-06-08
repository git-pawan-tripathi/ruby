puts Dir.pwd
Dir.chdir("/home/cis/cv tutorial")
puts Dir.pwd

#listing files directory
puts Dir.entries("/home/cis/ruby tutorial").join(" ")

puts ""
#another way
puts Dir["/home/cis/*"]