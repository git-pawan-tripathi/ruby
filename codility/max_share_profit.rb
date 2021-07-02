
# def solution(a)
#   if a.length!=0
#     result=[]
#     (0..a.length-1).each do |j|

#       ending_here = [0]*a.length
#       for idx in (j+1..a.length-1)
        
#         ending_here[idx] = [0, (a[idx]-a[j])].max
#       end
#       result << ending_here.max
#       ending_here.clear
#     end
#     if result.max!=0
#       return result.max
#     else
#       return 0
#     end
#   else
#     return 0
#   end
# end

def solution(a)
    max_profit = 0
    max_day = 0
    min_day = Float::INFINITY
     
    for day in a
        min_day = [min_day, day].min
        p "day is #{day} min_day is #{min_day}"
        max_profit = [max_profit, day-min_day].max
        p "max_profit is #{max_profit}"
    end
    if max_profit<=0
      return 0
    else
      return max_profit
    end
end

a=Array.new

a[0] = 23171
a[1] = 21011
a[2] = 21123
a[3] = 21366
a[4] = 21013
a[5] = 21367

p solution(a)
p solution([])