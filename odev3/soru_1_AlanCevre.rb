#encoding=utf-8

=begin
Emre KURT
15060768
Programlamaya Giriş I - Ödev 3
Soru 1
=end

## Alan Hesabı için
  def alan_hesap(k1,k2)
    alan  = k1*k2
    alan
  end


  ## Çevre hesabı için
  def kenar_hesap(k1,k2)
    kenar = (2*k1)+(2*k2)
    kenar
  end

print 'Kenar bilgilerini virgül ile ayırarak giriniz= '
kbilgi = gets.chomp.split(",").map(&:to_i)

AlanSonuc   = alan_hesap(kbilgi[0],kbilgi[1])
KenarSonuc  = kenar_hesap(kbilgi[0],kbilgi[1])


puts 'Alan Sonucu: '  + AlanSonuc.to_s
puts 'Çevre Sonucu: ' + KenarSonuc.to_s