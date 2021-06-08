time=Time.new

puts time

time1=Time.now
puts time1.inspect

puts time.year    # => Year of the date 
puts time.month   # => Month of the date (1 to 12)
puts time.day     # => Day of the date (1 to 31 )
puts time.wday    # => 0: Day of week: 0 is Sunday
puts time.yday    # => 365: Day of year
puts time.hour    # => 23: 24-hour clock
puts time.min     # => 59
puts time.sec     # => 59
puts time.usec    # => 999999: microseconds
puts time.zone

puts Time.local(2020,7,12) #year-month-date
puts Time.local(2020,7,12,9,10,60)
puts Time.utc(2008, 7, 8, 9, 10)
puts Time.gm(2008, 7, 8, 9, 10, 11)

#[sec,min,hour,day,month,year,wday,yday,isdst,zone]
p time.to_a

time_values=time.to_a

puts Time.utc(*time_values)

#Time.to_i Returns number of seconds since epoch
puts Time.now.to_i

#convert epoch seconds to date time
epoch_sec=Time.now.to_i

puts Time.at(epoch_sec)

# Returns second since epoch which includes microseconds
t = Time.now.to_f
puts t.class

#time formating
time = Time.new
puts time.to_s.instance_of? String
puts time.ctime
puts time.strftime("%Y-%m-%d %H:%M:%S")




#manupulate date time
=begin


=end
