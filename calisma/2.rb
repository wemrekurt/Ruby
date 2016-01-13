def ekok s1,s2
  sonuc = 0
  for i in 1..s1*s2
    if i%s1 == 0 && i%s2 == 0
      sonuc = i
      break
    end
  end
  sonuc
end

print 'Sayilari virgulle ayirarak giriniz: '
sayilar = gets.chomp

sayi = sayilar.split ','

p ekok sayi[0].to_i,sayi[1].to_i
