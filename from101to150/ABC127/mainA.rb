a, b = gets.chomp.split(" ").map(&:to_i)
ans = b
if 6 <= a && a <= 12
    ans /= 2
elsif a <= 5
    ans = 0
end

puts ans