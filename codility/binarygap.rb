def solution(n)
  n="%b" % n
  k=0
  n=n.scan(/1(0+)(?=1)/)
  n.each do |i|
    if k<i[0].length
      k=i[0].length
    end
  end
  return k
end

p solution(15)