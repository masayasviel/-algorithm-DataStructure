a, b, n = gets.chomp.split(" ").map(&:to_f)
x = n >= b ? b-1 : n
p (a * x / b).floor - a.to_i * (x / b).floor