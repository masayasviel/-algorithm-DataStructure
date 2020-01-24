n, m, x, y = gets.chomp.split(" ").map(&:to_i)
xMax = gets.chomp.split(" ").map(&:to_i).max
yMin = gets.chomp.split(" ").map(&:to_i).min

xy = x < yMin && y >= yMin
isLessThanY = xMax < yMin

if xy && isLessThanY then
    puts "No War"
else
    puts "War"
end