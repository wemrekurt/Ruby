def faktoriyel sayi
  sonuc = 1
  for i in 1..sayi
    sonuc = sonuc*i
  end
  sonuc
end


print 'Sayi girin: '
sayi = gets.chomp.to_i

fakto = faktoriyel sayi

puts "#{sayi}! = #{fakto}"



