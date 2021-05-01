s = gets.chomp
ans = 0
9.times do |i|
    tmp = s[i..(i+3)]
    if tmp == "ZONe" then
        ans += 1
    end
end

puts ans