n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
dp = [0]
ans = 0
n.times do |i|
    dp << dp[i] + a[i]
end
n.times do |i|
    border_index = dp.bsearch_index{|x| x-dp[i] >= k}
    ans += n - border_index + 1 if border_index
end
puts ans