# https://atcoder.jp/contests/abc158/tasks/abc158_b

n, a, b = gets.chomp.split(" ").map(&:to_i)
puts (n / (a+b)) * a + (n % (a+b) <= a ? n % (a+b) : a)