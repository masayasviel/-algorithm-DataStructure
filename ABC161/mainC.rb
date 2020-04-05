n, k = gets.chomp.split(" ").map(&:to_i)
tmp = n % k
puts [tmp, k-tmp].min