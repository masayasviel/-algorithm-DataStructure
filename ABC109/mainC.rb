n, x = gets.chomp.split(" ").map(&:to_i)
xi = gets.chomp.split(" ").map(&:to_i)
result = xi.map do |i|
    (i - x).abs
end
ans = result.reduce do |a, b|
    a.gcd(b)
end
puts ans