gercek="merhaba dunyaxyzqwe"
sahte=gercek.split(//)
dizi=gercek.reverse.split(//)
i=-1
dizi.each do |harf|
 puts i.to_s + " => " + harf
 i-=1
end

puts gercek[-10]+" ve uzunluk "+gercek.size.to_s

puts sahte[-1]
puts sahte.reverse[0]
puts sahte[sahte.length-1]
puts sahte.last
