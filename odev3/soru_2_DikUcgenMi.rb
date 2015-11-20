#encoding=utf-8

=begin
Emre KURT
15060768
Programlamaya Giriş I - Ödev 3
Soru 2
=end


print 'Üç Kenarı Virgül ile Ayırarak Giriniz '
uckenar=gets.chomp.split(",").map(&:to_i)


k1,k2,k3 = uckenar[0]**2 , uckenar[1]**2 , uckenar[2]**2

if k1+k2==k3 || k1+k3==k2 || k2+k3==k1
  puts 'Dik Üçgendir'
else
  puts 'Dik Üçgen Değildir!'
end

