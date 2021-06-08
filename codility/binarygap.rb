def solution(n)
  n="%b" % n
  k=0
  p n
  n=n.scan(/(10{1,})+1/)
  p n
  n.each do |i|
    if k<i[0].length
      k=i[0].length
    end
  end
  return k==0 ? 0:k-2
end

p solution(328)