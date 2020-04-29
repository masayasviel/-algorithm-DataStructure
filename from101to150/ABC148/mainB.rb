n = gets.chomp.to_i
s, t = gets.chomp.split(" ")
s = s.split("")
t = t.split("")
ans = []

n.times do |i|
    ans << s[i] << t[i]
end

puts ans.join("")