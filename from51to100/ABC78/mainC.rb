n, m = gets.chomp.split(" ").map(&:to_i)
puts (1900 * m + 100 * (n - m)) * (1 << m)