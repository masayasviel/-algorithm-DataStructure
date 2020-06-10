n, m, q = gets.chomp.split(" ").map(&:to_i)
graph = Array.new(n).map{Array.new}
ans = []
m.times do
    a, b = gets.chomp.split(" ").map(&:to_i)
    graph[a-1] << b-1
    graph[b-1] << a-1
end
nodes_color = gets.chomp.split(" ").map(&:to_i)
q.times do
    s = gets.chomp
    if s[0] == "1" then
        _, x = s.split(" ").map(&:to_i)
        ans << nodes_color[x-1]
        graph[x-1].each do |v|
            nodes_color[v] = nodes_color[x-1]
        end
    else
        _, x, y = s.split(" ").map(&:to_i)
        ans << nodes_color[x-1]
        nodes_color[x-1] = y
    end
end

puts ans.join("\n")