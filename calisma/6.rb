def reverser kelime
  new=""
  for v in 0..kelime.size-1
    if "aeiouAEIOU".include? kelime[v]
      new += kelime[v].upcase
    else
      new += kelime[v].downcase
    end
  end
  new
end

p reverser "babam boyle pasta yapmayi nereden ogrendi"
