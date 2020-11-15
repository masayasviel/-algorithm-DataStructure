h, w = gets.chomp.split.map(&:to_i)
grid = []
h.times do
    grid << gets.chomp.split("")
end

is_all_white_row = []
grid.each do |row|
    is_all_white_row << row.all?{|r| r == "."}
end

is_all_white_column = []
t_grid = grid.transpose
t_grid.each do |column|
    is_all_white_column << column.all?{|c| c == "."}
end

ans = []
h.times do |y|
    tmp = []
    w.times do |x|
        next if is_all_white_column[x] || is_all_white_row[y]
        tmp << grid[y][x]
    end
    ans << tmp.join("") unless tmp.empty?
end

puts ans.join("\n")