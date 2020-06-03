n = gets.chomp.to_i
s = gets.chomp.split("")
ans = x = 0
s.each do |e|
    if e == "I" then
        x += 1
    else
        x -= 1
    end
    ans = ans > x ? ans : x
end
puts ans