n = gets.chomp.to_i
x = 1
y = 1
n.times do
    t, a = gets.chomp.split.map(&:to_i)
    m = [(x+t-1)/t, (y+a-1)/a].max
    x = t*m
    y = a*m
end
puts x+y