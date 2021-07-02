
# (A[P] + A[P + 1] + ... + A[Q]) / (Q − P + 1).


def solution(a)
  if(a.length < 2)
     return 0
  end
  minavg=Float(a[0]+a[1])/Float(2)
  index=0

  for nn in (1..a.length-2)
    p nn
    avg=Float(a[nn]+a[nn+1])/Float(2)
    p avg
    if(avg<minavg)
      minavg=avg
      index=nn
    end
    p "#{index} index is"
  end

  for nn in (0..a.length-3)
    avg=Float(a[nn]+a[nn+1]+a[nn+2])/Float(3)
    if(avg<minavg)
         minavg=avg
         index=nn
    end
  end                   
  return index
end

p solution([4,2,2,5,1,5,8])