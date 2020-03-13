n, a, b = gets.chomp.split(" ").map(&:to_i)
ans = (n / (a+b)) * a
ans += n % (a+b) <= a ? n % (a+b) : a
puts ans