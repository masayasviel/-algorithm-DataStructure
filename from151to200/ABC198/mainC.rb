R, X, Y = gets.chomp.split.map(&:to_i)
destination_r = Math.sqrt(X * X + Y * Y)

if destination_r % R == 0 then
    puts (destination_r / R).floor
else
    if destination_r < R then
        puts 2
    else
        puts (destination_r / R).floor + 1
    end
end