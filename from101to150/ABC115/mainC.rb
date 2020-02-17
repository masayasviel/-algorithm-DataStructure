n, k = gets.chomp.split(" ").map(&:to_i)
h = []
ans = 1 << 30
n.times do
    h << gets.chomp.to_i
end
h.sort!
(n-k+1).times do |i|
    ans = [ans, h[i+k-1]-h[i]].min
end
puts ans