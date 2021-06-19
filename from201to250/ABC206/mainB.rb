N = gets.chomp.to_i
res = 0
ans = 1

loop do
    res += ans
    break if res >= N
    ans += 1
end

puts ans