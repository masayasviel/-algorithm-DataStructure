# https://atcoder.jp/contests/abc070/tasks/abc070_c

n = gets.chomp.to_i
ans = 1
n.times{ans = gets.chomp.to_i.lcm(ans)}
puts ans