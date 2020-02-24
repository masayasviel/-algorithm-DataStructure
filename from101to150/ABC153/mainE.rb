h, n = gets.chomp.split(" ").map(&:to_i)
INF = 1 << 40
ans = Array.new(h+1, INF)
ans[0] = 0
ab = []

n.times do
    ab << gets.chomp.split(" ").map(&:to_i)
end

ab.each do |a, b|
    (h+1).times do |i|
        m = i+a > h ? h : i+a
        ans[m] = ans[i] + b if ans[m] > ans[i] + b
    end
end

puts ans[h]