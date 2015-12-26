require 'stemmify'

class WordCounter

  # Veriler sınıfa alınır  
  def initialize text,stop,range
    @range  = range
    @text   = File.read text
    @stop   = File.readlines stop
  end 
 
  # Metindeki boşluklar ve stp'deki kelimeler temizlenir
  def clear
    s = @stop.map { |v| v.gsub /[\n\t]/,''}
    @text.split.select { |val| val if !s.include? val }
  end
  
  # Gereksiz fazla karakterler temizlenir
  def clearfix
    clear.map { |v| v.downcase.stem.gsub /[\s,?."’]/ , '' }
  end
  
  # Aynı kelimeleri sayar
  def same
    final = Hash.new(0)
    
    clearfix.each do |val|
      final[val.to_sym] += 1
    end
    
    final
  end  
  
  # Girilen değerden büyük olanları ayırır
  def getOutofRange
    h = same.select { |k,v| v > @range}
    h.sort_by {|key,val| val}.reverse.to_h
  end

end


print 'Esik Degeri Giriniz: '
val = gets.chomp.to_i
count = WordCounter.new 'metin.txt','stp.txt',val
count.getOutofRange.each {|k,v| puts "#{k} kelimesi #{v} kez kullanildi."}
