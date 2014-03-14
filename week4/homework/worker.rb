class Worker
def self.work times=1
		result = ""
		times.times {	result = yield if block_given? }
		result
	end
end