n = gets.chomp.to_i
h = gets.chomp.split.map(&:to_i).reverse
dp = Array.new(n, 0)
(n-1).times do |i|
    if h[i] <= h[i+1] then
        dp[i] = dp[i-1] + 1
    else
        dp[i] = 0
    end
end

puts dp.max