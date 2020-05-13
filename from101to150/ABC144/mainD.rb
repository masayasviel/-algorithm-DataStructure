a, b, x = gets.chomp.split(" ").map(&:to_f)
theta = 0.0
capacity = a*a*b
if (capacity / 2.0) < x then
    theta = Math.atan(2.0 * (capacity-x) / (a*a*a))
else
    theta = Math.atan((a*b*b) / (2.0*x))
end

puts theta * 180.0 / Math::PI