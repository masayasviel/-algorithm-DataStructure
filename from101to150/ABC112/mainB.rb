n, t = gets.chomp.split(" ").map(&:to_i)
ans = 1 << 10

n.times do
    c, ti = gets.chomp.split(" ").map(&:to_i)
    ans = [ans, c].min if t >= ti
end

puts ans <= 1000 ? ans : "TLE"