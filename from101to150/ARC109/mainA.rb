a, b, x, y = gets.chomp.split.map(&:to_i)

ab = (a-b).abs

ans1 = ab * y + x

if a == b then
    puts x
elsif a < b then
    if ab & 1 == 1 then
        ans2 = ab*x*2 + x
    else
        ans2 = ab*x*2
    end
    puts [ans1, ans2].min
else
    if ab & 1 == 1 then
        ans2 = ab*x*2 - x
        ans3 = ab*x*2 - x*3 + y
    else
        ans2 = ab*x*2 - x
        ans3 = ab*y - y + x
    end
    puts [ans1, ans2, ans3].min
end