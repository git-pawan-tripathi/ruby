puts /llo/ =~ "hello,welcome"
#return index
puts /llo/.match("hello,welcome")
#return string
puts /2\*2/.match("2*2^e")
#for special char use \ 
puts /j[ab]va/ =~ "my lamg is java"
puts /j[ab]va/.match("my lamg is java")

puts "sSssssjhh".match(/[[:lower:]]+[[:upper:]]+s{4}/)