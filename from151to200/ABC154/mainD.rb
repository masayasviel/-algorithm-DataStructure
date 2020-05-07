n, k = gets.chomp.split(" ").map(&:to_i)
pi = gets.chomp.split(" ").map(&:to_f)
dp = [0]
ans = 0

n.times do |i|
    dp << dp[i] + (1 + pi[i]) / 2.0
end

(n-k+1).times do |i|
    ans = [ans, dp[i+k]-dp[i]].max
end
puts ans