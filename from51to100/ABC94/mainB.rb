n, m, x = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
left = right = 0
a.each do |i|
    left += 1 if x > i
    right += 1 if x < i
end
puts left < right ? left : right