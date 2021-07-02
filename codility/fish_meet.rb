def solution(a,b)
    alive_fish = 0
    fish_down = []
    b.each_with_index do |value,index|
        if value == 0
            if fish_down.length == 0
                alive_fish += 1
            else
                # Start to judge eating fish
                begin
                    while fish_down[-1] < a[index]
                        fish_down.pop
                    end
                rescue
                    alive_fish += 1
                end
            end
        else
            fish_down.append(a[index])
        end
    end
    return alive_fish + fish_down.length
end
p solution([4,3,2,1,5],[0,1,0,0,0])