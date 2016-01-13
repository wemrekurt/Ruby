a=[5,167,1,4,3,6,4,7,8,12,64,14]

max=a[0]
min=a[0]

for i in 1..a.size-1
  if max<a[i]
    max=a[i]
  elsif min>a[i]
    min=a[i]
  end
end

puts max
puts min
  
