n = gets.chomp.to_i
ans = false
(1..9).each do |i|
    (1..9).each do |j|
        ans = true if i*j == n
    end
end

puts ans ? "Yes" : "No"