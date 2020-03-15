n = gets.chomp.to_i
l = [2, 1]
85.times do |i|
    l << l[i] + l[i+1]
end

puts l[n]