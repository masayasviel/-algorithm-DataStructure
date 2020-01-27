n, m = gets.chomp.split(" ").map(&:to_i)
coin = gets.chomp.split(" ").map(&:to_i)

INF = 1 << 25

dp = Array.new(n+1, INF)
dp[0] = 0

m.times do |i|
    j = 0
    while j + coin[i] <= n
        dp[j + coin[i]] = [dp[j + coin[i]], dp[j] + 1].min
        j += 1
    end
    print dp
    puts ""
end

puts dp[n]