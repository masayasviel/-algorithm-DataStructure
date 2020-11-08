n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
ruiseki = [0]
n.times do |i|
    ruiseki << ruiseki[i] + a[i]
end
 
dp = [0]
(1..n).each do |i|
    dp << dp[i-1] + ruiseki[i]
end
 
ans = 0
ruiseki_max = 0
dp_max = 0
 
(1..n).each do |i|
    ruiseki_max = ruiseki[i] if ruiseki[i] > ruiseki_max
    tmp = ruiseki_max + dp[i-1]
    ans = tmp if tmp > ans
end
 
puts ans