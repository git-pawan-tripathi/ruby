#44%

def solution(a)
  a=a.uniq.sort
  if a[0]>0
    (1..a.length+1).each do |i|
      if not a.include?(i)
        return i
      else
        next
      end
    end
  elsif a[0]==0
    (0..a.length+1).each do |i|
      if not a.include?(i)
        return i
      else
        next
      end
    end
  else
    return 1
  end
end


p solution((0..100))