class Players
	attr_accessor: name, :lives
   	
	def initialize(name)
		@name = name
		@lives = 3
	end

	def still_lives
		@lives > 0
	end
end
