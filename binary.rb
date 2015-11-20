#encoding=utf-8

def itobinary(sayi)
  i = 0
  num = sayi
  stsonuc = ""

  while i<=num do
    i+=1
    sonuc = num%2
    stsonuc = stsonuc +sonuc.to_s

    num = num/2
  end

  stsonuc.reverse
end

def stobinary(yaz)
  genel = ""
  yaz.split("").each do |i|
    a=1

    num=i.ord
    stsonuc=""

    while a<=num do
      sonuc= num%2
      stsonuc=stsonuc+sonuc.to_s
      num = num/2
    end

    stsonuc= stsonuc.reverse

    genel=genel+" "+stsonuc
  end
  genel
end


print "Binary'ye çevrilecek değeri giriniz: "
gelen=gets.chomp.to_i
puts itobinary(gelen)

=begin
if gelen.class==String
  puts stobinary(gelen)
else
  puts itobinary(gelen)
end
=end