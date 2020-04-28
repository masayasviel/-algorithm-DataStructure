n = gets.chomp.to_i
d = gets.chomp.split(" ").map(&:to_i)
ans = 0
n.times do |i|
    res = 0
    n.times do |j|
        next if i == j
        res += d[j]
    end
    ans += res * d[i]
end
puts ans/2