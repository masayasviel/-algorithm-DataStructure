k = gets.chomp.to_i
ans = -1
num = 0

(k+1).times do |i|
    num = (num*10 + 7) % k
    if num == 0 then
        ans = i+1
        break
    end
end

puts ans