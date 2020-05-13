a, b = gets.chomp.split(" ").map(&:to_i)
puts 9 < a || 9 < b ? -1 : a*b