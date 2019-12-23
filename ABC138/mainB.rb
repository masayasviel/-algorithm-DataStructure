n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
ans = 0
a.each do |i|
    ans += 1.0/i
end
puts 1.0/ans