# def solution(a)
#   pair=0
#   a.each_with_index do |no,i|
#     if no==0
#       j=i
#       while(j<a.length)
#         j+=1
#         if a[j]==1
#           pair+=1
#         end
#       end
#     end
#   end
#   return pair
# end

def solution(a)
    zero_count = 0
    combinations = 0
    for item in a
        if item == 0
            zero_count += 1
        else
            combinations += zero_count
        end
        if combinations > 1000000000
            return -1
        end
    end
    return combinations
end

p solution([0,1,0,1,1])