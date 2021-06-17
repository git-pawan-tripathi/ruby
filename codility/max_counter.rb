#66% in result

def solution(n, a)
  counter=Array.new(n,0)
  a.each do |i|
    if i>n
      maximum=counter.max
      counter=Array.new(n,maximum)
    elsif i<=n
      counter[i-1]+=1
    else
      next
    end
  end
  return counter
end


p solution(5,[3,4,4,6,1,4,4])