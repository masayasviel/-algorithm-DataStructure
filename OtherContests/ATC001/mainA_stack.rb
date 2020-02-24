h, w = gets.chomp.split(" ").map(&:to_i)
maze = []
reached = Array.new(h).map{Array.new(w, false)}

h.times do
    maze << gets.chomp.split("")
end

start = goal = nil

h.times do |y|
    w.times do |x|
        if maze[y][x] == "s" then
            start = [x, y]
        elsif maze[y][x] == "g" then
            goal = [x, y]
        end
    end
end

stack = [start]

until stack.empty?
    x, y = stack.pop
    [
        [x-1, y],
        [x+1, y],
        [x, y-1],
        [x, y+1]
    ].each do |x, y|
        next if x < 0 || w <= x || y < 0 || h <= y || maze[y][x] == "#"
        next if reached[y][x]
        stack << [x, y]
        reached[y][x] = true
    end
end

gx, gy = goal

if reached[gy][gx] then
    puts "Yes"
else
    puts "No"
end