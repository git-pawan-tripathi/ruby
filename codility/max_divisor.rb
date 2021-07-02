def solution(n)
  
  if n>0
    i = 1
    count = 0
    while(i*i<n)
      if(n%i==0)
        count+=2
      end
      i+=1
    end
    if(i*i==n)
      count+=1
    end
    return count
  else
    return 0
  end
end

p solution(36)