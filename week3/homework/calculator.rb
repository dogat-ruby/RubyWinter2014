class Calculator
	def sum input
		total = 0
		input.each do |i|
			total += i
		end
		total
		input.reduce 0, :+ #if empty array reduce doesn't execute
		#if each doesn't execute each doesn't execute too so we need to put a first value
	end

	def multiply  *args # you can do this x, *args , y cannot add one more parameter here l=0, *params if we star it is always an array, means as many as variables
		#puts args.inspect
		args.flatten.inject 1, :*
		
	end

	def pow x, y
		x**y
		#(1...y).to_a.inject(x){|total, i| total *= total}
	end 

	def fac n
		puts (1..n).to_a
	    multiply (1..n).to_a
	end
end