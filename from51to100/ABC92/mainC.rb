n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
a.unshift(0)
a.push(0)
res = 0

(n+1).times do |i|
    res += (a[i] - a[i+1]).abs
end

1.upto(n) do |i|
    puts res + (a[i-1] - a[i+1]).abs - (a[i-1] - a[i]).abs - (a[i] - a[i+1]).abs
end