n = gets.chomp.split("").map(&:to_i).map{|i| i % 3}
ns = n.size
two = n.count(2)
one = n.count(1)
ans = (two-one).abs % 3
if one != 0 && one % 3 == 0 then
    puts [ans, two%3].min
elsif two != 0 && two % 3 == 0 then
    puts [ans, one%3].min
else
    if ans == ns then
        puts -1
    else
        puts ans
    end
end