def solution(a)
  a.sort!
  a.length.times do |i|
    if a[i]+a[i+1]>a[i+2]
      return 1
    end
  end
  return 0
end


p solution([10,2,5,8,1,20])