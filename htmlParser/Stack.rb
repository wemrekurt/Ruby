class Stack
	def initialize
		@list=[]
	end
	
	def empty?
		return @list.empty?
	end
	
	def push(item)
		@list.push(item)
	end

	def pop
		return @list.pop
	end

	def peek
		return @list.last
	end

	def size
		return @list.size
	end
end

