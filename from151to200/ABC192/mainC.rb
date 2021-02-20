n, k = gets.chomp.split.map(&:to_i)
ans = n
k.times do |i|
    u = ans.digits.sort
    d = u.reverse
    ans = d.join("").to_i - u.join("").to_i
end
puts ans