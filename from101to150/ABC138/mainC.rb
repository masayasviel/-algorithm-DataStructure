n = gets.chomp.to_i
v = gets.chomp.split(" ").map(&:to_i).sort
ans = v.reduce do |res, e|
    (res + e) / 2.0
end
puts ans