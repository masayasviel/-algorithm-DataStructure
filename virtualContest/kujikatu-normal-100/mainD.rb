# https://atcoder.jp/contests/code-festival-2016-qualc/tasks/codefestival_2016_qualC_b

k, t = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
a_max = a.max
puts [0, a_max-1-(k-a_max)].max