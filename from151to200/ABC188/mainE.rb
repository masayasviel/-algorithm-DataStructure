INF = 1 << 50
n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
dp = Array.new(n, INF)
graph = Array.new(n).map{Array.new}

m.times do
    x, y = gets.chomp.split.map{|it| it.to_i - 1}
    graph[x] << y
end

n.times do |i|
    graph[i].each do |j|
        dp[j] = [dp[j], dp[i], a[i]].min
    end
end

ans = -INF

n.times do |i|
    tmp = a[i] - dp[i]
    ans = tmp if ans < tmp
end

puts ans