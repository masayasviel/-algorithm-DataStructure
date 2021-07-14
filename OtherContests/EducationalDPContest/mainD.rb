N, W = gets.chomp.split.map(&:to_i)
dp = Array.new(N).map{ Array.new(W+1, -1) }

N.times do |i|
    dp[i][0] = 0
    w, v = gets.chomp.split.map(&:to_i)
    if i == 0 then
        dp[i][w] = v
        next
    end
    W.times do |j|
        dp[i][j] = [dp[i-1][j], dp[i][j]].max
        if j+w <= W then
            dp[i][j+w] = [dp[i-1][j+w], dp[i-1][j]+v].max
        end
    end
end

puts dp[N-1].compact.max