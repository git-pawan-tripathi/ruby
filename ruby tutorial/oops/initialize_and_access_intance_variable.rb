# class Food
#   def initialize(protein)
#     @protein = protein
#   end
# end

# bacon = Food.new(21)
# bacon.protein

# this code gives NoMethodError: undefined method `protein'

class Food
	attr_accessor :protein
  	def initialize(protein)
    	@protein = protein
  	end
end

bacon = Food.new(21)
puts bacon.protein