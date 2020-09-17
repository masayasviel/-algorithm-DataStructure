# https://atcoder.jp/contests/abc178/tasks/abc178_d

s = gets.chomp.to_i
MOD = 1000000007
dp = Array.new(s+1, 0)
dp[0] = 1

(3..s).each do |i|
    dp[i] = dp[i-3] + dp[i-1]
    dp[i] %= MOD
end

puts dp[s]