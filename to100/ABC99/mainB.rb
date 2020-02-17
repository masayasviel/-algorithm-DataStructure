a, b = gets.chomp.split(" ").map(&:to_i)
sum = 0
(0..(b-a)).each do |i|
    sum += i
end

puts sum - b