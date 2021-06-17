#50%

def solution(a, b, k)
  count=0
  (a..b).each do |i|
    if i%k==0
      count+=1
    end
  end
  return count
end

p solution(0, 2000000000, 1)