def prize(num)
    case num
    when 1
        return 300000
    when 2
        return 200000
    when 3
        return 100000
    else
        return 0
    end
end

x, y = gets.chomp.split.map(&:to_i)
if x == 1 && y == 1 then
    puts 1000000
else
    puts prize(x) + prize(y)
end