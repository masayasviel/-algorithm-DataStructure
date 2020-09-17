# https://atcoder.jp/contests/abc064/tasks/abc064_b

n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
puts a.max - a.min