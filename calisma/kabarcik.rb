#siralanacak dizi
dizi=[5,12,8,24,21,25,75,34,86,31,89,3,4,2,6,7,1]
uzun=dizi.size
for i in 1..uzun-1
   for j in 1..uzun-i
     if dizi[j-1]>dizi[j]
       dizi.insert(j-1, dizi.delete_at(j)) 
     end
   end
end

puts dizi
