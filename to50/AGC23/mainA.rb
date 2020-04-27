n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
s = [0]
n.times do |i|
    s << s[i] + a[i]
end

h = Hash.new(0)
ans = 0

s.each do |i|
    h[i] += 1
end

h.each do |key, value|
    ans += value * (value-1) / 2 if 2 <= value
end
puts ans