def rastgele(s1,s2)
	dizi=[]
	i=0
	while i<6
	 dizi[i]=rand(s1..s2)
	 i+=1
	end
 return dizi
end

puts rastgele(1,2)
