l, r, d = gets.chomp.split.map(&:to_i)
ans = 0
l.upto(r) do |i|
    ans += 1 if i % d == 0
end
puts ans