rs = gets.chomp.to_i.digits
s = rs.reverse
tail_zero_num = 0

rs.each do |i|
    if i == 0 then
        tail_zero_num += 1
    else
        break
    end
end

tail_zero_num.times do
    rs << 0 
end

s = rs.reverse.join("")
rs = rs.join("")

puts s == rs ? "Yes" : "No"