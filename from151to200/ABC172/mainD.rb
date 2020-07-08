n = gets.chomp.to_i
ans = 0
(2..n).each do |i|
    y = n / i
    ans += i * y * (y + 1) / 2
end
ans += n * (n + 1) / 2
puts ans