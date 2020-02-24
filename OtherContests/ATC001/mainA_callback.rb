ENV[Z='RUBY_THREAD_VM_STACK_SIZE']||exec({Z=>'50000000'},'ruby',$0)

def search(x, y)
    return if x < 0 || $w <= x || y < 0 || $h <= y || $maze[y][x] == "#"
    return if $reached[y][x]

    $reached[y][x] = true

    # 4方向(左右上下)
    search(x-1, y)
    search(x+1, y)
    search(x, y-1)
    search(x, y+1)
end

$h, $w = gets.chomp.split(" ").map(&:to_i)
$maze = []
$reached = Array.new($h).map{Array.new($w, false)}
$h.times do
    $maze << gets.chomp.split("")
end

sx, sy, gx, gy = 0, 0, 0, 0

$h.times do |y|
    $w.times do |x|
        if $maze[y][x] == "s" then
            sx = x
            sy = y
        elsif $maze[y][x] == "g" then
            gx = x
            gy = y
        end
    end
end

search(sx, sy)

if $reached[gy][gx] then
    puts "Yes"
else
    puts "No"
end