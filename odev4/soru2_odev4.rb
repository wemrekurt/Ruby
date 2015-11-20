#encoding:UTF-8
def mukemmelmi(bolunen)
  bolen=2
  toplam=1
  while(bolen<=bolunen/2)
    if(bolunen%bolen==0)
      toplam+=bolunen/bolen
    end
    bolen+=1
  end

  if(toplam==bolunen)
    true
  else
    false
  end
end

if(mukemmelmi(6)==true)
  puts "6 mükemmel bir sayıdır"
else
  puts "6 mükemmel bir sayı değildir"
end