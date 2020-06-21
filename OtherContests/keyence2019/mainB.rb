s = gets.chomp
keyence = "keyence"
KEYENCE_SIZE = 7
n = s.size
ans = false

KEYENCE_SIZE.times do |i|
    head = keyence[0...i]
    tale = keyence[i...n]
    ans = true if s =~ /^#{head}.*#{tale}$/
end

puts ans ? "YES" : "NO"