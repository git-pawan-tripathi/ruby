def solution(a)      
    #s = a.inject(0){|sum,x| sum+x }
    s=a.sum
    m = Float::INFINITY
    left_sum = 0
    for i in a[0,a.length-1]
        left_sum += i
        m = [(s - 2*left_sum).abs, m].min
    end
    return m
end
p solution([-1000,1000])
p solution([3,1,2,4,3])
