#encoding=utf-8

=begin
Emre KURT
15060768
Programlamaya Giriş I - Ödev 3
Soru 5
=end


## E/K kontrolü için dizi
cinsiyetler=["e","E","k","K"]

class IdealKilo

  ## Kilo hesabı için
  def kilo_hesap(boy,kilo,cinsiyet)

    if cinsiyet=="E" || cinsiyet=="e"
      kiloyeni = (boy-100)-((boy-150)/4)
    else
      kiloyeni = (boy-100)-((boy-150)/2)
    end

    @kilonew = kiloyeni
    @orjkilo = kilo

    ideal_sorgu
  end

  ## Ideal kilo sorgusu için
  def ideal_sorgu

    if @kilonew>@orjkilo
      sonuc='İdeal Kilonuz ' + @kilonew.to_s + "\nKilo Almanız Gerekmektedir!"
    elsif @kilonew==@orjkilo
      sonuc='İdeal Kilodasınız!'
    elsif @kilonew<@orjkilo
      sonuc='İdeal Kilonuz ' + @kilonew.to_s + "\nKilo Vermeniz Gerekmektedir!"
    end

  end

end


print 'Boy Girin(cm) : '
kullanici_boy = gets.chomp.to_i

print 'Kilo Girin(kg) : '
kullanici_kilo = gets.chomp.to_i

print 'Cinsiyet (E/K) : '
kullanici_cins = gets.chomp.to_s



if cinsiyetler.count(kullanici_cins)>0

  ideal_sinif = IdealKilo.new
  puts ideal_sinif.kilo_hesap(kullanici_boy,kullanici_kilo,kullanici_cins)

else

  puts 'Cinsiyet E veya K girilmelidir.'

end