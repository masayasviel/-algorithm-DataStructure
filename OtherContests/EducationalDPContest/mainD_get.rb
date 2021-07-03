N, W = gets.chomp.split.map(&:to_i)
dp = Array.new(N+1) { Array.new(W+10, 0) }

N.times do |i|
    w, v = gets.chomp.split.map(&:to_i)
    (W+1).times do |j|
        if j - w >= 0 then
            dp[i+1][j] = [dp[i+1][j], dp[i][j-w] + v].max
        end
        dp[i+1][j] = [dp[i+1][j], dp[i][j]].max
    end
end

puts dp[N][W]