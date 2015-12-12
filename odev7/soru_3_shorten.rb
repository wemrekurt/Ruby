words = File.read('liste.txt').split

def max file
	max = file[0]
	1.upto(file.size-1).each do |i|
		max=file[i] if max.size<file[i].size
	end
	max
end

def min file
	min = file[0]
	1.upto(file.size-1).each do |i|
		min=file[i] if min.size>file[i].size
	end
	min
end

puts "En Uzun: "+max(words)
puts "En Kisa: "+min(words)
