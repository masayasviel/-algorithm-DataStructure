sx, sy, gx, gy = gets.chomp.split.map(&:to_f)
ans = (sy*gx+gy*sx) / (gy+sy)
puts ans