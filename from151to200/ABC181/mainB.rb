n = gets.chomp.to_i
ans = 0
n.times do
    a, b = gets.chomp.split.map(&:to_i)
    ans += b*(b+1)/2 - a*(a+1)/2 + a
end
puts ans