a, b = gets.chomp.split(" ").map(&:to_i)
puts 8 < a || 8 < b ? ":(" : "Yay!"