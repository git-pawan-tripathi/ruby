$LOAD_PATH << '.'

require "Week_module"

include Week

class Decade
   def no_of_months
      puts Week::FIRST_DAY		#use module constant using ::
      number = 10*12
      puts number
   end
end
d1 = Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month				#use module method using .
Week.weeks_in_year
d1.no_of_months