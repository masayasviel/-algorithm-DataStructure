k, n = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
sabun = []
(n-1).times do |i|
    sabun << a[i+1] - a[i]
end
puts [a[-1]-a[0], k-sabun.max].min