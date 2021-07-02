#[3,2,6,-1,4,5,-1,2]

def solution(a)
    ending_here = [0] * a.length
    starting_here = [0] * a.length
     
    for idx in (1..a.length-1)
        ending_here[idx] = [0, (ending_here[idx-1] + a[idx])].max
    end

    for idx in (0..a.length-2).to_a.reverse
        starting_here[idx] = [0, (starting_here[idx+1] + a[idx])].max
    end

    p starting_here

    max_double_slice = 0
     
    for idx in (1..a.length-2)
        max_double_slice = [max_double_slice, (starting_here[idx+1] + ending_here[idx-1])].max
    end 
         
    return max_double_slice
end

p solution([3,2,6,-1,4,5,-1,2])

