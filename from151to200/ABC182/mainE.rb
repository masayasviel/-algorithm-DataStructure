h, w, n, m = gets.chomp.split.map(&:to_i)
lights = []
rows = Array.new(h).map{Array.new(w, :dark)}
columns = Array.new(h).map{Array.new(w, :dark)}

n.times do
    y, x = gets.chomp.split.map{|i| i.to_i - 1}
    lights << [x, y]
end

m.times do
    y, x = gets.chomp.split.map{|i| i.to_i - 1}
    rows[y][x] = :block
    columns[y][x] = :block
end

# left-right
lights.each do |lr_x, lr_y|
    next if rows[lr_y][lr_x] == :bright
    # left
    lr_x.downto(0) do |x|
        break if rows[lr_y][x] == :block
        rows[lr_y][x] = :bright
    end
    # right
    lr_x.upto(w-1) do |x|
        break if rows[lr_y][x] == :block
        rows[lr_y][x] = :bright
    end
    # self
    rows[lr_y][lr_x] = :bright
end

# up-down
lights.each do |ud_x, ud_y|
    next if columns[ud_y][ud_x] == :bright
    # up
    ud_y.downto(0) do |y|
        break if columns[y][ud_x] == :block
        columns[y][ud_x] = :bright
    end
    # down
    ud_y.upto(h-1) do |y|
        break if columns[y][ud_x] == :block
        columns[y][ud_x] = :bright
    end
    # self
    columns[ud_y][ud_x] = :bright
end

ans = 0
h.times do |y|
    w.times do |x|
        ans += 1 if columns[y][x] == :bright || rows[y][x] == :bright
    end
end

puts ans