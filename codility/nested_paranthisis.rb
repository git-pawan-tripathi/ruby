def solution(s)

    matches = {"("=>")"}
    stack = []

    s.each_char do |i|
        if matches[stack[-1]] == i
        	stack.pop
            p "if ka "
            p stack
        else
            stack.push(i)
            p "else ka stack"
            p stack
        end
    end
    if stack.empty?
    	return 1
   	else
   		return 0
   	end
end

p solution("(()(())())")