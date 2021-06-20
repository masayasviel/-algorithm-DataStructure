INF = 1 << 50
N = gets.chomp.to_i
h = gets.chomp.split.map(&:to_i)
dp = Array.new(N+5, INF)
dp[0] = 0

N.times do |i|
    # cur + 1
    dp[i+1] = [
        dp[i+1],
        (h[i+1]-h[i]).abs + dp[i]
    ].min if i+1 < N
    # cur + 2
    dp[i+2] = [
        dp[i+2],
        (h[i+2]-h[i]).abs + dp[i]
    ].min if i+2 < N
end

puts dp[N-1]