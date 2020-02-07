n = gets.chomp.to_i
pi = []
n.times do
    pi << gets.chomp.to_i
end
puts pi.max/2 + pi.inject(:+) - pi.max