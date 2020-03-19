s = gets.chomp.split("")
n = s.size
ans = ""
n.times do |i|
    ans << s[i] if i % 2 == 0
end
puts ans