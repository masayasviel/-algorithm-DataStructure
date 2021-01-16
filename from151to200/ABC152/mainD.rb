n = gets.chomp.to_i
c = Array.new(11).map{Array.new(11, 0)}

(1..n).each do |i|
    s = i.digits
    head = s[0]
    tail = s[-1]
    c[head][tail] += 1
end

ans = 0

(1..9).each do |i|
    (1..9).each do |j|
        ans += c[i][j] * c[j][i]
    end
end

puts ans