n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
h = Hash.new(0)
ans = 0
 
n.times do |i|
    li = i + a[i]
    ri = i - a[i]
    h[li] += 1
    ans += h[ri] if h.has_key?(ri)
    # p [ans, li, ri]
    # p h
end
 
puts ans