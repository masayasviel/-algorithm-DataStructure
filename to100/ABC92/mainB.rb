n = gets.chomp.to_i
d, x = gets.chomp.split(" ").map(&:to_i)
ans = x + n

n.times do
    a = gets.chomp.to_i
    i = 1
    while a*i+1 <= d do
        ans += 1
        i += 1
    end
end

puts ans