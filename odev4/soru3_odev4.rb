#encoding : UTF-8
require 'io/console'
def sor(ileti)
  print "#{ileti}"
  girdi=gets.chomp
  return girdi
end
def kaydet(veri)
  puts "Seçmiş olduğunuz #{veri} parolanız başarılı bir şekilde kaydedildi "
end
def turkce_kontrol(parola)
  parola=parola
  if parola.include? "x" # parola.count("x")>0
    return false
  else
    return true
  end
end
def karakter_uzunlugu(parola)
  if (parola.size>6 || parola.size<3 )
    return false
  else
    return true
  end
end
while true
  while true
  a=sor("Parolayı giriniz : ")
    if turkce_kontrol(a)==true && karakter_uzunlugu(a)==true
      break
    else
      puts "parolanız ü karakterini içermemeli ve en az 3 en çok 6 karakter uzunluğunda olmalı"
    end
  end
  b=sor("Parolayı tekrar giriniz: ")
  if a==b
    kaydet(a)
    break
  else
    puts "Yanlış bir parola girdiniz işlemi tekrar ediniz "
  end
end
