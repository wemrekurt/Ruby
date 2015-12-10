load 'Stack.rb'

#Html Parse
def html_filter(doc)
	file = File.readlines(doc)
	first, new, last = Array.new, Array.new, Array.new

	file.each do |i|
 		i = i.gsub(/(\t)|(\n)/,'')
 		first.push(i) if i.size>0
	end

	first.each do |g|
		a = g.scan(/<\/?[^>]*>/)
			a.each do |j|
				new.push(j)
			end
	end

	new.each do |explode|
		explode = explode.split
		ex = explode[0].gsub(/<|>/,'')
		last.push(ex)
	end
last
end

#Bazı taglar vardır ki kapatmak için ayrı tag gerekmex f.e: <img src="foo.png" />
def specific tag
	specific = %w(link img script input br hr meta param !DOCTYPE !--)
	specific.include? tag.gsub('/','')
end

def matches(open,close)
	"/" + open.to_s == close
end

def parChecker htmlString 
	s = Stack.new
	balanced = true
	index = 0
	while index < htmlString.length and balanced
		tag = htmlString[index]
		if !specific tag	
			if !tag.include? '/'
			s.push(tag)
			else
				
				if s.empty?
					balanced = false
				else
					top = s.pop
					if not matches(top,tag)
						balanced = false
					end
				end
			
			end
		end

		index += 1
	end
	
	if balanced and s.empty?
		true
	else
		[top,index-1]
	end
	
end

check = html_filter 'yakin.html'
clear = parChecker check

if clear != true
	puts "#{clear[1]}. tag olan #{clear[0]} tagında bir sorun var"
else
	puts "Kusursuz bir kodlama"
end
