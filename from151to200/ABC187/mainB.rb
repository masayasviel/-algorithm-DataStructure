n = gets.chomp.to_i
points = []
ans = 0
n.times do
    points << gets.chomp.split.map(&:to_f) # [x, y]
end

(n-1).times do |i|
    xi, yi = points[i]
    ((i+1)...n).each do |j|
        xj, yj = points[j]
        tmp = ((yj - yi) / (xj - xi)).abs
        ans += 1 if tmp <= 1
    end
end

puts ans