n = gets.chomp.to_i
h = Hash.new(0)
n.times do
    s = gets.chomp
    h[s] += 1
end
puts h.size