n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
a.unshift(0)
ans = 1000
(1...n).each do |i|
    have_stock = 0
    have_stock = ans / a[i] if a[i] < a[i+1]
    ans += (a[i+1]- a[i]) * have_stock
end
puts ans