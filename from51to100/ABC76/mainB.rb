n = gets.chomp.to_i
k = gets.chomp.to_i
ans = 1
n.times do
    if ans * 2 < ans + k
        ans *= 2
    else
        ans += k
    end
end
puts ans