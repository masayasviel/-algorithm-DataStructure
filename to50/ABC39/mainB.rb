x = gets.chomp.to_i
ans = 1
ans += 1 while ans **4 != x
puts ans