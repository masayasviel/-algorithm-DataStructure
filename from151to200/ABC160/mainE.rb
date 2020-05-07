x, y, a, b, c = gets.chomp.split(" ").map(&:to_i)
red = gets.chomp.split(" ").map(&:to_i).sort.reverse
green = gets.chomp.split(" ").map(&:to_i).sort.reverse
colorless = gets.chomp.split(" ").map(&:to_i).sort
red = red[0...x]
green = green[0...y]
ans = 0
c.times do
    if !red.empty? && !green.empty? 
        break if red[-1] > colorless[-1] && green[-1] > colorless[-1]
        if red[-1] > green[-1]
            ans += [green.pop, colorless.pop].max
        else
            ans += [red.pop, colorless.pop].max
        end
    else
        break if red.empty? && green.empty?
        if red.empty?
            break if green[-1] > colorless[-1]
            ans += [green.pop, colorless.pop].max
        else
            break if red[-1] > colorless[-1]
            ans += [red.pop, colorless.pop].max
        end
    end
end
ans += red.inject(:+) if !red.empty?
ans += green.inject(:+) if !green.empty?
puts ans