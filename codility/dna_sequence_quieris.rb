# def solution(s, p, q)
# 	h={"A" => 1,"C" => 2,"G" => 3,"T"=> 4}
#  	n=p.length-1
#  	subs=""
#  	res=[]
#  	(0..n).each do |i|
#  		subs=s[p[i]..q[i]]
#  		subs=subs.split("").uniq.join
#  		p subs
#  		temp=[]
#  		subs.each_char do |j|
#  			temp.append(h[j])
#  		end
#  		res.append(temp.min)
#  		temp.clear
#  	end
#  	return res
# end


def solution(s, p, q)
    total = []
    min = 0
    n=p.length-1

    (0..n).each do |i|
        substring = s[p[i]..q[i]]
        if (substring.include?('A'))
            min = 1
        elsif (substring.include?('C'))
            min = 2
        elsif (substring.include?('G'))
            min = 3
        elsif (substring.include?('T'))
            min = 4
    	else
    	end
        total.push(min)
    end
    return total
end

p=[2,5,0]
q=[4,5,6]

p solution("CAGCCTA",p,q)