#encoding=utf-8

=begin
Emre KURT
15060768
Programlamaya Giriş I - Ödev 3
Soru 3
=end


## Dik Üçgen mi kontrolü için tanımladık
def dik_ucgen(k1,k2,k3)

  k1,k2,k3 = k1**2 , k2**2 , k3**2

    if k1+k2==k3 || k1+k3==k2 || k2+k3==k1
      sonuc= 'Dik Üçgendir'
    else
      sonuc= 'Dik Üçgen Değildir!'
    end

end

print 'Üç Kenarı Virgül ile Ayırarak Giriniz '
uckenar=gets.chomp.split(",").map(&:to_i)

puts dik_ucgen(uckenar[0],uckenar[1],uckenar[2])
