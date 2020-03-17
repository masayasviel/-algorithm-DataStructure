a, b = gets.chomp.split(" ").map(&:to_i)
puts a + b > 9 ? "error" : a+b