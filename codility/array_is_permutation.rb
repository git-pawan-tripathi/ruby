def solution(a)
	a=a.sort
	if not ((1..a.length).to_a-a).empty?
		return 0
	else
		return 1
	end
end

p solution([2])