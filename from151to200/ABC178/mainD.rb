s = gets.chomp.to_i
MOD = 1000000007
dp = Array.new(s+1, 0)
dp[0] = 1
(1..s).each do |i|
    ((i-3)+1).times do |j|
        dp[i] += dp[j]
        dp[i] %= MOD
    end if (i-3)+1 > 0
end

puts dp[s]