module SimonSays #module needed here
	
	def echo input 
		return input
	end	

	def shout input
		return input.upcase
	end

	def repeat input
		return input + " " + input
	end

	def repeat input , x = 2
		return ((input + " ") * x).strip
	end

	def start_of_word input, x = 1
		return input[0,x]
	end

	def first_word input
		return input.split(" ").first
	end 
end