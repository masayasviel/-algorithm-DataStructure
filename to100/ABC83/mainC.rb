x, y = gets.chomp.split(" ").map(&:to_i)
ans = 0
while x <= y
    x *= 2
    ans += 1
end

puts ans