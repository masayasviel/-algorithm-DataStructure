o = gets.chomp.split("")
e = gets.chomp.split("")
ans = []
o_index = e_index = 0
(o.size + e.size).times do |i|
    if i % 2 == 0
        ans << o[o_index]
        o_index += 1
    else
        ans << e[e_index]
        e_index += 1
    end
end

puts ans.join("")