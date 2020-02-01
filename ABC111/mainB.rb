n = gets.chomp.to_i
puts [*1..9].map{|i| i*111}.bsearch{|x| x >= n}