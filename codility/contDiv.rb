#50%

# def solution(a, b, k)
#   count=0
#   (a..b).each do |i|
#     if i%k==0
#       count+=1
#     end
#   end
#   return count
# end

def solution(a,b,k)
	return b / k - a / k + (a % k == 0 ? 1 : 0)
end

p solution(6,11,2)