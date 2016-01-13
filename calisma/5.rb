matrix = File.read 'matrix.txt'

clear = matrix.gsub /[@#'" +;:`,.\n]/,''

puts clear
