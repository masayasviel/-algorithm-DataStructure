s = gets.chomp.to_i
MOD = 1000000007
dp = Array.new(s+1, 0)
dp[0] = 1
(1..s).each do |i|
    ((i-3)+1).times do |j|
        dp[i] += dp[j]
        dp[i] %= MOD
        # puts "[" + [i, j].join(", ") + "]" + ": [" + dp.join(", ") + "]"
    end if (i-3)+1 > 0
    # puts i.to_s + ": [" + dp.join(", ") + "]"
end

puts dp[s]