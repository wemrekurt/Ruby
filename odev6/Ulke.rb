#encoding:utf-8
comm='Komut Giriniz: '
wrongcmd='Hatalı Komut Girdiniz!'
firstlogin = 'Önce Giriş Yapmalısınız'

class String
  # String Colorization
  def colorize(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end

  def red
    colorize(31)
  end

  def green
    colorize(32)
  end

  def yellow
    colorize(33)
  end

  def blue
    colorize(34)
  end

end

 
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
	access=['Login','l','UlkeBaskent','u','BaskentUlke','b','Cikis','c']
		
	if access.include? cmd
		cmd
	else
		false
	end
end

puts "KULLANABİLECEĞİNİZ KOMUTLAR:\n".red
puts "Giriş İçin--> "+"Login [l]".green
puts "Çıkış İçin--> "+"Cikis [c]".green

puts "Ülke'nin başkentini öğrenmek için -->"+"UlkeBaskent [u]".yellow
puts "Başkent'in ülkesini öğrenmek için -->"+"BaskentUlke [b]".yellow

puts "\n DİKKAT: ".red+" Login ile başlamanız yararınıza olacaktır!".blue
puts "-".green*80

islogin=false

while islogin==false
	print comm
	kmt=gets.chomp
	komut=command(kmt)	

	if komut=='Login' || komut=='l'
		print 'Kullanıcı Adı:'
		us=gets.chomp
		
		print 'Şifre:'
		ps=gets.chomp
		
		if pass(us,ps)
			puts 'Başarılı Giriş Yaptınız!'
				inside=false
				while inside==false
					print "\n"+comm
					comd=gets.chomp
					getcom=command(comd)
						if getcom!='false'
							query=Country.new
							query.fix

							if getcom=='UlkeBaskent' || getcom=='u'
									print 'Ülke Giriniz: '
									cnt=gets.chomp
									puts query.coTOcap(cnt)
							elsif getcom=='BaskentUlke' || getcom=='b'
									print 'Başkent Giriniz: '
									capt=gets.chomp
									puts query.capTOco(capt)
							elsif getcom=='Login' || getcom=='l'
								puts 'Whoops?'
							elsif getcom=='Cikis' || getcom=='c'
								inside=true
							else
								puts wrongcmd
							end

						else
							puts wrongcmd
						end
				end	
			islogin=true
		else
			puts 'Hatalı Şifre Girdiniz!'
		end
	elsif komut=='Cikis' || komut=='c'
		islogin=true
	elsif command(kmt)!=false
		puts firstlogin
	else
		puts wrongcmd
	end
end
puts 'Güle Güle!'
