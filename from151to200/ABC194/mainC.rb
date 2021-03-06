N = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
aa = a.map{|it| it*it}
res1 = aa.sum
res2 = a.sum
puts N * res1 - res2*res2