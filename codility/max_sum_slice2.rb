def solution(a)
    max_ending = max_slice = -1000000
    for i in a
        max_ending = [i, max_ending + i].max
        max_slice = [max_slice, max_ending].max
    end
    return max_slice
end

A=Array.new
A[0] = 3  
A[1] = 2
A[2] = -6
A[3] = 4
A[4] = 0

p solution([-10])