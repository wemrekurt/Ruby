#DRY ilkesi gereği load edildi. Diğer soruda da aynı kod yazılacaktı..
load 'datas.rb'

class Works
	
	#En yüksek not hesabı yapılır
	def max students
		max_score = 0
		students.each {|k,v| max_score = v[1] if v[1] > max_score }
		max_score
	end
	
	#Yeni Notlarla Liste Oluştur
	def average get_stu,upto
		upto = 100 - upto
		sum = 0
		newlist = Hash.new

		get_stu.each do |k,v|
			newscore = v[1] + upto
			newlist[k] = {'name' => v[0], 'score' => newscore} 
			sum += newscore
		end
		[sum/get_stu.size,newlist]
	end	

	#Ortalamanın üzerindekileri bul
	def count getinfo,ave
		whoweare = getinfo.select {|i,j| j['score'] >= ave}
		whoweare
	end

end

ahmetbey = Works.new
regular = create  #datas.rb'den gelen öğrenci not listesi
max_score = ahmetbey.max regular  
listnew = ahmetbey.average regular,max_score
success = ahmetbey.count listnew[1],listnew[0]

puts "#{listnew[0]} ortalamasının üzerinde toplam #{success.size} kişi var. Bu kişiler aşağıda listelenmektedir."

success.each {|i,j| puts "#{i} - #{j['name']} Notu: #{j['score']} (#{regular[i][1]})" }

=begin
#isme göre bul
a = infos.select {|x| infos[x][0] == "HATİCE"}

print a
=end

