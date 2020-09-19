n = gets.chomp.to_i
ans = false
res = 0
n.times do
    d_1, d_2 = gets.chomp.split.map(&:to_i)
    if d_1 == d_2 then
        res += 1
        ans = true if res >= 3
    else
        res = 0
    end
end
puts ans ? "Yes" : "No"