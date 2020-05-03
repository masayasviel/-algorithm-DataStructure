x = gets.chomp.to_i
ans = 0
money = 100
while x > money
    money += money/100
    ans += 1
end

puts ans