sx, sy = gets.chomp.split.map(&:to_i)
gx, gy = gets.chomp.split.map(&:to_i)

def check_term(a, b, c, d)
    term1 = a+b == c+d
    term2 = a-b == c-d
    term3 = (a-c).abs + (b-d).abs <= 3
    return term1 || term2 || term3
end

if sx == gx && sy == gy then
    puts 0
elsif check_term(sx, sy, gx, gy) then
    puts 1
else
    flag = (sx+sy) % 2 == (gx+gy) % 2
    (-3..3).each do |i|
        (-3..3).each do |j|
            flag = true if i.abs + j.abs <= 3 && check_term(sx+j, sy+i, gx, gy)
        end
    end
    puts flag ? 2 : 3
end