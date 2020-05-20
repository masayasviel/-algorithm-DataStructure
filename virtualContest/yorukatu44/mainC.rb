# https://atcoder.jp/contests/abc130/tasks/abc130_c

w, h, x, y = gets.chomp.split(" ").map(&:to_f)

ans_1 = w * h / 2.0
ans_2 = x*2.0 == w && y*2.0 == h

puts [ans_1, (ans_2 ? 1 : 0)].join(" ")