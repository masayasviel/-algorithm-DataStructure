N = gets.chomp.to_i
dp = Array.new(N+1).map { Array.new(3) } # dp[i][a=0 | b=1 | c=2]
3.times do |i|
    dp[0][i] = 0
end

N.times do |i|
    a, b, c = gets.chomp.split.map(&:to_i)
    dp[i+1][0] = [dp[i][1]+a, dp[i][2]+a].max
    dp[i+1][1] = [dp[i][0]+b, dp[i][2]+b].max
    dp[i+1][2] = [dp[i][0]+c, dp[i][1]+c].max
end

puts dp[N].max