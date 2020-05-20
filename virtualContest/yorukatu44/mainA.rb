# https://atcoder.jp/contests/abc058/tasks/abc058_a

a, b, c = gets.chomp.split(" ").map(&:to_i)
puts b-a == c-b ? "YES" : "NO"