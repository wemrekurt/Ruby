#1. yol .sort methodu
def sirala1 sayilar
  sayilar.sort
end

#2. yol siralama algoritmalari (ben kabarcik siralamayi tercih ettim) http://bilgisayarkavramlari.sadievrenseker.com/2008/08/09/siralama-algoritmalari-sorting-algorithms/

def kabarcik sayilar
  sirala = true
  while sirala
    sirala = false
    0.upto sayilar.size-2 do |i|
      if sayilar[i] > sayilar[i+1]
        sayilar[i],sayilar[i+1] = sayilar[i+1],sayilar[i]
        sirala = true
      end
    end
  end 
  sayilar
end

sayi = [3,4,6,1,123,53,133,764,23,14,2]

p kabarcik sayi
