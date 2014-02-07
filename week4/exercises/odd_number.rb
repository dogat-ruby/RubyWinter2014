class OddNumber
	#include Comparable #built in method on top of comparator we wrote below

	attr_reader :value #you need this in order to cuse comparator

	def initialize value
		@value = value
	end 

	def succ
		new_val = nil
		if @value.even?
			new_val = OddNumber.new(@value + 1)
		else
			new_val = OddNumber.new(@value + 2)
		end
		new_val
	end

	def <=> (other)
		@value <=> other.value
	end

#	def inspect
#		@value
#	end 
end

