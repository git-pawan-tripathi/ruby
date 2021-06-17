def solution(a)
  if a.length>1
    #for ruby 2.2
    #return (1..(a.length+1)).inject(0){|sum,x| sum + x } - a.inject(0){|sum,x| sum + x } 
    return (1..(a.length+1)).sum-a.sum
  elsif a[0]==1
    return 2
  else
    return 1
  end
end


p solution([1])