#encoding:utf-8

#Ülke-Başkent 
countries = File.readlines('ulkeler_baskentler.txt')
country	= Array.new
capital	= Array.new

	i=0
	countries.each do |cofc|
		explode = cofc.chomp.split(",")
		country[i]	= explode[0]
		capital[i]	= explode[1]
		i+=1
	end
	

def pass(user,pass)
	users=File.readlines('login.txt')
		i=0
		username=Hash.new
		users.each do |pwd|
			explode = pwd.chomp.split(",")
			username[explode[0]]=explode[1]
		end

	if username[user]==pass
		true
	else
		false
	end

end


print 'kullanici:'
us=gets.chomp

print 'sifre:'
ps=gets.chomp

if pass(us,ps)
	print "lets begin"
else
	print "no"
end
