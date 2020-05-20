# https://atcoder.jp/contests/arc093/tasks/arc093_a

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
sa = [0]
a.unshift(0)
a << 0
res = 0
(n+1).times do |i|
    tmp = (a[i] - a[i+1]).abs
    sa << tmp
    res += tmp
end

1.upto(n-1) do |i|
    puts res - sa[i] - sa[i+1] + (a[i-1] - a[i+1]).abs
end
puts res - sa[n] - sa[n+1] + (a[-3]).abs