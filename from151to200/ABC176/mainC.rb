n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
ans = 0
(1...n).each do |i|
    if a[i-1] > a[i] then
        ans += a[i-1] - a[i]
        a[i] = a[i-1]
    end
end
puts ans