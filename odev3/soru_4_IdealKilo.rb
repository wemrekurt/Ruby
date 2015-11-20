#encoding=utf-8

=begin
Emre KURT
15060768
Programlamaya Giriş I - Ödev 3
Soru 4
=end


print 'Boy Girin(cm) : '
boy = gets.chomp.to_i

print 'Kilo Girin(kg) : '
kilo = gets.chomp.to_i

print 'Cinsiyet (E/K) : '
cinsiyet = gets.chomp.to_s

if cinsiyet=="E" || cinsiyet=="e"
  kiloyeni = (boy-100)-((boy-150)/4)
elsif cinsiyet=="K" || cinsiyet=="k"
  kiloyeni = (boy-100)-((boy-150)/2)
end

if kiloyeni>kilo
  sonuc='İdeal Kilonuz ' + kiloyeni.to_s + "\nKilo Almanız Gerekmektedir!"
elsif kiloyeni==kilo
  sonuc='İdeal Kilodasınız!'
elsif kiloyeni<kilo
  sonuc='İdeal Kilonuz ' + kiloyeni.to_s + "\nKilo Vermeniz Gerekmektedir!"
end

puts sonuc