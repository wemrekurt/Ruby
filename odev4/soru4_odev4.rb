decimal=13
i=0
output=""
while decimal>=1
  i=decimal%2
  output= output+i.to_s
  decimal=decimal/2
end

puts output.reverse