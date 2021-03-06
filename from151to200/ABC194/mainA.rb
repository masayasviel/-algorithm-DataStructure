a, b = gets.chomp.split.map(&:to_i)
res = -1

if a+b >= 15 && b >= 8 then
    res = 1
elsif a+b >= 10 && b >= 3 then
    res = 2
elsif a+b >= 3 then
    res = 3
else
    res = 4
end

puts res