n, gx, gy = gets.chomp.split(" ").map(&:to_i)
MAX_GRID = 411
ZEROTEN = MAX_GRID / 2
grid = Array.new(MAX_GRID).map{Array.new(MAX_GRID, ".")}
reach = Array.new(MAX_GRID).map{Array.new(MAX_GRID, nil)}
n.times do
    x, y = gets.chomp.split(" ").map(&:to_i)
    grid[y+ZEROTEN][x+ZEROTEN] = "#"
end

queue = [[ZEROTEN, ZEROTEN]]
reach[ZEROTEN][ZEROTEN] = 0
until queue.empty?
    x, y = queue.shift
    dist = reach[y][x]
    [
        [x+1, y+1],
        [x, y+1],
        [x-1, y+1],
        [x+1, y],
        [x-1, y],
        [x, y-1]
    ].each do |x, y|
        next if x < 0 || MAX_GRID <= x || y < 0 || MAX_GRID <= y || reach[y][x]
        if grid[y][x] == "#" then
            reach[y][x] = -1
            next
        end
        queue << [x, y]
        reach[y][x] = dist+1
    end
end

ans = reach[gy + ZEROTEN][gx + ZEROTEN]

puts ans ? ans : -1