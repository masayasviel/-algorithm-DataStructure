# https://atcoder.jp/contests/abc121/tasks/abc121_c

n, m = gets.chomp.split(" ").map(&:to_i)
inputs = []
ans = 0
n.times do
    inputs << gets.chomp.split(" ").map(&:to_i)
end
inputs.sort!{|x, y| x[0] <=> y[0]}

inputs.each do |a, b|
    tmp = m > b ? b : m
    ans += a * tmp
    m -= b
    break if m <= 0
end

puts ans