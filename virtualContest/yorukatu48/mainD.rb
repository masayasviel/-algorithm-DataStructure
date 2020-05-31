# https://atcoder.jp/contests/abc160/tasks/abc160_d

n, x, y = gets.chomp.split(" ").map(&:to_i)
ans = Array.new(n, 0)
graph = Array.new(n).map{Array.new}
graph[x-1] << y-1
graph[y-1] << x-1
(n-1).times do |i|
    graph[i] << i+1
    graph[i+1] << i
end

n.times do |i|
    dist = Array.new(n, -1)
    dist[i] = 0
    queue = [i]
    until queue.empty?
        v = queue.shift
        graph[v].each do |e|
            next if dist[e] != -1
            dist[e] = dist[v] + 1
            queue << e
        end
    end
    dist.each do |d|
        ans[d] += 1
    end
end

ans.shift
ans = ans.map{|v| v/2}

puts ans.join("\n")