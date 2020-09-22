# 一列に並んだNマスのマス目があって、マスには左から順番に1~Nの番号が付いている。
# 現在マス1にいて、被りのない正の整数の集合Sの中から一つ選んで(dとする)、i+dのマス目に移動できる。
# ただし、マス目の外には移動できない。Nマス目に到達する方法は何通りあるか？

n = gets.chomp.to_i
s = gets.chomp.split.map(&:to_i)
dp = Array.new(n+1, 0)
dp[1] = 1

(1..n).each do |i|
    s.each do |d|
        break if i+d > n
        dp[i+d] += dp[i]
    end
    p dp
end

puts dp[n]