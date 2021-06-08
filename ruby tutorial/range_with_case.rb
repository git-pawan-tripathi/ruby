score = 70

result = case score
when 0..40 then "fail"
when 40..60 then "avg"
when 60..100 then "pass"
else "Invalid Score"
end 

puts result