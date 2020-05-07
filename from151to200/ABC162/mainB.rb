n = gets.chomp.to_i
ans = 0
(n+1).times do |i|
    next if i % 3 == 0 || i % 5 == 0
    ans += i
end
puts ans