gets.to_i
arr=gets.chomp.split(" ").map(&:to_i)
puts (arr.max-arr.min).abs