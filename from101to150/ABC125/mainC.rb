n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

left = Array.new(n+1, 0)
right = Array.new(n+1, 0)
n.times do |i|
    left[i+1] = left[i].gcd(a[i])
end
(n-1).downto(0) do |i|
    right[i] = right[i+1].gcd(a[i])
end

ans = -1

n.times do |i|
    tmp = left[i].gcd(right[i+1])
    ans = tmp > ans ? tmp : ans
end

puts ans