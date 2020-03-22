n, m, pp = gets.chomp.split(" ").map(&:to_i)
r = 1
while pp > 0
    r = (r*n) % m if pp&1 == 1
    n = (n*n) % m
    pp = pp >> 1
end
puts r