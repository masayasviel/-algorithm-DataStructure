n, k = gets.chomp.split(" ").map(&:to_i)
ans = 1
mod = 10 ** 9 + 7
dp = [0]

if n < k then
    puts 1
    exit
end

n.times do |i|
    dp << dp[i] + i + 1
end

k.upto(n) do |i|
    ans += dp[n] - dp[n-i] - dp[i-1] + 1
end

puts ans % mod