n = gets.chomp.to_i
x = y = t = 0
n.times do
    ti, xi, yi = gets.chomp.split(" ").map(&:to_i)
    x = (x - xi).abs
    y = (y - yi).abs
    isOk = ti - t - (x + y)
    if isOk != 0 && isOk % 2 != 0 || isOk < 0
        puts "No"
        exit
    end
    x, y, t = xi, yi, ti
end
puts "Yes"