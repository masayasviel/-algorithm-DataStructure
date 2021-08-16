require 'set'

INF = 1 << 40
N, L = gets.chomp.split.map(&:to_i)
x = Set.new(gets.chomp.split.map(&:to_i))
run, jump, hurdle = gets.chomp.split.map(&:to_i)
dp = Array.new(L+10).map{ Array.new(3, INF) }
3.times do |i|
    dp[0][i] = 0
end

L.times do |ptr|
    act_1 = x.include?(ptr+1)
    act_2 = x.include?(ptr+2)
    act_3 = x.include?(ptr+4)
    3.times do |i|
        dp[ptr+1][0] = [
            dp[ptr][i] + run + (act_1 ? hurdle : 0),
            dp[ptr+1][0]
        ].min
        dp[ptr+2][1] = [
            dp[ptr][i] + run + jump + (act_2 ? hurdle : 0),
            dp[ptr+2][1]
        ].min
        dp[ptr+4][2] = [
            dp[ptr][i] + run + jump*3 + (act_3 ? hurdle : 0),
            dp[ptr+4][2]
        ].min
    end
end

# ジャンプ中に座標Lを通過する場合
ans = dp[L].dup
default = run/2 + jump/2
3.times do |i|
    ans << dp[L-1][i] + default
    ans << dp[L-2][i] + default + jump
    ans << dp[L-3][i] + default + jump*2
end

puts ans.min