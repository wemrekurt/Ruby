#encoding:utf-8
comm='Komut Giriniz: '
wrongcmd='Hatalı Komut Girdiniz!'

#Ülke-Başkent 
class Country
	
  def fix()	
	countries = File.readlines('ulkeler_baskentler.txt')
	@country	= Hash.new
	@capital	= Hash.new

	
		countries.each do |cofc|
			explode = cofc.chomp.split(",")
			@country[explode[0]]	= explode[1]
			@capital[explode[1]]	= explode[0]
		end
	end
	
	#Ülke sor, Başkent ver
	def coTOcap(ctry)
		if @country[ctry]
			@country[ctry]
		else
			'Böyle bir ülke yok!'
		end
	end

	#Başkent sor, Ülke ver
	def capTOco(capital)
		if @capital[capital]
			@capital[capital]
		else
			'Böyle bir başkent yok!'
		end	
	end
	
end
	
#Şifre Kontrol İşlemleri T/F
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

def command(cmd)
	access=['Login','UlkeBaskent','BaskentUlke','Cikis']
		
	if access.include? cmd
		cmd
	else
		false
	end
end


islogin=false

while islogin==false
	print comm
	kmt=gets.chomp
	
	if command(kmt)=='Login'
		print 'Kullanıcı Adı:'
		us=gets.chomp
		
		print 'Şifre:'
		ps=gets.chomp
		
		if pass(us,ps)
			puts 'Başarılı Giriş Yaptınız!'
				inside=false
				while inside==false
					print comm
					comd=gets.chomp
					getcom=command(comd)
						if getcom!='false'
							query=Country.new
							query.fix

							if getcom=='UlkeBaskent'
									print 'Ülke Giriniz: '
									cnt=gets.chomp
									puts query.coTOcap(cnt)
							elsif getcom=='BaskentUlke'
									print 'Başkent Giriniz: '
									capt=gets.chomp
									puts query.capTOco(capt)
							elsif getcom=='Login'
								puts 'Whoops?'
							else
								inside=true
							end

						else
							puts wrongcmd
						end
				end	
			islogin=true
		else
			puts 'Hatalı Şifre Girdiniz!'
		end
	elsif command(kmt)=='Cikis'
		islogin=true
	elsif command(kmt)!=false
		puts 'Önce Giriş Yapmalısınız'
	else
		puts wrongcmd
	end
end
puts 'Güle Güle!'
