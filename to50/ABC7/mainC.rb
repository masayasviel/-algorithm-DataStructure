row, column = gets.chomp.split(" ").map(&:to_i)
sy, sx = gets.chomp.split(" ").map(&:to_i)
gy, gx = gets.chomp.split(" ").map(&:to_i)
maze = []
row.times do
    maze << gets.chomp.split("")
end
queue = [[sx-1, sy-1]]
reach = Array.new(row).map{Array.new(column, nil)}
reach[sy-1][sx-1] = 0
until queue.empty?
    x, y = queue.shift
    dist = reach[y][x]
    [
        [x-1, y],
        [x+1, y],
        [x, y-1],
        [x, y+1]
    ].each do |x, y|
        next if reach[y][x]
        if maze[y][x] == "#" then
            reach[y][x] = -1
            next
        end
        queue << [x, y]
        reach[y][x] = dist+1
    end
end

puts reach[gy-1][gx-1]