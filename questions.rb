class Questions
	attr_accessor: answer, :print
	
	def initialize(num1, nume2)
		@num1 = rand(10)
		@num2 = rand(10)
		@answer = @num1 + @num2
		@print = "What does #{@num1} + #{@num2} equal?"
	end
end
