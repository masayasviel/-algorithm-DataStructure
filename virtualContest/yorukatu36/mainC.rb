# https://atcoder.jp/contests/abc068/tasks/arc079_a

n, m = gets.chomp.split(" ").map(&:to_i)
graph = Array.new(n).map{Array.new}
m.times do
    a, b = gets.chomp.split(" ").map(&:to_i)
    graph[a-1] << b-1
    graph[b-1] << a-1
end

dist = Array.new(n, -1)
dist[0] = 0
queue = [0]

until queue.empty?
    v = queue.shift
    graph[v].each do |i|
        next if dist[i] != -1
        dist[i] = dist[v] + 1
        queue << i
    end
end

puts dist[n-1] == 2 ? "POSSIBLE" : "IMPOSSIBLE"