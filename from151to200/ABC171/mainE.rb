n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
xor_sum = a[0]
(1...n).each do |i|
    xor_sum ^= a[i]
end
ans = []
a.each do |num|
    ans << (xor_sum ^ num)
end
puts ans.join(" ")