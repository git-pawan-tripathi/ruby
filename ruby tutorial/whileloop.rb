$i=0
$num=10

while $i<$num do
	puts("no. is #$i")
	$i+=1
end


puts("while with begin")
$i=0
$num=10

begin
	puts("no. is #$i")
	$i+=1

end while $i<$num

puts("while with until")
$i=0
$num=5

until $i > $num do			#run whenever false
	puts("no. is #$i")
	$i+=1
end