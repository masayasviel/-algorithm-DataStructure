# https://atcoder.jp/contests/abc072/tasks/abc072_b

s = gets.chomp.split("")
n = s.size

n.times do |i|
    print s[i] if i % 2 == 0
end