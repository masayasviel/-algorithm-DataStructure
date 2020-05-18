a, b, h, m = gets.chomp.split(" ").map(&:to_i)

between_corner = ((30 * h + 0.5 * m)  - 6.0 * m).abs
theta = between_corner * Math::PI / 180.0
ans = a*a + b*b - 2.0 * a * b * Math.cos(theta)

puts Math.sqrt(ans)