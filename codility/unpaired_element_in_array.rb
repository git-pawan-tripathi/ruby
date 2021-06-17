def solution(a)
  result = 0
  a.each do |i|
    result ^= i
  end
  return result
end

p solution([1,2,3,4,1,2,3])

