L = gets.chomp.to_i
ans = 1
(1..11).each do |i|
    ans *= L-i
end
(2..11).each do |i|
    ans /= i
end
puts ans