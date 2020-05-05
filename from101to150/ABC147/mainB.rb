s = gets.chomp.split("")
n = s.size
sr = s.reverse
ans = 0
n.times do |i|
    ans += 1 if s[i] != sr[i]
end

puts ans / 2