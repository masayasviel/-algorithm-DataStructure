n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
left = 0
right = a.max

while (right-left).abs > 1 do
    mid = (right + left) / 2
    c = 0
    n.times do |i|
        c += (a[i] + (mid-1)) / mid - 1
    end
    if c <= k then
        right = mid
    else
        left = mid
    end
end

puts right