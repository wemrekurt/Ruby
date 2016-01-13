def ortalama notlar
  toplam = 0
  notlar.each {|k,v| toplam += v }
  toplam.to_f/notlar.size
end

def sirala notlar
  sirali = notlar.values.sort
  [sirali[0],sirali[-1]]
end

def bilgial
  ogr = {}
  for i in 1..20
    print i,'. ogrenci no girin: '
    no = gets.chomp
    print no,' icin not girin: '
    puan = gets.chomp.to_i
    ogr[no] = puan 
  end
  ogr
end

notlar = bilgial
orta = ortalama notlar
sira = sirala notlar
puts "Ortalama: #{orta}"
puts "En Yuksek: #{sira[0]} ve En dusuk: #{sira[1]}"


