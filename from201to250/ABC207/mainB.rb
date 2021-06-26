a, b, c, d = gets.chomp.split.map(&:to_i)
if b >= c*d then
    puts -1
    exit
end
ans = 0
blue, red = a, 0
while blue > red * d do
    blue += b
    red += c
    ans += 1
end
puts ans