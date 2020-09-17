# https://atcoder.jp/contests/nikkei2019-qual/tasks/nikkei2019_qual_a

n, a, b = gets.chomp.split.map(&:to_i)
puts [[a, b].min, [(a+b)-n, 0].max].join(" ")