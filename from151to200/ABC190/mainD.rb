n = gets.chomp.to_i
n /= 2 while n % 2 == 0
sq = Math.sqrt(n).floor
ans = 0
(1..sq).each do |i|
    ans += 2 if n % i == 0
end
ans -= 1 if sq*sq == n
puts ans * 2