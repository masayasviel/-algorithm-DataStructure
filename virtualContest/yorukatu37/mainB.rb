# https://atcoder.jp/contests/abc115/tasks/abc115_c

n, k = gets.chomp.split(" ").map(&:to_i)
h = []
n.times do
    h << gets.chomp.to_i
end
h.sort!
ans = 1 << 40

(n-k+1).times do |i|
    tmp = h[i+k-1] - h[i]
    ans = ans > tmp ? tmp : ans
end

puts ans