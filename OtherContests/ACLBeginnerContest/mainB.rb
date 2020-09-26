a, b, c, d = gets.chomp.split.map(&:to_i)
ans_1 = a <= c && c <= b
ans_2 = c <= a && a <= d
puts ans_1 || ans_2 ? "Yes" : "No"