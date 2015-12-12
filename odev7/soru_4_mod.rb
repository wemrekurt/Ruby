def calculate(max,div)
	counter=Array.new(div+1,0)
	
	1.upto(max).each do |i|
		if i<div
			1.upto(i).each do |j|
				counter[j]+=1 if i%j==0
			end
		else
			1.upto(div).each do |j|
				counter[j]+=1 if i%j==0
			end
		end
	end
	counter
end

cal = calculate(100,20)

1.upto(cal.size-1) do |g|
	puts "1'den 100'e kadar olan sayilardan #{cal[g]} tanesi #{g} ile tam bolunur."
end
