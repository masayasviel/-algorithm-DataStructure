n, m = gets.chomp.split(" ").map(&:to_i)
ans = Array.new(n, -1)
graph = Array.new(n).map{Array.new()}

m.times do
    a, b = gets.chomp.split(" ").map(&:to_i)
    graph[a-1] << b-1
    graph[b-1] << a-1
end

queue = [0]
ans[0] = 0

until queue.empty?
    v = queue.shift
    graph[v].each do |i|
        next if ans[i] != -1
        ans[i] = v
        queue << i
    end
end

ans.shift

if ans.include?(-1) then
    puts "No"
else
    puts "Yes"
    puts ans.map{|v| v + 1}.join("\n")
end