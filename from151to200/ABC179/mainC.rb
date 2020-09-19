n = gets.chomp.to_i
ans = 0
(1...n).each do |i|
    ans += n/i
    ans -= 1 if n % i == 0
end
puts ans