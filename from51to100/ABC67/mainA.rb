a, b = gets.chomp.split(" ").map(&:to_i)
ans = a % 3 == 0 || b % 3 == 0 || (a+b) % 3 == 0
puts ans ? "Possible" : "Impossible"