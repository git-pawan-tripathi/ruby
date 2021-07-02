def find_peaks(a)
    peaks = [false] * a.length
    result=[]
    (1..(a.length-2)).each do |i|
        if(a[i-1]<a[i] and a[i]>a[i+1])
            peaks[i]=true
        end
    end
    return peaks
end

def next_peak(a)
    n = a.length
    peaks = find_peaks(a)
    nextele = [0] * n
    nextele[n - 1] = -1
    (n-2).step(1, -1).each do |i|
        if peaks[i]
            nextele[i] = i
        else
            nextele[i] = nextele[i + 1]
        end
    end
    return nextele
end



def solution(a)
    n = a.length
    nextele = next_peak(a)
    i = 1
    result = 0
    while ((i - 1) * i <= n)
        pos = 0
        num = 0
        while pos < n and num < i
            pos = nextele[pos]
            if pos == -1
                break
            end
            num += 1
            pos += i
        end
        result = [result, num].max
        i += 1
    end
    return result
end

A = Array.new

A[0] = 1
A[1] = 5
A[2] = 3
A[3] = 4
A[4] = 3
A[5] = 4
A[6] = 1
A[7] = 2
A[8] = 3
A[9] = 4
A[10] = 6
A[11] = 2

p solution([3, 2, 1])


=begin
    def solution(A):
        peaks = []
     
        for idx in xrange(1, len(A)-1):
            if A[idx-1] < A[idx] > A[idx+1]:
                peaks.append(idx)
     
        if len(peaks) == 0:
            return 0
     
        for size in xrange(len(peaks), 0, -1):
            if len(A) % size == 0:
                block_size = len(A) // size
                found = [False] * size
                found_cnt = 0
                for peak in peaks:
                    block_nr = peak//block_size
                    if found[block_nr] == False:
                        found[block_nr] = True
                        found_cnt += 1
     
                if found_cnt == size:
                    return size
     
        return 0
end