s = gets.chomp
t = gets.chomp
n = s.size
ans = 0
n.times do |i|
    ans += 1 if s[i] != t[i]
end
puts ans