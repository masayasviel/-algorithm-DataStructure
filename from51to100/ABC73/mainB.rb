n = gets.chomp.to_i
ans = 0
n.times do
    l, r = gets.chomp.split(" ").map(&:to_i)
    ans += r-l+1
end

puts ans