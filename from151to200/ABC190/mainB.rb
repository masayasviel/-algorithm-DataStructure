n, s, d = gets.chomp.split.map(&:to_i)
ans = false
n.times do
    x, y = gets.chomp.split.map(&:to_i)
    ans = true if x < s && y > d
end
puts ans ? "Yes" : "No"