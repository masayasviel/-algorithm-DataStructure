INF = 111 << 60
N = gets.chomp.to_i
left = Array.new(N, INF)
right = Array.new(N, -INF)

N.times do
    x, c = gets.chomp.split.map(&:to_i)
    c -= 1
    left[c] = x if x < left[c]
    right[c] = x if x > right[c]
end

d = [[0, 0]] # 存在する色のボールの、左端と右端のペア
N.times do |i|
    d << [left[i], right[i]] if left[i] != INF
end
d << [0, 0]

dp = Array.new(2, 0) # [左, 右]で終わったときの最小値
ds = d.size
(1...ds).each do |i|
    prev_dp = dp.dup
    dp = [INF, INF]
    l = d[i][0]
    r = d[i][1]
    2.times do |j|
        tmp = d[i-1][j]
        dp[0] = [dp[0], prev_dp[j] + (tmp-r).abs + (r-l)].min
        dp[1] = [dp[1], prev_dp[j] + (tmp-l).abs + (r-l)].min
    end
end

puts dp[0]