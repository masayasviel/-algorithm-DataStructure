s = gets.chomp.to_i
MOD = 1000000007
dp = Array.new(s+1, 0)
dp[0] = 1

(1..s).each do |i|
    tmp = (i-3) + 1
    if tmp > 0 then
        tmp.times do |j|
            dp[i] += dp[j]
            dp[i] %= MOD
        end
    end
end

puts dp[s]