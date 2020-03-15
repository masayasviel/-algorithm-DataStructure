a, b = gets.chomp.split(" ").map(&:to_i)
ans = [a, b].max
if a > b
    a -= 1
else
    b -= 1
end
ans += [a, b].max
puts ans