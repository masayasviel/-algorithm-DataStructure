n = gets.chomp.to_i
s = 0
x = []
n.times do
    a, b = gets.chomp.split.map(&:to_i)
    s -= a
    x << (2 * a + b)
end
x.sort!
ans = 0
while s <= 0 do
    s += x.pop
    ans += 1
end
puts ans