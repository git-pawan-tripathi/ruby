class Box
	def initialize(w,h)
		@width=w
		@height=h
	end

	def +(other)
		Box.new(@width+other.width,@height+other.height)
	end
	#for scaling
	def *(scaler)
		Box.new(@width*=scaler,@height*=scaler)
	end

	def -@
		Box.new(-@width,-@height)
	end
end

