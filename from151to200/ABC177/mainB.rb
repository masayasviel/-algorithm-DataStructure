s = gets.chomp.split("")
t = gets.chomp.split("")
n = s.size
m = t.size
ans = 114514
(n-m+1).times do |i|
    c = 0
    m.times do |j|
        c += 1 if s[i+j] != t[j]
    end
    ans = ans > c ? c : ans
end
puts ans