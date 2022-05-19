N = gets.chomp.to_i
coordinate = N.times.map{gets.chomp.split.map(&:to_i)}  # [x, y]
ans = 0.0

coordinate.each do |ax, ay|
    coordinate.each do |bx, by|
        ans = [ans, Math.sqrt((ax-bx)**2 + (ay-by)**2)].max
    end
end

puts ans