x, y, a, b = gets.chomp.split.map(&:to_i)
ans = 0
while x*a < y && x * a < x + b do
    x *= a
    ans += 1
end

ans += (y-x) / b if x < y
ans -= 1 if (y-x) % b == 0

puts ans