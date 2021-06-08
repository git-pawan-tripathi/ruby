
class Food
	attr_accessor :protein, :fat, :colestrol
  	def initialize
    	yield(self)
  	end
end

bacon = Food.new do |i|
	i.protein="unsatuated"
	i.fat="harmful"
	i.colestrol="harmfun"
end

puts bacon.protein
puts bacon.fat
puts bacon.colestrol