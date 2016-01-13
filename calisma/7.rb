def newton n
  kok = n/2
  for i in 1..20
    kok = (1.0/2) * (kok + (n / kok))
  end
  kok
end

print "sayi giriniz: "
sayi = gets.chomp.to_i
puts newton sayi
