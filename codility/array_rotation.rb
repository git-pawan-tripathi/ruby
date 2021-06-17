
def solution(a, k)
  if a.length>0
    k.times do |i|
      a.unshift(a[-1])
      a.pop
    end
    return a
  else
    return []
  end
end

p solution([],0)

0.times do |i|
  p i
end