def istriangle(a, b, c)
    return a+b > c && b+c > a && c+a > b
end

n = gets.chomp.to_i
l = gets.chomp.split(" ").map(&:to_i)
ans = 0

n.times do |i|
    (i...n).each do |j|
        (j...n).each do |k|
            next if i == j || j == k || k == i
            next if l[i] == l[j] || l[j] == l[k] || l[k] == l[i]
            ans += 1 if istriangle(l[i], l[j], l[k])
        end
    end
end

puts ans