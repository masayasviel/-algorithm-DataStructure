N = gets.chomp.to_i
pr = gets.chomp.split.map(&:to_f)
dp = Array.new(N+1).map{ Array.new(N+1, 0) }
dp[0][0] = 1.0
N.times do |i|
    (0..i).each do |j|
        dp[i+1][j+1] = dp[i][j] * pr[i]
        dp[i+1][j] += dp[i][j] * (1.0 - pr[i])
    end
end

ans = 0.0
((N/2+1)..N).each do |i|
    ans += dp[N][i]
end

puts ans