def solution(a)
    size=0
    n=a.length
    if n==0
        return 0
    else
        for i in a.length.times
            if size==0
                size+=1
                value=a[i]
            else
                if a[i]!=value
                    size-=1
                else
                    size+=1
                end
            end
        end
        candidate=-1
        if size>0
            candidate=value
        end
        leader=-1
        count=0
        for i in a
            if i==candidate
                count+=1
            end
        end
        if(count>n/2)
            leader=candidate
        else
            return 0
        end
        equi_leaders = 0
        leader_count_so_far = 0
        for i in a.length.times
            p "i is #{i}"
            if a[i] == leader
                p "a[i] is #{a[i]}"
                leader_count_so_far += 1
                p "leader_count_so_far is #{leader_count_so_far}"
            end
            if leader_count_so_far > (i+1)/2 and count-leader_count_so_far > (n-i-1)/2
                equi_leaders += 1
                p "equi_leaders is #{equi_leaders}"
            end
        end
    return equi_leaders
    end
    
end

#p solution([1,2,3,4])
p solution([4,3,4,4,4,2])
#p solution([1,2])