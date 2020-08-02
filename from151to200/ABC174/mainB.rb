n, d = gets.chomp.split.map(&:to_i)
ans = 0
n.times do
    x, y = gets.chomp.split.map(&:to_i)
    ans += 1 if Math.sqrt(x*x + y*y) <= d
end
puts ans