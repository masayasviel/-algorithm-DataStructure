n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
s = a.inject(:+)
tmp = 0
1.step(n-2, 2) do |i|
    tmp += a[i]
end
ans = [s-2*tmp]

(n-1).times do |i|
    ans << 2 * a[i] - ans[i]
end

puts ans.join(" ")