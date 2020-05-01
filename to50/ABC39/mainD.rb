h, w = gets.chomp.split(" ").map(&:to_i)
rear = []
prev = Array.new(h).map{Array.new(w, "#")}
new_rear = Array.new(h).map{Array.new(w, ".")}
ans = true
h.times do
    rear << gets.chomp.split("")
end

h.times do |row|
    w.times do |column|
        if rear[row][column] == "." then
            prev[row][column] = "."
            [
                [row-1, column],
                [row+1, column],
                [row, column-1],
                [row, column+1],
                [row-1, column-1],
                [row+1, column+1],
                [row+1, column-1],
                [row-1, column+1],
            ].each do |y, x|
                next if x < 0 || w <= x || y < 0 || h <= y
                prev[y][x] = "."
            end
        end
    end
end

h.times do |row|
    w.times do |column|
        if prev[row][column] == "#" then
            new_rear[row][column] = "#"
            [
                [row-1, column],
                [row+1, column],
                [row, column-1],
                [row, column+1],
                [row-1, column-1],
                [row+1, column+1],
                [row+1, column-1],
                [row-1, column+1],
            ].each do |y, x|
                next if x < 0 || w <= x || y < 0 || h <= y
                new_rear[y][x] = "#"
            end
        end
    end
end

h.times do |row|
    w.times do |column|
        if rear[row][column] != new_rear[row][column]
            puts "impossible"
            exit
        end
    end
end

puts "possible"

prev.each do |line|
    puts line.join("")
end