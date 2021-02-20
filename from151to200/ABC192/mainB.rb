s = gets.chomp.chars
n = s.size
ans = true
n.times do |i|
    if i % 2 == 0 then
        ans = false unless s[i] =~ /^[a-z]$/
    else
        ans = false unless s[i] =~ /^[A-Z]$/
    end
end
puts ans ? "Yes" : "No"