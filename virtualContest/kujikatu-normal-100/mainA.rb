# https://atcoder.jp/contests/abc178/tasks/abc178_b

a, b, c, d = gets.chomp.split.map(&:to_i)
ans = []
ans << a*c
ans << a*d
ans << b*c
ans << b*d
puts ans.max