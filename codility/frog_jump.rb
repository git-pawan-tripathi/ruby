

def solution(x,y,d)
  y-=x
  if y%d==0
    return y/d
  else
    return (y/d)+1
  end
end

p solution(3, 999111321, 7)
# p solution(10,85,30)