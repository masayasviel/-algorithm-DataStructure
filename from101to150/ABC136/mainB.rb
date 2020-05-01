n = gets.chomp.to_i
ans = 0
n.times do |i|
    ans += 1 if (i+1).to_s.size % 2 != 0
end
puts ans