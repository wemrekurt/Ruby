def create
	students = File.readlines 'ogrenci.txt'
	scores = File.readlines 'not.txt'

	stu = students.map {|i| i.chomp.split }
	scr = scores.map {|j| j.chomp.split }
	
	infos = Hash.new
					  
	stu.each_with_index do |k,i|
		infos[stu[i][0]] = [stu[i][1],scr[i][1].to_i] if stu[i][0] == scr[i][0]
	end
	infos
end

