def solution(s)

    matches = {"("=>")", "["=>"]", "{"=>"}"}
    stack = []

    s.each_char do |i|
        if matches[stack[-1]] == i
        	stack.pop
        else
            stack.push(i)
        end
    end
    if stack.empty?
    	return 1
   	else
   		return 0
   	end
end

p solution("{[()()]}")