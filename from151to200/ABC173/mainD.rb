n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i).sort.reverse
ans = a[0]
idx = 1
(n-2).times do |i|
    ans += a[idx]
    idx += 1 if i & 1 == 1
end

puts ans