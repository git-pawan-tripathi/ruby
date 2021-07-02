def solution(n)
    if n>0
        b = 1
        a=n/b
        result=2*(a+b)
        while(b*b<n)
            a = 0
            if(n%b==0)
                a=n/b
                temp=2*(a+b)
                if temp<=result
                    result=temp
                end
            end
            b+=1
        end
        if(b*b==n)
            result=2*(b+b) 
        end
        return result
    else
      return 0
    end
  end

p solution(36)