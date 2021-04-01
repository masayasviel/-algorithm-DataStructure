H, W, Y, X = gets.chomp.split.map(&:to_i)
maze = []
H.times do
    maze << gets.chomp.chars
end

ans = 1

x = X-1
# up
y = Y-2
loop do
    break if y < 0|| maze[y][x] == "#"
    ans += 1
    y -= 1
end

# down
y = Y
loop do
    break if H <= y || maze[y][x] == "#"
    ans += 1
    y += 1
end

y = Y-1
# left
x = X
loop do
    break if W <= x || maze[y][x] == "#"
    ans += 1
    x += 1
end

# right
x = X-2
loop do
    break if x < 0 || maze[y][x] == "#"
    ans += 1
    x -= 1
end

puts ans