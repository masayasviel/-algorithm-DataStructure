a, b, c, x, y = gets.chomp.split(" ").map(&:to_i)
ans = 0

while x > 0 || y > 0 do
    if x > 0 && y > 0 then
        if a+b > c*2 then
            ans += c*2
            x -= 1
            y -= 1
        else
            if a < b then
                ans += a
                x -= 1
            else
                ans += b
                y -= 1
            end
        end
    elsif x > 0 && y <= 0 then
        if a < c*2 then
            ans += a
            x -= 1
        else
            ans += c*2
            x -= 1
        end
    else
        if b < c*2 then
            ans += b
            y -= 1
        else
            ans += c*2
            y -= 1
        end
    end
end

puts ans