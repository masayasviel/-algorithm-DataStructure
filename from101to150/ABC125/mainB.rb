n = gets.chomp.to_i
value = gets.chomp.split(" ").map(&:to_i)
cost = gets.chomp.split(" ").map(&:to_i)
ans = 0
n.times do |i|
    tmp = value[i] - cost[i]
    if tmp >= 0 then
        ans += tmp
    end
end
puts ans