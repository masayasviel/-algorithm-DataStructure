x1, y1, x2, y2 = gets.chomp.split(" ").map(&:to_i)
ans = []
x = x2-x1
y = y2-y1

ans << x2-y
ans << y2+x
ans << ans[0]-x
ans << ans[1]-y

puts ans.join(" ")