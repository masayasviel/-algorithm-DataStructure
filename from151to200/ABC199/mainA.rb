a, b, c = gets.chomp.split.map(&:to_i)
puts a * a + b * b < c * c ? "Yes" : "No"