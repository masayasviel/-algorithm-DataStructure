h, w = gets.chomp.split(" ").map(&:to_i)
c = []
10.times do
    c << gets.chomp.split(" ").map(&:to_i)
end
a = []
h.times do
    a << gets.chomp.split(" ").map(&:to_i)
end
10.times do |k|
    10.times do |i|
        10.times do |j|
            c[i][j] = [c[i][j], c[i][k] + c[k][j]].min
        end
    end
end
ans = 0
a.each do |arr|
    arr.each do |e|
        next if e == -1 || e == 1
        ans += c[e][1]
    end
end
puts ans