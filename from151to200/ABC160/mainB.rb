x = gets.chomp.to_i
ans = (x / 500) * 1000
ans += ((x % 500) / 5) * 5
puts ans