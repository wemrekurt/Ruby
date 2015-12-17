load 'datas.rb'

# İşlevsel olarak tekrar güncelle
def update 
	getinfo = create # datas.rb dosyasındaki create fonk.
	newlist = Hash.new
	
	getinfo.each do |i,j|
		newlist[i] = {'score' => j[1], 'name' => j[0]}
	end

	newlist
end

# Öğrenci numarasına göre sırala
def largest_hash_key hash
	search =	hash.max_by{|k,v| v['score']}
	search[1]['score']
end

# En yüksek notları seç ve bu en yüksek notlara sahip kişileri isime göre sırala
def sortmax max,updated
	selected = updated.select {|k,v| v['score'] == max}
	sort = selected.sort_by{|k,v| v['name']}
end

# İşlemler sonunda hash'te kalan değer sayısına göre fonksiyon çağır
def size sort
	if sort.size>1
		controller sort
	else
		sort
	end
end

# aynı not aynı isim varsa numarası küçük olanı seç
def controller val
	key, value = val.first
	same = val.select {|k,v| v['name'] == value['name']}
	
	if same.size > 1
		same.min_by{|k,v| k}
	else
		same
	end
end

max = largest_hash_key update
sort = sortmax max,update
bestkey,bestval = size sort
puts "En yüksek not #{bestval['score']} ile #{bestkey} numaralı #{bestval['name']} öğrencisine aittir."


