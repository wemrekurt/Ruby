#encoding:utf-8
$islogin=false
comm='Komut Giriniz: '
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
	
	def coTOcap(ctry)
		if @country[ctry]
			@country[ctry]
		else
			'Böyle bir ülke yok!'
		end
	end

	def capTOco(capital)
		if @capital[capital]
			@capital[capital]
		else
			'Böyle bir başkent yok!'
		end	
	end
end

class Login

	def pass(user,pass)
		users=File.readlines('login.txt')
			i=0
			username=Hash.new
			users.each do |pwd|
				explode = pwd.chomp.split(",")
				username[explode[0]]=explode[1]
			end

		if username[user]==pass
			puts "Başarılı Giriş Yaptınız!\n".green
			$islogin=true
			true
		else
			puts "Hatalı Giriş Yaptınız!\n".red
			false
		end
	end

	def login(komut)
		if komut=='Login' || komut=='l'
			print 'Kullanıcı Adı: '
			kl=gets.chomp
			print 'Şifre: '
			sf=gets.chomp

			return pass(kl,sf)
		elsif komut=='Cikis' || komut=='c'
			return true
		else
			puts 'Geçersiz Komut!'
			return false
		end
	end
end
puts "KULLANABİLECEĞİNİZ KOMUTLAR:\n".red
puts "Giriş İçin--> "+"Login [l]".green
puts "Çıkış İçin--> "+"Cikis [c]".green
puts "Ülke'nin başkentini öğrenmek için -->"+"UlkeBaskent [u]".yellow
puts "Başkent'in ülkesini öğrenmek için -->"+"BaskentUlke [b]".yellow
puts "\n DİKKAT: ".red+" Login ile başlamanız yararınıza olacaktır!".blue
puts "-".green*80

logger=Login.new
canlogin=false
query=Country.new
query.fix

while canlogin==false
	print comm
	kmt=gets.chomp
	canlogin=logger.login(kmt)
end

while $islogin==true
	print comm.blue
	commit=gets.chomp
		if commit=='Cikis' || commit=='c'
			$islogin=false
		elsif commit=='UlkeBaskent' || commit=='u'
			print 'Ülke Giriniz: '
			ulk=gets.chomp
			puts query.coTOcap(ulk)
		elsif commit=='BaskentUlke' || commit=='b'
			print 'Başkent Giriniz: '
			bsk=gets.chomp
			puts query.capTOco(bsk)
		else
			puts 'Hatalı Komut Girdiniz! '
		end
end
puts 'Güle Güle!'
