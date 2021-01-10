h, w = gets.chomp.split.map(&:to_i)
grid = []
min_size = 114514
h.times do
    row = gets.chomp.split.map(&:to_i)
    min_size = [min_size, row.min].min
    grid << row
end
ans = 0
grid.each do |line|
    line.each do |elm|
        ans += elm - min_size
    end
end
puts ans