n, a, b = gets.chomp.split(" ").map(&:to_i)
ans = 0
(1..n).each do |i|
    ranksSum = i.to_s.split("").map(&:to_i).inject(:+)
    ans += i if a <= ranksSum && ranksSum <= b
end

puts ans