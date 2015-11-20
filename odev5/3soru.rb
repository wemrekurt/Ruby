def agirlik(cumle)
  words=Array.new
  cumle=cumle.downcase.split
  i=0
   for kelime in cumle 
    toplam=0
    for harf in kelime.split(//)
	if harf=="a" || harf=="e"
	  toplam+=3
	elsif harf=="i" || harf=="o" || harf=="u"
	  toplam+=2
	else
	  toplam+=1	
	end
     end
   i+=2
   words[i-2]=kelime
   words[i-1]=toplam
  end
  return words
end

print 'Kelime Giriniz: '
kelime=gets.chomp

hesapla=agirlik(kelime)

j=0
while j<hesapla.length
  puts "kelime: "+hesapla[j].to_s+", agirligi: "+hesapla[j+1].to_s
  j+=2
end
