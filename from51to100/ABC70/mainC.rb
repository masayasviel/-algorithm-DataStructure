n = gets.chomp.to_i
ans = 1
n.times{ans = gets.chomp.to_i.lcm(ans)}
puts ans