n, m = gets.chomp.split(" ").map(&:to_i)
dist = Array.new(n, -1)
dist[0] = 0
queue = [0]
inputs = Array.new(n).map{Array.new}
m.times do
    a, b = gets.chomp.split(" ").map(&:to_i)
    inputs[a-1] << b-1
    inputs[b-1] << a-1
end
until queue.empty?
    island = queue.shift
    inputs[island].each do |v|
        next if dist[v] != -1
        dist[v] = dist[island] + 1
        queue << v
    end
end

puts dist[n-1] == 2 ? "POSSIBLE" : "IMPOSSIBLE"