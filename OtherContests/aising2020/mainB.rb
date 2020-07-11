n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
ans = 0

n.times do |i|
    ans += 1 if (a[i] & 1 == 1) && (i & 1 == 0)
end

puts ans