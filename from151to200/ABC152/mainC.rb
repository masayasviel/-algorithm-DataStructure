n = gets.chomp.to_i
per = gets.chomp.split.map(&:to_i)
current = 200010
ans = 0

per.each do |i|
    if current > i then
        current = i
        ans += 1
    end
end

puts ans