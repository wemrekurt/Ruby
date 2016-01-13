def sesli cumle
  cumle = cumle.split //
  cumle.select {|v| "aeiouAEIUO".include? v }
end

ses = sesli "babam boyle pasta yapmayi nereden ogrendi?"

puts "Sayi: #{ses.size} ve liste: #{ses.join}"
