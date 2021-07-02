def solution(a)
  a=a.sort
  if a.length>=3
    return [a[-3,3].inject(:*),(a[0]*a[1]*a[-1])].max
  end
end

p solution([-3,1,2,-2,5,6])