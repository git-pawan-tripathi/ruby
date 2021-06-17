

def solution(x, a)
    i = 0
    dict_temp = Hash.new
    while i < a.length
        dict_temp[a[i]] = i
        p dict_temp
        p dict_temp.length
        if dict_temp.length == x
            return i
        end
        i += 1
    end
    return -1
end

p solution(5,[1,3,1,4,2,3,5,4])
p solution(2,[2,2,2,2,2,2,2,2])