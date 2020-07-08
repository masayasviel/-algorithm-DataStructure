n, k = gets.chomp.split(" ").map(&:to_i)
x = gets.chomp.split(" ").map(&:to_i).sort
ans = 0
k.times do |i|
    ans += x[i]
end
puts ans