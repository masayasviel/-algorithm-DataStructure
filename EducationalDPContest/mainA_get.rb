INF = 1 << 50
N = gets.chomp.to_i
h = gets.chomp.split.map(&:to_i)
dp = Array.new(N+1, INF)
dp[0] = dp[1] = 0
dp[2] = (h[1] - h[0]).abs

(3..N).each do |cur|
    dp[cur] = [
        dp[cur],
        (h[cur-1] - h[cur-3]).abs + dp[cur-2],
        (h[cur-1] - h[cur-2]).abs + dp[cur-1]
    ].min
end

puts dp[N]