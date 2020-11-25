# https://atcoder.jp/contests/abc086/tasks/arc089_a

n = gets.chomp.to_i
ct, cx, cy = 0, 0, 0
ans = true

n.times do
    ti, xi, yi = gets.chomp.split.map(&:to_i)
    t, x, y = ti-ct, (cx-xi).abs, (cy-yi).abs
    ct, cx, cy = ti, xi, yi
    next if t == x+y
    ans = false if x+y > t
    ans = false if (t-(x+y)) % 2 != 0
end

puts ans ? "Yes" : "No"