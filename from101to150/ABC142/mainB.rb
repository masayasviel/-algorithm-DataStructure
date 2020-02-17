n, k = gets.chomp.split(" ").map(&:to_i)
puts gets.chomp.split(" ").map(&:to_i).count {|i| i >= k}