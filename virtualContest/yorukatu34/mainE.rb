# https://atcoder.jp/contests/abc073/tasks/abc073_d

n, m, r = gets.chomp.split(" ").map(&:to_i)
visit_town = gets.chomp.split(" ").map(&:to_i)
INF = 1 << 40
ans = INF
dist = Array.new(n).map{Array.new(n, INF)}
n.times do |i|
    dist[i][i] = 0
end

m.times do
    a, b, c = gets.chomp.split(" ").map(&:to_i)
    dist[a-1][b-1] = c
    dist[b-1][a-1] = c
end

n.times do |k|
    n.times do |i|
        n.times do |j|
            dist[i][j] = dist[i][k] + dist[k][j] if dist[i][j] > dist[i][k] + dist[k][j]
        end
    end
end

visit_town.permutation(r).each do |per|
    tmp = 0
    ptr = per[0]
    per.each do |node|
        tmp += dist[ptr-1][node-1]
        ptr = node
    end
    ans = ans > tmp ? tmp : ans
end

puts ans