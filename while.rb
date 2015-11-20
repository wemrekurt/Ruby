=begin
def dondur(i,j)
  while i<=j
    puts i
    i+=1
  end
end


print "Dongu Bas: "
say=gets.chomp.to_i

print "Dongu Bit: "
bit=gets.chomp.to_i

dondur(say,bit)
=end



def bolenler(j)
  a=2
  i=2

  while i<=j/2
    if j%i==0
      puts i
      a+=1
    end
    i+=1
  end

  if a==2
    puts "Asaldir"
  else
    puts j
    puts "1 de dahil Toplam "+a.to_s+" boleni var. Asal degil."
  end
end

print 'bolunen: '
say1=gets.chomp.to_i

bolenler(say1)
