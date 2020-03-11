x = gets.chomp.to_i
ans = 0
pos = 0

while pos < x
    ans += 1
    pos += ans
end

puts ans