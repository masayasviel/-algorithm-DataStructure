N, K = gets.chomp.split.map(&:to_i)
MOD = 998244353
 
LRs = []
K.times do
    LRs << gets.chomp.split.map(&:to_i)
end
 
dp = Array.new(3*N, 0)
 
LRs.each do |l, r|
    dp[l] += 1
    dp[r+1] -= 1
end

(1..N).each do |i|
    LRs.each do |l, r|
        dp[i+l] += dp[i]
        dp[i+l] %= MOD
        dp[i+r+1] -= dp[i]
        dp[r+r+1] %= MOD
    end
    dp[i+1] += dp[i]
    dp[i+1] %= MOD
end
 
puts dp[N-1]