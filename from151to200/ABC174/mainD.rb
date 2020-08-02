n = gets.chomp.to_i
stone = gets.chomp.split("")
ans = 0

left = 0
right = n-1
while left < right do
    left += 1 while stone[left] == "R"
    right -= 1 while stone[right] == "W"
    if left < right then
        stone[left], stone[right] = "R", "W"
        ans += 1
    end
end

puts ans