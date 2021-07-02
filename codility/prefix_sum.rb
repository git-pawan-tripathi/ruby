 a=[10, 20, 10, 5, 15]

def solution(a)
    b=[]
    b[0]=a[0]
    #(1..(a.length-1)).each { |i| b[i]=a[0..i].sum }
    (1..(a.length-1)).each { |i| b[i]=b[i-1]+a[i] }
    return b
end

p solution(a)


def prefix_sums(a)
    n = a.length
    pe = [0] * n
    pe[0]=a[0]
    for k in (1..(n-1))
        pe[k] = pe[k - 1] + a[k]
    end
    return pe
end

p prefix_sums(a)